**************************************************************************************************************************************
**** Syntax Derivadas RH - Centro POP - Censo 2015
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

VARIABLE LABELS D39_2 'Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

***********************************************************************************************************
**Faixas de idade******************

RECODE D39_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D39_2categoria.
VARIABLE LABELS  D39_2categoria  'D39_2_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D39_2categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

*******************************Faixas de idades com limite superior de 70 anos; Para aqueles maiores de 70 anos será aplicado "missing"

RECODE D39_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 70=4) INTO D39_2categoria.
VARIABLE LABELS  D39_2categoria  'D39_2_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D39_2categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

************Escolaridade

RECODE q39_6 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D39_6.
VARIABLE LABELS D39_6 'D39_6_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D39_6
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

*****************Tipo de vínculo



RECODE q39_8 (292=3) (139=2) (138=1) (else=4) INTO D39_8.
VARIABLE LABELS   D39_8 'D39_8_Tipo de vínculo'.

VALUE LABELS D39_8
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***


RECODE D39_6 (0=1) INTO D39_6bin1.
VARIABLE LABELS  D39_6bin1 'D39_6bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D39_6bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D39_6 (1=1) INTO D39_6bin2.
VARIABLE LABELS  D39_6bin2 'D39_6bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D39_6bin2
1 'Nível Médio'.
EXECUTE.

RECODE D39_6 (2=1) INTO D39_6bin3.
VARIABLE LABELS  D39_6bin3 'D39_6bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D39_6bin3
1 'Nível Superior'.
EXECUTE.



****variáveis binárias profissão****


RECODE q39_7 (275=1) INTO D39_7bin1.
VARIABLE LABELS  D39_7bin1 'D39_7bin1_Pedagogo'.
EXECUTE.

VALUE LABELS D39_7bin1
1 'Pedagogo'.
EXECUTE.

RECODE q39_7 (273=1) INTO D39_7bin2.
VARIABLE LABELS  D39_7bin2 'D39_7bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  D39_7bin2
1 'Assistente Social'.
EXECUTE.

RECODE q39_7 (234=1) INTO D39_7bin3.
VARIABLE LABELS  D39_7bin3 'D39_7bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  D39_7bin3
1 'Antropólogo'.
EXECUTE.

RECODE q39_7 (232=1) INTO D39_7bin4.
VARIABLE LABELS  D39_7bin4 'D39_7bin4_Advogado'.
EXECUTE.

VALUE LABELS  D39_7bin4
1 'Advogado'.
EXECUTE.

RECODE q39_7 (274=1) INTO D39_7bin5.
VARIABLE LABELS  D39_7bin5 'D39_7bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  D39_7bin5
1 'Psicólogo'.
EXECUTE.


**** variáveis binárias - tipo de vínculo****


RECODE  D39_8 (1=1) INTO D39_8bin1.
VARIABLE LABELS   D39_8bin1 'D39_8bin1_Servidor Estatutário'.

VALUE LABELS  D39_8bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE D39_8  (2=1) INTO D39_8bin2.
VARIABLE LABELS  D39_8bin2 ' D39_8bin2_Empregado Público (CLT)'.

VALUE LABELS  D39_8bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE D39_8 (3=1) INTO D39_8bin3.
VARIABLE LABELS D39_8bin3 'D39_8bin3_Comissionado'.

VALUE LABELS  D39_8bin3
1 'Comissionado'.
EXECUTE.

RECODE D39_8 (4=1) INTO D39_8bin4.
VARIABLE LABELS D39_8bin4 'D39_8bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  D39_8bin4
1 'Outros vínculos não permanentes'.
EXECUTE.

********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggregCentroPOP.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D39_6bin1_sum=SUM(D39_6bin1)
  /D39_6bin2_sum=SUM(D39_6bin2)
  /D39_6bin3_sum=SUM(D39_6bin3)
  /D39_7bin1_sum=SUM(D39_7bin1) 
  /D39_7bin2_sum=SUM(D39_7bin2) 
  /D39_7bin3_sum=SUM(D39_7bin3) 
  /D39_7bin4_sum=SUM(D39_7bin4) 
  /D39_7bin5_sum=SUM(D39_7bin5) 
  /D39_8bin1_sum=SUM(D39_8bin1) 
  /D39_8bin2_sum=SUM(D39_8bin2) 
  /D39_8bin3_sum=SUM(D39_8bin3) 
  /D39_8bin4_sum=SUM(D39_8bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
 D39_6bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 /D39_6bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 /D39_6bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 /D39_7bin1_sum'Número de Pedagogos'
 /D39_7bin2_sum'Número de Assistentes Sociais'
 /D39_7bin3_sum'Número de Antropólogos'
 /D39_7bin4_sum'Número de Advogados'
 /D39_7bin5_sum'Número de Psicólogos'
 /D39_8bin1_sum'Número de Servidores Estatutários'
 /D39_8bin2_sum'Número de Empregados Públicos(CLT)'
 /D39_8bin3_sum'Número de Comissionados'
 /D39_8bin4_sum'Número de profissionais com outros vínculos não permanentes'
 /nu_trabalhadores'Número de trabalhdores no Centro POP'
.
EXECUTE.


**** RECODE MISSING TO ZERO ****


RECODE D39_6bin1_sum D39_6bin2_sum D39_6bin3_sum D39_7bin1_sum D39_7bin2_sum D39_7bin3_sum 
    D39_7bin4_sum D39_7bin5_sum D39_8bin1_sum D39_8bin2_sum D39_8bin3_sum D39_8bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D39_6bin1_sum 'D39_6bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D39_6bin2_sum'D39_6bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D39_6bin3_sum'D39_6bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D39_7bin1_sum'D39_7bin1_sum_Número de Pedagogos'
 D39_7bin2_sum'D39_7bin2_sum_Número de Assistentes Sociais'
 D39_7bin3_sum'D39_7bin3_sum_Número de Antropólogos'
 D39_7bin4_sum'D39_7bin4_sum_Número de Advogados'
 D39_7bin5_sum'D39_7bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 D39_8bin1_sum'D39_8bin1_Número de Servidores Estatutários'
 D39_8bin2_sum'D39_8bin2_Número de Empregados Públicos(CLT)'
 D39_8bin3_sum'D39_8bin3_Número de Comissionados'
 D39_8bin4_sum 'D39_8bin4_Número de profissionais com outros vínculos não permanentes(inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários;Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.
VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no Centro POP'.
EXECUTE.


