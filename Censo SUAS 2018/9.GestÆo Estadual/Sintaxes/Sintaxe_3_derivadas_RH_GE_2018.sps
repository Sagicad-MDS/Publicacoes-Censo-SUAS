* Encoding: UTF-8.

**Criação de Derivadas Conselheiros - RH Conselhos - CENSO 2018**

RECODE
IBGE (11 thru 17=1) (21 thru 29=2) (31 thru 35=3) (41 thru 43=4) (50 thru 52=5)
    (ELSE=SYSMIS) INTO Regiao.
VARIABLE LABELS  Regiao  'Regiao'.

VALUE LABELS
/Regiao
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'
.


****criar variavel data Censo

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

COMPUTE q_37_2_rec=number(q_37_2, EDATE10).
VARIABLE LABELS q_37_2_rec "q_37_2_data nascimento recodificada".
VARIABLE LEVEL  q_37_2_rec (SCALE).
FORMATS q_37_2_rec (EDATE10).
VARIABLE WIDTH  q_37_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2018, q_37_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  
FREQUENCIES VARIABLES=Idade 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.



RECODE Idade (16 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru Highest=5) INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos trabalhadores da gestão estadual'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1'16 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'Mais de 60 anos'
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

RECODE q_37_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d_37_9.

VARIABLE LABELS d_37_9 'd_37_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d_37_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE d_37_9 (0=1) INTO d_37_9bin1.

VARIABLE LABELS  d_37_9bin1  'd_37_9bin1_Nível fundamental - Trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d_37_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d_37_9  (1=1) INTO d_37_9bin2.
VARIABLE LABELS d_37_9bin2  'd_37_9bin2_Nível médio - Trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS d_37_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d_37_9(2=1) INTO d_37_9bin3.
VARIABLE LABELS  d_37_9bin3  'd_37_9bin3_Nível superior - inclui Trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d_37_9bin3
1 'Nível Superior'.
EXECUTE.





****variáveis binárias profissão****

RECODE q_37_10  (275=1) (273=2) (234=3) (232=4)(274=5) (238=6) (238=7)(else=8) INTO d_37_10.
VARIABLE LABELS   d_37_10  'd_37_10_Profissão'.

VALUE LABELS d_37_10
1 'Pedagogo'
2 'Assistente Social'
3 'Antropólogo'
4 'Advogado'
5 'Psicólogo'
6 'Profissional de nível médio'
7 'Sem formação profissional'
8 'Outro profissional de nivel superior'.
EXECUTE.




RECODE q_37_10 (275=1) INTO d_37_10bin1.
VARIABLE LABELS d_37_10bin1  'd_37_10bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d_37_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q_37_10  (273=1) INTO d_37_10bin2.
VARIABLE LABELS  d_37_10bin2  'd_37_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d_37_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q_37_10  (234=1) INTO d_37_10bin3.
VARIABLE LABELS  d_37_10bin3  'd_37_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d_37_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q_37_10  (232=1) INTO d_37_10bin4.
VARIABLE LABELS  d_37_10bin4   'd_37_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d_37_10bin4
1 'Advogado'.
EXECUTE.

RECODE q_37_10 (274=1) INTO d_37_10bin5.
VARIABLE LABELS  d_37_10bin5  'd_37_10bin5_Psicologo'.
EXECUTE.

VALUE LABELS  d_37_10bin5
1 'Psicólogo'.
EXECUTE.



**** variáveis binárias - tipo de vínculo****


RECODE q_37_11  (138=1) (139=2)(292=3) (else=4) INTO d_37_11.
VARIABLE LABELS   d_37_11 'd_37_11_Tipo de vínculo'.

VALUE LABELS d_37_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.




RECODE  d_37_11  (1=1) INTO d_37_11bin1.
VARIABLE LABELS   d_37_11bin1  'd_37_11bin1_Servidor Estatutário'.

VALUE LABELS d_37_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d_37_11   (2=1) INTO d_37_11bin2.
VARIABLE LABELS  d_37_11bin2  ' d_37_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d_37_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d_37_11 (3=1) INTO d_37_11bin3.
VARIABLE LABELS d_37_11bin3    'd_37_11bin3_Comissionado'.

VALUE LABELS  d_37_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d_37_11 (4=1) INTO d_37_11bin4.
VARIABLE LABELS d_37_11bin4   'd_37_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d_37_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


DATASET DECLARE agrr.
AGGREGATE
  /OUTFILE='agrr'
  /BREAK=IBGE
  /d_37_9bin1_sum=SUM(d_37_9bin1)
  /d_37_9bin2_sum=SUM(d_37_9bin2)
  /d_37_9bin3_sum=SUM(d_37_9bin3)
  /d_37_10bin1_sum=SUM(d_37_10bin1)
  /d_37_10bin2_sum=SUM(d_37_10bin2)
  /d_37_10bin3_sum=SUM(d_37_10bin3)
  /d_37_10bin4_sum=SUM(d_37_10bin4)
  /d_37_10bin5_sum=SUM(d_37_10bin5)
  /d_37_11bin1_sum=SUM(d_37_11bin1)
  /d_37_11bin2_sum=SUM(d_37_11bin2)
  /d_37_11bin3_sum=SUM(d_37_11bin3)
  /d_37_11bin4_sum=SUM(d_37_11bin4)
  /nu_trabalhador=N.

VARIABLE LABELS
d_37_9bin1_sum  'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 d_37_9bin2_sum 'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d_37_9bin3_sum 'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 d_37_10bin1_sum 'Número de Pedagogos'
 d_37_10bin2_sum'Número de Assistentes Sociais'
 d_37_10bin3_sum 'Número de Antropólogos'
 d_37_10bin4_sum 'Número de Advogados'
 d_37_10bin5_sum 'Número de Psicólogos'
 d_37_11bin1_sum 'Número de Servidores Estatutários'
 d_37_11bin2_sum 'Número de Empregados Públicos(CLT)'
 d_37_11bin3_sum 'Número de Comissionados'
 d_37_11bin4_sum'Número de profissionais com outros vínculos não permanentes'
 nu_trabalhador 'Número de trabalhadores'
.
EXECUTE.

COMPUTE q_37_13_velha=q_37_13.
EXECUTE.


RECODE q_37_13 (262=262) (272=272) (18=18) (20=20) (263=263) (391=391) (ELSE=SYSMIS).
EXECUTE.

VARIABLE LABELS
q_37_13'q_37_13_v14779_Carga Horária SEMANAL'.

VALUE LABELS
q_37_13
262 'Até 10 horas semanais'
272 'De 11 a 20 horas semanais'
18 'De 21 a 30 horas semanais'
20 'De 31 a 40 horas semanais'
263 'De 41 a 44 horas semanais'
391 'Mais de 44 horas semanais'. 