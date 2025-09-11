* Encoding: UTF-8.
**Derivadas - Questões de RH**

***Idade calculada na planilha excel***********


STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2019". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2019"'. 
EXECUTE.


***transformar variavel data string em date

* Date and Time Wizard: DataCenso_2018.
COMPUTE DataCenso_2019=number(DataCenso, EDATE10).
VARIABLE LABELS DataCenso_2019 "DataCenso recodificada".
VARIABLE LEVEL  DataCenso_2019 (SCALE).
FORMATS DataCenso_2019 (EDATE10).
VARIABLE WIDTH  DataCenso_2019(10).
EXECUTE.

******transfromar data nascimento string em date

COMPUTE q31_2_rec=number(q31_2, EDATE10).
VARIABLE LABELS q31_2_rec "q31_2_data nascimento recodificada".
VARIABLE LEVEL  q31_2_rec (SCALE).
FORMATS q31_2_rec (EDATE10).
VARIABLE WIDTH  q31_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2019, q31_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  
FREQUENCIES VARIABLES=Idade 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.


RECODE Idade (16 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 80=5) (81 thru 100=6)  INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores dos Centro de Convivência'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1'16 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'61 a 80 anos'
6'Mais de 80 anos'.




*******deletar casos em que não  foi possivel calcular idade ou a mesma estava fora do padrão estabelecido

FILTER OFF.
USE ALL.
SELECT IF (Faixas_etarias >= 1).
EXECUTE.

FREQUENCIES VARIABLES=Faixas_etarias
  /ORDER=ANALYSIS.


RECODE q31_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d_31_9.
VARIABLE LABELS  d_31_9  'd_31_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d_31_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


RECODE q31_11  (138=1) (139=2) (292=3) (ELSE=4) INTO d_31_11.
VARIABLE LABELS  d_31_11 'd_31_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS d_31_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d_31_9 (0=1) INTO d_31_9bin1.
VARIABLE LABELS  d_31_9bin1 'd_31_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d_31_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d_31_9 (1=1) INTO d_31_9bin2.
VARIABLE LABELS  d_31_9bin2  'd_31_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d_31_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d_31_9 (2=1) INTO d_31_9bin3.
VARIABLE LABELS  d_31_9bin3 'd_31_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d_31_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q31_10 (275=1) INTO d_31_10bin1.
VARIABLE LABELS  d_31_10bin1 'd_31_10bin1_Pedagogo'.
EXECUTE.


VALUE LABELS d_31_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q31_10 (273=1) INTO d_31_10bin2.
VARIABLE LABELS  d_31_10bin2 'd_31_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d_31_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q31_10  (234=1) INTO d_31_10bin3.
VARIABLE LABELS  d_31_10bin3 'd_31_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS d_31_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q31_10 (232=1) INTO d_31_10bin4.
VARIABLE LABELS  d_31_10bin4 'd_31_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d_31_10bin4
1 'Advogado'.
EXECUTE.

RECODE q31_10 (274=1) INTO d_31_10bin5.
VARIABLE LABELS  d_31_10bin5 'd_31_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d_31_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d_31_11 (1=1) INTO d_31_11bin1.
VARIABLE LABELS   d_31_11bin1 'd_31_11bin1_Servidor Estatutário'.

VALUE LABELS  d_31_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d_31_11  (2=1) INTO d_31_11bin2.
VARIABLE LABELS  d_31_11bin2 'd_31_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d_31_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d_31_11 (3=1) INTO d_31_11bin3.
VARIABLE LABELS d_31_11bin3 'd_31_11bin3_Comissionado'.

VALUE LABELS  d_31_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d_31_11 (4=1) INTO d_31_11bin4.
VARIABLE LABELS d_31_11bin4 'd_31_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d_31_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d_31_9bin1_sum=SUM(d_31_9bin1)
  /d_31_9bin2_sum=SUM(d_31_9bin2)
  /d_31_9bin3_sum=SUM(d_31_9bin3)
  /d_31_10bin1_sum=SUM(d_31_10bin1)
  /d_31_10bin2_sum=SUM(d_31_10bin2)
  /d_31_10bin3_sum=SUM(d_31_10bin3)
  /d_31_10bin4_sum=SUM(d_31_10bin4)
  /d_31_10bin5_sum=SUM(d_31_10bin5)
  /d_31_11bin1_sum=SUM(d_31_11bin1)
  /d_31_11bin2_sum=SUM(d_31_11bin2)
  /d_31_11bin3_sum=SUM(d_31_11bin3)
  /d_31_11bin4_sum=SUM(d_31_11bin4)
  /nu_trabalhadores=N.
EXECUTE.


VARIABLE LABELS
d_31_9bin1_sum 'd_31.9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d_31_9bin2_sum  'd_31.9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d_31_9bin3_sum  'd_31.9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d_31_10bin1_sum  'd_31.10bin1_sum_Número de Pedagogos'
d_31_10bin2_sum 'd_31.10bin2_sum_Número de Assistentes Sociais'
d_31_10bin3_sum  'd_31.10bin3_sum_Número de Antropólogos'
d_31_10bin4_sum  'd_31.10bin4_sum_Número de Advogados'
d_31_10bin5_sum  'd_31.10bin5_sum_Número de Psicólogos'
d_31_11bin1_sum  'd_31.11bin1_sum_Número de Servidores Estatutários'
d_31_11bin2_sum  'd_31.11bin2_sum_Número de Empregados Públicos(CLT)'
d_31_11bin3_sum  'd_31.11bin3_sum_Número de Comissionados'
d_31_11bin4_sum  'd_31.11bin4_sum_Número de profissionais com outros vínculos não permanentes'
nu_trabalhadores  'Número de trabalhadores na unidade'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE 
d_31_9bin1_sum d_31_9bin2_sum d_31_9bin3_sum d_31_10bin1_sum d_31_10bin2_sum d_31_10bin3_sum 
d_31_10bin4_sum d_31_10bin5_sum d_31_11bin1_sum d_31_11bin2_sum d_31_11bin3_sum d_31_11bin4_sum nu_trabalhadores (SYSMIS=0). 
EXECUTE.

VARIABLE LABELS
 d_31_9bin1_sum 'd_31.9bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 d_31_9bin2_sum'd_31.9bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 d_31_9bin3_sum'd_31.9bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d_31_10bin1_sum'd_31.10bin1_sum_Número de Pedagogos'
 d_31_10bin2_sum'd_31.10bin2_sum_Número de Assistentes Sociais'
 d_31_10bin3_sum'd_31.10bin3_sum_Número de Antropólogos'
 d_31_10bin4_sum'd_31.10bin4_sum_Número de Advogados'
 d_31_10bin5_sum'd_31.10bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 d_31_11bin1_sum'd_31.11bin1_Número de Servidores Estatutários'
 d_31_11bin2_sum'd_31.11bin2_Número de Empregados Públicos(CLT)'
 d_31_11bin3_sum'd_31.11bin3_Número de Comissionados'
 d_31_11bin4_sum'd_31.11bin4_Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços/Voluntários/Ser. Temporário/Sem vínculo/Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores na unidade executora do Centro de Convivencia'.
EXECUTE.





