*** DERIVADAS ***

** derivada da fonte de financiamento **

IF  (q1_1 = 1) D1=1.
EXECUTE.

IF  (q1_2 =1 ) D1=2.
EXECUTE.

IF  (q1_3 =1 ) D1=3.
EXECUTE.

IF  (q1_4 =1 ) D1=4.
EXECUTE.

IF  (q1_1 = 1  & q1_2 = 1) D1=5.
EXECUTE.

IF  (q1_1 = 1  & q1_3 = 1) D1=6.
EXECUTE.

IF  (q1_1 = 1  & q1_4 = 1) D1=7.
EXECUTE.

IF  (q1_2 = 1  & q1_3 = 1) D1=8.
EXECUTE.

IF  (q1_2 = 1  & q1_4 = 1) D1=9.
EXECUTE.

IF  (q1_1 = 1  & q1_2 = 1 & q1_3 = 1) D1=10.
EXECUTE.

IF  (q1_1 = 1  & q1_2 = 1 & q1_4 = 1) D1=11.
EXECUTE.

IF  (q1_1 = 1  & q1_3 =1 & q1_4 = 1) D1=12.
EXECUTE.

IF  (q1_1 = 2  & q1_3 = 1 & q1_4 = 1) D1=13.
EXECUTE.

IF  (q1_1 = 1  & q1_2 = 1 & q1_3 = 1 & q1_4 = 1) D1=14.
EXECUTE.

VALUE LABELS
/D1
1	Somente recursos municipais ou do DF
2	Somente recursos estaduais
3	Somente recursos federais
4	Somente outros recursos
5	Recursos municipais ou DF e estaduais
6	Recursos municipais ou DF e federais
7	Recursos municipais ou DF e outros recursos
8	Recursos estaduais e federais
9	Recursos estaduais e outros recursos
10	Recursos municipais ou DF e estaduais e federais
11	Recursos municipais ou DF e estaduais e outros recursos
12	Recursos municipais ou DF e federais e outros recursos
13	Recursos estaduais e federais e outros recursos
14	Recursos municipais ou DF, estaduais, federais e outros recursos.
EXECUTE.

VARIABLE LABELS
D1	D1_Fontes de financiamento.
EXECUTE.

** derivada da fonte de financiamento **


*** Horas de funcionamento por semana da Unidade ***

IF (q2_1 * q2_2 < 30) D2_horas_por_semana_fx = 0 .
IF (q2_1 * q2_2  >= 30 & q2_1 * q2_2   < 40) D2_horas_por_semana_fx = 1 .
IF (q2_1 * q2_2  >= 40 & q2_1 * q2_2   < 50) D2_horas_por_semana_fx = 2 .
IF (q2_1 * q2_2 > 49) D2_horas_por_semana_fx = 3 .
EXECUTE .

ADD VALUE LABEL
D2_horas_por_semana_fx  0 "menos de 30 horas/semana"  1 "30 a 39 horas/semana"  2 "40 a 49 horas/semana"  3 "50 ou mais horas/semana".

VARIABLE LABELS
D2_horas_por_semana_fx	D2_horas_por_semana_fx_Total de horas por semana que o CENTRO POP encontra-se em funcionamento.
EXECUTE.

*** Horas de funcionamento por semana da Unidade ***

*** Quantidade de Salas ***

COMPUTE D7_total_salas_atend= q7_1 + q7_2 + q7_3 + q7_4.
EXECUTE.

VARIABLE LABELS
D7_total_salas_atend	'D7_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

COMPUTE total_salas_adm_e_atend= q7_1 + q7_2 + q7_3 + q7_4+ q7_5.
EXECUTE.

VARIABLE LABELS
total_salas_adm_e_atend	Total de salas utilizadas para atendimento e para atividades administrativas.
EXECUTE.

RECODE
  D7_total_salas_atend
  (0 thru 1=1)  (2 thru 3=3)  (4 thru 5=5)  (6 thru 7=7)  (8 thru Highest=8)  INTO  D7_Salas_atend_fx .
EXECUTE .

ADD VALUE LABEL
D7_Salas_atend_fx 1"0 a 1"  3"2 a 3"  5"4 a 5"   7"6 a 7"    8"8 ou mais".

VARIABLE LABELS
D7_Salas_atend_fx	D7_Salas_atend_fx_Número de salas utilizadas para atendimento individual ou coletivo.
EXECUTE.

RECODE
total_salas_adm_e_atend
  (0 thru 1=1)  (2 thru 3=3)  (4 thru 5=5)  (6 thru 7=7)  (8 thru Highest=8)  INTO  D7_total_salas_adm_e_atend_fx.
EXECUTE .

ADD VALUE LABEL
D7_total_salas_adm_e_atend_fx 1"0 a 1"  3"2 a 3"  5"4 a 5"   7"6 a 7"    8"8 ou mais".

VARIABLE LABELS
D7_total_salas_adm_e_atend_fx	Total de salas utilizadas para atendimento e para atividades administrativas_fx.
EXECUTE.

*** Quantidade de Salas ***


*** Quantidade de Computadores***

RECODE
  q14_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D14a .
EXECUTE .

ADD VALUE LABEL
D14a 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D14a	D14a_Quantidade de computadores no CENTRO POP.
EXECUTE.

RECODE
  q14_2 
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D14b .
EXECUTE .

ADD VALUE LABEL
D14b 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D14b	D14b_Quantidade de computadores conectados à internet no CENTRO POP.
EXECUTE.

*** Quantidade de Computadores***


*** Estimativa do número de pessoas em situação de rua na área de abrangência do CENTRO POP ***

RECODE
q31
(SYSMIS=999999)  (0 thru 99=0) (100 thru 500=1) (501 thru 1000=2) (1001 thru 3000=3) (3001 thru 4000=4) (4001 thru 6000=5) (6001 thru 10000=6) (10001 thru Highest=7)  INTO  D31_fx .
EXECUTE .

ADD VALUE LABEL
D31_fx 999999"Não sabe"  0"menos de 100"  1"100 a 500"  2"501 a 1000" 3"1001 a 3000"  4"3001 a 6000"  5"4001 a 6000"  6"6001 a 10.000" 7"mais de 10 mil".

VARIABLE LABELS
D31_fx	D31_fx_Quantidade de famílias em situação de vulnerabilidade que residem no território de abrangência do Centro POP.
EXECUTE.

*** Estimativa do número de pessoas em situação de rua na área de abrangência do CENTRO POP ***

