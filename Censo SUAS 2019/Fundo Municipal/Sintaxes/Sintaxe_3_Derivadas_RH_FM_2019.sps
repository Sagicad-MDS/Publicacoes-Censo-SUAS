* Encoding: UTF-8.

**Criação de Derivadas CRAS - RH FUNDO MUNICIPAL - CENSO 2019**



****criar variavel data Censo

STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2019". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2019"'. 
EXECUTE.


***transformar variavel data string em date

* Date and Time Wizard: DataCenso_2019.
COMPUTE DataCenso_2019=number(DataCenso, EDATE10).
VARIABLE LABELS DataCenso_2019 "DataCenso recodificada".
VARIABLE LEVEL  DataCenso_2019 (SCALE).
FORMATS DataCenso_2019 (EDATE10).
VARIABLE WIDTH  DataCenso_2019(10).
EXECUTE.

******transfromar data nascimento string em date

COMPUTE q12_2_rec=number(q12_2, EDATE10).
VARIABLE LABELS q12_2_rec "q12_2_data nascimento recodificada".
VARIABLE LEVEL  q12_2_rec (SCALE).
FORMATS q12_2_rec (EDATE10).
VARIABLE WIDTH  q12_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2019, q12_2, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  
FREQUENCIES VARIABLES=Idade 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.



RECODE Idade (16 thru 17=1) (18 thru 29=2) (30 thru 40=3) (41 thru 50=4) (51 thru 60=5) (61 thru 100=6) INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores do Fundo Municipal'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1 '16 a 17 anos'
2 '18 a 29 anos'
3 '30 a 40 anos'
4 '41 a 50 anos'
5 '51 a 60 anos' 
6 'Mais de 60 anos'
.


*******deletar casos em que não  foi possivel calcular idade ou a mesma estava fora do padrão estabelecido

FILTER OFF.
USE ALL.
SELECT IF (Faixas_etarias >= 1).
EXECUTE.

FREQUENCIES VARIABLES=Faixas_etarias
  /ORDER=ANALYSIS.






********************************************************************************
*****************************************************************************************



****variáveis binárias escolaridade***

RECODE q12_8 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d_12_8.

VARIABLE LABELS d_12_8  'd_12_8_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d_12_8
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE d_12_8 (0=1) INTO d_12_8bin1.

VARIABLE LABELS  d_12_8bin1  'd_12_8bin1_Nível fundamental - Trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d_12_8bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d_12_8  (1=1) INTO d_12_8bin2.
VARIABLE LABELS d_12_8bin2  'd_12_8bin2_Nível médio - Trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS d_12_8bin2
1 'Nível Médio'.
EXECUTE.

RECODE d_12_8 (2=1) INTO d_12_8bin3.
VARIABLE LABELS  d_12_8bin3  'd_12_8bin3_Nível superior - inclui Trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d_12_8bin3
1 'Nível Superior'.
EXECUTE.





****variáveis binárias profissão****

RECODE q12_9  (275=1) (273=2) (234=3) (232=4)(274=5) (238=6) (238=7)(else=8) INTO d_12_9 .
VARIABLE LABELS   d_12_9   'd_12_9_Profissão'.

VALUE LABELS d_12_9
1 'Pedagogo'
2 'Assistente Social'
3 'Antropólogo'
4 'Advogado'
5 'Psicólogo'
6 'Profissional de nível médio'
7 'Sem formação profissional'
8 'Outro profissional de nivel superior'.
EXECUTE.




RECODE q12_9 (275=1) INTO d_12_9bin1.
VARIABLE LABELS d_12_9bin1   'd_12_9bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d_12_9bin1
1 'Pedagogo'.
EXECUTE.

RECODE q12_9  (273=1) INTO d_12_9bin2.
VARIABLE LABELS  d_12_9bin2  'd_12_9bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d_12_9bin2
1 'Assistente Social'.
EXECUTE.

RECODE q12_9  (234=1) INTO d_12_9bin3.
VARIABLE LABELS  d_12_9bin3  'd_12_9bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d_12_9bin3
1 'Antropólogo'.
EXECUTE.

RECODE q12_9  (232=1) INTO d_12_9bin4.
VARIABLE LABELS  d_12_9bin4   'd_12_9bin4_Advogado'.
EXECUTE.

VALUE LABELS  d_12_9bin4
1 'Advogado'.
EXECUTE.

RECODE q12_9 (274=1) INTO d_12_9bin5.
VARIABLE LABELS  d_12_9bin5  'd_12_9bin5_Psicologo'.
EXECUTE.

VALUE LABELS  d_12_9bin5
1 'Psicólogo'.
EXECUTE.



**** variáveis binárias - tipo de vínculo****


RECODE q12_10  (138=1) (139=2)(292=3) (else=4) INTO d_12_10.
VARIABLE LABELS   d_12_10  'd_12_10_Tipo de vínculo'.

VALUE LABELS d_12_10
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.




RECODE  d_12_10  (1=1) INTO d_12_10bin1.
VARIABLE LABELS   d_12_10bin1  'd_12_10bin1_Servidor Estatutário'.

VALUE LABELS d_12_10bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d_12_10   (2=1) INTO d_12_10bin2.
VARIABLE LABELS  d_12_10bin2  ' d_12_10bin2_Empregado Público (CLT)'.

VALUE LABELS  d_12_10bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d_12_10 (3=1) INTO d_12_10bin3.
VARIABLE LABELS d_12_10bin3    'd_12_10bin3_Comissionado'.

VALUE LABELS  d_12_10bin3
1 'Comissionado'.
EXECUTE.

RECODE d_12_10 (4=1) INTO d_12_10bin4.
VARIABLE LABELS d_12_10bin4   'd_12_10bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d_12_10bin4
1 'Outros vínculos não permanentes'.
EXECUTE.





*******************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE*************************


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=
  /d_12_8bin1_sum=SUM(d_12_8bin1)
  /d_12_8bin2_sum=SUM(d_12_8bin2)
  /d_12_8bin3_sum=SUM(d_12_8bin3)
  /d_12_9bin1_sum=SUM(d_12_9bin1)
  /d_12_9bin2_sum=SUM(d_12_9bin2)
  /d_12_9bin3_sum=SUM(d_12_9bin3)
  /d_12_9bin4_sum=SUM(d_12_9bin4)
  /d_12_9bin5_sum=SUM(d_12_9bin5)
  /d_12_10bin1_sum=SUM(d_12_10bin1)
  /d_12_10bin2_sum=SUM(d_12_10bin2)
  /d_12_10bin3_sum=SUM(d_12_10bin3)
  /d_12_10bin4_sum=SUM(d_12_10bin4)
  /nu_trabalhador=N.


VARIABLE LABELS
d_12_8bin1_sum  'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d_12_8bin2_sum  'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d_12_8bin3_sum  'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d_12_9bin1_sum  'Número de Pedagogos'
d_12_9bin2_sum  'Número de Assistentes Sociais'
 d_12_9bin3_sum  'Número de Antropólogos'
 d_12_9bin4_sum  'Número de Advogados'
d_12_9bin5_sum 'Número de Psicólogos'
d_12_10bin1_sum  'Número de Servidores Estatutários'
d_12_10bin2_sum  'Número de Empregados Públicos(CLT)'
d_12_10bin3_sum  'Número de Comissionados'
d_12_10bin4_sum  'Número de profissionais com outros vínculos não permanentes'
nu_trabalhador  'Número de trabalhadores no Fundo'
.
EXECUTE.


*** RECODE MISSING TO ZERO ****

RECODE d_12_8bin1_sum d_12_8bin2_sum d_12_8bin3_sum  d_12_9bin1_sum  d_12_9bin2_sum  d_12_9bin3_sum  d_12_9bin4_sum  d_12_9bin5_sum  d_12_10bin1_sum  d_12_10bin2_sum  d_12_10bin3_sum  d_12_10bin4_sum  nu_trabalhador (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
d_12_8bin1_sum   'd_12_8bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d_12_8bin2_sum  'd_12_8bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d_12_8bin3_sum  'd_12_8bin3_sum _Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
d_12_9bin1_sum  'd_12_9bin1_sum_Número de Pedagogos'
 d_12_9bin2_sum  'd_12_9bin2_sum_Número de Assistentes Sociais'
d_12_9bin3_sum  'd_12_9bin3_sum_Número de Antropólogos'
 d_12_9bin4_sum   'd_12_9bin4_sum _Número de Advogados'
 d_12_9bin5_sum  'd_12_9bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 d_12_10bin1_sum   ' d_12_10bin1_sum _Número de Servidores Estatutários'
d_12_10bin2_sum ' d_12_10bin2_sum_Número de Empregados Públicos(CLT)'
d_12_10bin3_sum  'd_12_10bin3_sum_Número de Comissionados'
d_12_10bin4_sum   'd_12_10bin4_sum_Número de profissionais com outros vínculos não permanentes'.
EXECUTE.


