**************************************************************************************************************************************
**** Syntax Derivadas RH - Centro POP - Censo 2016
**************************************************************************************************************************************

****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável q39_2 (referente à data de nascimento)*
de formato string para o formato "date" *****

***Importar o arquivo RH e transformar a variável data de nascimento*



*COMPUTE D39_2=number(q39_2_rec, DATE10).
*VARIABLE LABELS D39_2 'q39_2_Data de nascimento'.
*VARIABLE LEVEL  D39_2 (SCALE).
*FORMATS D39_2 (DATE11).
*VARIABLE WIDTH  D39_2(11).
*EXECUTE.


**Cálculo da idade em anos de cada trabalhador*****


COMPUTE  D39_2=DATEDIFF(13670899200, q39_2 ,"years").
format D39_2 (F2.0).
EXECUTE.

VARIABLE LABELS D39_2 'Idade em anos (data ref. 31-12-2016)'.
EXECUTE.

***********************************************************************************************************
*******Faixas de idade******************

RECODE D39_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D39_2categoria.
VARIABLE LABELS  D39_2categoria  'D39_2_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D39_2categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

*******************************Faixas de idades com limite superior de 70 anos; Para aqueles maiores de 70 anos será aplicado "missing" ******
***Eduardo* Nao entendi esse missing.  por que 70 anos, quando já foi feito com 100 anos no comando anterior ****

RECODE D39_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 70=4) INTO D39_2categoria.
VARIABLE LABELS  D39_2categoria  'D39_2_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D39_2categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

************Escolaridade q39_7

RECODE q39_7 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D39_7.
VARIABLE LABELS D39_7 'D39_7_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D39_7
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

*****************Tipo de vínculo q39_9



RECODE q39_9 (292=3) (139=2) (138=1) (else=4) INTO D39_9.
VARIABLE LABELS   D39_9 'D39_9_Tipo de vínculo'.

VALUE LABELS D39_9
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***


RECODE D39_7 (0=1) INTO D39_7bin1.
VARIABLE LABELS  D39_7bin1 'D39_7bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D39_7bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D39_7 (1=1) INTO D39_7bin2.
VARIABLE LABELS  D39_7bin2 'D39_7bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D39_7bin2
1 'Nível Médio'.
EXECUTE.

RECODE D39_7 (2=1) INTO D39_7bin3.
VARIABLE LABELS  D39_7bin3 'D39_7bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D39_7bin3
1 'Nível Superior'.
EXECUTE.



****variáveis binárias profissão q39_8****


RECODE q39_8 (275=1) INTO D39_8bin1.
VARIABLE LABELS  D39_8bin1 'D39_8bin1_Pedagogo'.
EXECUTE.

VALUE LABELS D39_8bin1
1 'Pedagogo'.
EXECUTE.

RECODE q39_8 (273=1) INTO D39_8bin2.
VARIABLE LABELS  D39_8bin2 'D39_8bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  D39_8bin2
1 'Assistente Social'.
EXECUTE.

RECODE q39_8 (234=1) INTO D39_8bin3.
VARIABLE LABELS  D39_8bin3 'D39_8bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  D39_8bin3
1 'Antropólogo'.
EXECUTE.

RECODE q39_8 (232=1) INTO D39_8bin4.
VARIABLE LABELS  D39_8bin4 'D39_8bin4_Advogado'.
EXECUTE.

VALUE LABELS  D39_8bin4
1 'Advogado'.
EXECUTE.

RECODE q39_8 (274=1) INTO D39_8bin5.
VARIABLE LABELS  D39_8bin5 'D39_8bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  D39_8bin5
1 'Psicólogo'.
EXECUTE.


**** variáveis binárias - tipo de vínculo q39_9****


RECODE  D39_9 (1=1) INTO D39_9bin1.
VARIABLE LABELS   D39_9bin1 'D39_9bin1_Servidor Estatutário'.

VALUE LABELS  D39_9bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE D39_9  (2=1) INTO D39_9bin2.
VARIABLE LABELS  D39_9bin2 ' D39_9bin2_Empregado Público (CLT)'.

VALUE LABELS  D39_9bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE D39_9 (3=1) INTO D39_9bin3.
VARIABLE LABELS D39_9bin3 'D39_9bin3_Comissionado'.

VALUE LABELS  D39_9bin3
1 'Comissionado'.
EXECUTE.

RECODE D39_9 (4=1) INTO D39_9bin4.
VARIABLE LABELS D39_9bin4 'D39_9bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.


VALUE LABELS  D39_9bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************
***** O nome do arquivo em DATASETE DECLARE deve ser o mesmo do nome em /OUTFILE *****

DATASET ACTIVATE DataSet1.
DATASET DECLARE aggregCentroPOP.
AGGREGATE
  /OUTFILE='aggregCentroPOP'
  /BREAK=id_creas_pop
  /D39_7bin1_sum=SUM(D39_7bin1)
  /D39_7bin2_sum=SUM(D39_7bin2)
  /D39_7bin3_sum=SUM(D39_7bin3)
  /D39_8bin1_sum=SUM(D39_8bin1) 
  /D39_8bin2_sum=SUM(D39_8bin2) 
  /D39_8bin3_sum=SUM(D39_8bin3) 
  /D39_8bin4_sum=SUM(D39_8bin4) 
  /D39_8bin5_sum=SUM(D39_8bin5) 
  /D39_9bin1_sum=SUM(D39_9bin1) 
  /D39_9bin2_sum=SUM(D39_9bin2) 
  /D39_9bin3_sum=SUM(D39_9bin3) 
  /D39_9bin4_sum=SUM(D39_9bin4)
  /nu_trabalhadores=N.
.
EXECUTE.


VARIABLE LABELS
 /D39_7bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 /D39_7bin2_sum'Número  de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 /D39_7bin3_sum'Número  de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 /D39_8bin1_sum'Número de Pedagogos'
 /D39_8bin2_sum'Número  de Assistentes Sociais'
 /D39_8bin3_sum'Número  de Antropólogos'
 /D39_8bin4_sum'Número  de Advogados'
 /D39_8bin5_sum'Número  de Psicólogos'
 /D39_9bin1_sum'Número  de Servidores Estatutários'
 /D39_9bin2_sum'Número de Empregados Públicos(CLT)'
 /D39_9bin3_sum'Número  de Comissionados'
 /D39_9bin4_sum'Número de profissionais com outros vínculos não permanentes'
 /nu_trabalhadores'Número  de trabalhdores no Centro POP'
.
EXECUTE.


**** RECODE MISSING TO ZERO ****


RECODE D39_7bin1_sum D39_7bin2_sum D39_7bin3_sum D39_8bin1_sum D39_8bin2_sum D39_8bin3_sum 
    D39_8bin4_sum D39_8bin5_sum D39_9bin1_sum D39_9bin2_sum D39_9bin3_sum D39_9bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D39_7bin1_sum 'D39_7bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D39_7bin2_sum'D39_7bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D39_7bin3_sum'D39_7bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D39_8bin1_sum'D39_8bin1_sum_Número de Pedagogos'
 D39_8bin2_sum'D39_8bin2_sum_Número de Assistentes Sociais'
 D39_8bin3_sum'D39_8bin3_sum_Número de Antropólogos'
 D39_8bin4_sum'D39_8bin4_sum_Número de Advogados'
 D39_8bin5_sum'D39_8bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 D39_9bin1_sum'D39_9bin1_Número de Servidores Estatutários'
 D39_9bin2_sum'D39_9bin2_Número de Empregados Públicos(CLT)'
 D39_9bin3_sum'D39_9bin3_Número de Comissionados'
 D39_9bin4_sum'D39_9bin4_Número de profissionais com outros vínculos não permanentes(inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários;Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no Centro POP'.
EXECUTE.




