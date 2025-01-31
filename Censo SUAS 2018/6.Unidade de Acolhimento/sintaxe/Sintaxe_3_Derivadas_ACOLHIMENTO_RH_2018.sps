﻿* Encoding: UTF-8.
**Derivadas - Questões de RH**

***Idade calculada na planilha excel***********


STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2018". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2018"'. 
EXECUTE.


***transformar variavel data string em date

* Date and Time Wizard: DataCenso_2018.
COMPUTE DataCenso_2018=number(DataCenso, EDATE10).
VARIABLE LABELS DataCenso_2018 "DataCenso recodificada".
VARIABLE LEVEL  DataCenso_2018 (SCALE).
FORMATS DataCenso_2018 (EDATE10).
VARIABLE WIDTH  DataCenso_2018(10).
EXECUTE.

******transfromar data nascimento string em date

COMPUTE q_45_2_rec=number(q_45_2, EDATE10).
VARIABLE LABELS q_45_2_rec "q_45_2_data nascimento recodificada".
VARIABLE LEVEL  q_45_2_rec (SCALE).
FORMATS q_45_2_rec (EDATE10).
VARIABLE WIDTH  q_45_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2018, q_45_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  
FREQUENCIES VARIABLES=Idade 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.


RECODE Idade (16 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 100=5) INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores dos Centro de Convivência'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1'16 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'Mais de 60 anos'.


*******deletar casos em que não  foi possivel calcular idade ou a mesma estava fora do padrão estabelecido

FILTER OFF.
USE ALL.
SELECT IF (Faixas_etarias >= 1).
EXECUTE.

FREQUENCIES VARIABLES=Faixas_etarias
  /ORDER=ANALYSIS.


RECODE q_45_9  (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d_45_9.
VARIABLE LABELS  d_45_9  'd_45_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d_45_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


RECODE q_45_11  (138=1) (139=2) (292=3) (ELSE=4) INTO d_45_11.
VARIABLE LABELS  d_45_11 'd_45_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS d_45_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d_45_9 (0=1) INTO d_45_9bin1.
VARIABLE LABELS  d_45_9bin1 'd_45_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d_45_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d_45_9 (1=1) INTO d_45_9bin2.
VARIABLE LABELS  d_45_9bin2  'd_45_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d_45_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d_45_9 (2=1) INTO d_45_9bin3.
VARIABLE LABELS  d_45_9bin3 'd_45_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d_45_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q_45_10 (275=1) INTO d_45_10bin1.
VARIABLE LABELS  d_45_10bin1 'd_45_10bin1_Pedagogo'.
EXECUTE.


VALUE LABELS d_45_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q_45_10 (273=1) INTO d_45_10bin2.
VARIABLE LABELS  d_45_10bin2 'd_45_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d_45_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q_45_10  (234=1) INTO d_45_10bin3.
VARIABLE LABELS  d_45_10bin3 'd_45_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS d_45_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q_45_10 (232=1) INTO d_45_10bin4.
VARIABLE LABELS  d_45_10bin4 'd_45_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d_45_10bin4
1 'Advogado'.
EXECUTE.

RECODE q_45_10 (274=1) INTO d_45_10bin5.
VARIABLE LABELS  d_45_10bin5 'd_45_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d_45_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d_45_11 (1=1) INTO d_45_11bin1.
VARIABLE LABELS   d_45_11bin1 'd_45_11bin1_Servidor Estatutário'.

VALUE LABELS  d_45_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d_45_11  (2=1) INTO d_45_11bin2.
VARIABLE LABELS  d_45_11bin2 'd_45_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d_45_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d_45_11 (3=1) INTO d_45_11bin3.
VARIABLE LABELS d_45_11bin3 'd_45_11bin3_Comissionado'.

VALUE LABELS  d_45_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d_45_11 (4=1) INTO d_45_11bin4.
VARIABLE LABELS d_45_11bin4 'd_45_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d_45_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d_45_9bin1_sum=SUM(d_45_9bin1)
  /d_45_9bin2_sum=SUM(d_45_9bin2)
  /d_45_9bin3_sum=SUM(d_45_9bin3)
  /d_45_10bin1_sum=SUM(d_45_10bin1)
  /d_45_10bin2_sum=SUM(d_45_10bin2)
  /d_45_10bin3_sum=SUM(d_45_10bin3)
  /d_45_10bin4_sum=SUM(d_45_10bin4)
  /d_45_10bin5_sum=SUM(d_45_10bin5)
  /d_45_11bin1_sum=SUM(d_45_11bin1)
  /d_45_11bin2_sum=SUM(d_45_11bin2)
  /d_45_11bin3_sum=SUM(d_45_11bin3)
  /d_45_11bin4_sum=SUM(d_45_11bin4)
  /nu_trabalhadores=N.
EXECUTE.


VARIABLE LABELS
/d_45_9bin1_sum 'd_45.9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
/d_45_9bin2_sum  'd_45.9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
/d_45_9bin3_sum  'd_45.9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
/d_45_10bin1_sum  'd_45.10bin1_sum_Número de Pedagogos'
/d_45_10bin2_sum 'd_45.10bin2_sum_Número de Assistentes Sociais'
/d_45_10bin3_sum  'd_45.10bin3_sum_Número de Antropólogos'
/d_45_10bin4_sum  'd_45.10bin4_sum_Número de Advogados'
/d_45_10bin5_sum  'd_45.10bin5_sum_Número de Psicólogos'
/d_45_11bin1_sum  'd_45.11bin1_sum_Número de Servidores Estatutários'
/d_45_11bin2_sum  'd_45.11bin2_sum_Número de Empregados Públicos(CLT)'
/d_45_11bin3_sum  'd_45.11bin3_sum_Número de Comissionados'
/d_45_11bin4_sum  'd_45.11bin4_sum_Número de profissionais com outros vínculos não permanentes'
/nu_trabalhadores  'Número de trabalhadores na unidade'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE 
d_45_9bin1_sum d_45_9bin2_sum d_45_9bin3_sum d_45_10bin1_sum d_45_10bin2_sum d_45_10bin3_sum 
d_45_10bin4_sum d_45_10bin5_sum d_45_11bin1_sum d_45_11bin2_sum d_45_11bin3_sum d_45_11bin4_sum nu_trabalhadores (SYSMIS=0). 
EXECUTE.

VARIABLE LABELS
 d_45_9bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 d_45_9bin2_sum 'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 d_45_9bin3_sum 'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d_45_10bin1_sum'd_31.10bin1_sum_Número de Pedagogos'
 d_45_10bin2_sum'd_31.10bin2_sum_Número de Assistentes Sociais'
 d_45_10bin3_sum'd_31.10bin3_sum_Número de Antropólogos'
 d_45_10bin4_sum'd_31.10bin4_sum_Número de Advogados'
 d_45_10bin5_sum'd_31.10bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 d_45_11bin1_sum'd_31.11bin1_Número de Servidores Estatutários'
 d_45_11bin2_sum'd_31.11bin2_Número de Empregados Públicos(CLT)'
 d_45_11bin3_sum'd_31.11bin3_Número de Comissionados'
 d_45_11bin4_sum'd_31.11bin4_Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços/Voluntários/Ser. Temporário/Sem vínculo/Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores na unidade executora do UA'.
EXECUTE.





