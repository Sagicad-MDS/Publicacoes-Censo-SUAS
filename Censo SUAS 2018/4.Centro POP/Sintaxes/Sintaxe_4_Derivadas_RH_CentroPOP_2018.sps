* Encoding: UTF-8.
**Syntax Derivadas RH - Centro POP - Censo 2018**

*Importar o arquivo RH e transformar a variável data de nascimento*
***Já ter importado como data abreviada, e inserir como "data/hora" formato dd.mm.aaaa**


**Cálculo da idade em anos de cada trabalhador**


COMPUTE  D34_2=DATEDIFF(13670899200, q34_2 ,"years").
format D34_2 (F2.0).
EXECUTE.

VARIABLE LABELS D34_2 'Idade em anos (data ref. 31-12-2018)'.
EXECUTE.

DO IF (D34_2 < 16).
RECODE D34_2 (ELSE=SYSMIS).
END IF.

DO IF (D34_2 > 80).
RECODE D34_2 (ELSE=SYSMIS).
END IF.




***Transformando em Faixas de idade***

RECODE D34_2 (0 thru 29=1) (30 thru 44=2) (40 thru 49=3)  (50 thru 100=4) INTO D34_2categoria.
VARIABLE LABELS  D34_2categoria  'D34_2.Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D34_2categoria
1 'Até 29 anos'
2 'De 30 a 44 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


**Faixas de idades com limite superior de 80 anos; Para aqueles maiores de 80 anos será aplicado "missing", o mesmo para os menores de 16 anos de idade**


RECODE D34_2 (16 thru 29=1) (30 thru 44=2) (40 thru 49=3)  (50 thru 80=4) INTO D34_2categoria.
VARIABLE LABELS  D34_2categoria  'D34_2.Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D34_2categoria
1 '16 até 29 anos'
2 'De 30 a 44 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


**Escolaridade q34_9**

RECODE q34_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D34_9.
VARIABLE LABELS D34_9 'D34_9.Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D34_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


**Tipo de vínculo q34_11

RECODE q34_11 (292=3) (144=2) (138=1) (else=4) INTO D34_11.
VARIABLE LABELS   D34_11 'D34_11.Tipo de vínculo'.

VALUE LABELS D34_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.



**variáveis binárias para escolaridade**


RECODE D34_9 (0=1) INTO D34_9bin1.
VARIABLE LABELS  D34_9bin1 'D34_9bin1.Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D34_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D34_9 (1=1) INTO D34_9bin2.
VARIABLE LABELS  D34_9bin2 'D34_9bin2.Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D34_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE D34_9 (2=1) INTO D34_9bin3.
VARIABLE LABELS  D34_9bin3 'D34_9bin3.Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D34_9bin3
1 'Nível Superior'.
EXECUTE.



**variáveis binárias profissão q34_10**

RECODE q34_10 (275=1) INTO D34_10bin1.
VARIABLE LABELS  D34_10bin1 'D34_10bin1.Pedagogo'.
EXECUTE.

VALUE LABELS D34_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q34_10 (273=1) INTO D34_10bin2.
VARIABLE LABELS  D34_10bin2 'D34_10bin2.Assistente Social'.
EXECUTE.

VALUE LABELS  D34_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q34_10 (234=1) INTO D34_10bin3.
VARIABLE LABELS  D34_10bin3 'D34_10bin3.Antropólogo'.
EXECUTE.

VALUE LABELS  D34_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q34_10 (232=1) INTO D34_10bin4.
VARIABLE LABELS  D34_10bin4 'D34_10bin4.Advogado'.
EXECUTE.

VALUE LABELS  D34_10bin4
1 'Advogado'.
EXECUTE.

RECODE q34_10 (274=1) INTO D34_10bin5.
VARIABLE LABELS  D34_10bin5 'D34_10bin5.Psicólogo'.
EXECUTE.

VALUE LABELS  D34_10bin5
1 'Psicólogo'.
EXECUTE.


** variáveis binárias - tipo de vínculo q34_11**


RECODE  D34_11 (1=1) INTO D34_11bin1.
VARIABLE LABELS   D34_11bin1 'D34_11bin1.Servidor Estatutário'.

VALUE LABELS  D34_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE D34_11  (2=1) INTO D34_11bin2.
VARIABLE LABELS  D34_11bin2 ' D34_11bin2.Empregado Público (CLT)'.

VALUE LABELS  D34_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE D34_11 (3=1) INTO D34_11bin3.
VARIABLE LABELS D34_11bin3 'D34_11bin3.Comissionado'.

VALUE LABELS  D34_11bin3
1 'Comissionado'.
EXECUTE.

RECODE D34_11 (4=1) INTO D34_11bin4.
VARIABLE LABELS D34_11bin4 'D34_11bin4.Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.


VALUE LABELS  D34_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


***AGGREGATE VARIÁVEIS BINÁRIAS****
***** O nome do arquivo em DATASETE DECLARE deve ser o mesmo do nome em /OUTFILE *****

DATASET ACTIVATE DataSet1.
DATASET DECLARE aggregCentroPOP2018.
AGGREGATE
  /OUTFILE='aggregCentroPOP2018'
  /BREAK= id_creas_pop
  /D34_9bin1.sum=SUM(D34_9bin1)
  /D34_9bin2.sum=SUM(D34_9bin2)
  /D34_9bin3.sum=SUM(D34_9bin3)
  /D34_10bin1.sum=SUM(D34_10bin1) 
  /D34_10bin2.sum=SUM(D34_10bin2) 
  /D34_10bin3.sum=SUM(D34_10bin3) 
  /D34_10bin4.sum=SUM(D34_10bin4) 
  /D34_10bin5.sum=SUM(D34_10bin5) 
  /D34_11bin1.sum=SUM(D34_11bin1) 
  /D34_11bin2.sum=SUM(D34_11bin2) 
  /D34_11bin3.sum=SUM(D34_11bin3) 
  /D34_11bin4.sum=SUM(D34_11bin4)
  /nu.trabalhadores=N.
.
EXECUTE.


VARIABLE LABELS
 /D34_9bin1.sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 /D34_9bin2.sum 'Número  de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 /D34_9bin3.sum 'Número  de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 /D34_10bin1.sum 'Número de Pedagogos'
 /D34_10bin2.sum 'Número  de Assistentes Sociais'
 /D34_10bin3.sum 'Número  de Antropólogos'
 /D34_10bin4.sum 'Número  de Advogados'
 /D34_10bin5.sum 'Número  de Psicólogos'
 /D34_11bin1.sum 'Número  de Servidores Estatutários'
 /D34_11bin2.sum 'Número de Empregados Públicos(CLT)'
 /D34_11bin3.sum 'Número  de Comissionados'
 /D34_11bin4.sum 'Número de profissionais com outros vínculos não permanentes'
 /nu.trabalhadores 'Número  de trabalhdores no Centro POP'
.
EXECUTE.


**** RECODE MISSING TO ZERO ****


RECODE D34_9bin1.sum D34_9bin2.sum D34_9bin3.sum D34_10bin1.sum D34_10bin2.sum D34_10bin3.sum 
    D34_10bin4.sum D34_10bin5.sum D34_11bin1.sum D34_11bin2.sum D34_11bin3.sum D34_11bin4.sum 
    nu.trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D34_9bin1.sum 'D34_9bin1.Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D34_9bin2.sum 'D34_9bin2.Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D34_9bin3.sum 'D34_9bin3.Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D34_10bin1.sum 'D34_10bin1.sum.Número de Pedagogos'
 D34_10bin2.sum 'D34_10bin2.sum.Número de Assistentes Sociais'
 D34_10bin3.sum 'D34_10bin3.sum.Número de Antropólogos'
 D34_10bin4.sum 'D34_10bin4.sum.Número de Advogados'
 D34_10bin5.sum 'D34_10bin5.sum.Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 D34_11bin1.sum 'D34_11bin1.Número de Servidores Estatutários'
 D34_11bin2.sum 'D34_11bin2.Número de Empregados Públicos(CLT)'
 D34_11bin3.sum 'D34_11bin3.Número de Comissionados'
 D34_11bin4.sum 'D34_11bin4.Número de profissionais com outros vínculos não permanentes(inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários;Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu.trabalhadores 'Número de trabalhadores no Centro POP'.
EXECUTE.




