* Encoding: UTF-8.

** DERIVADAS - Centro POP Dados Gerais - Censo 2018**


***D1  Horas de funcionamento por semana da Unidade (q1_1 multiplicado por q1_2) ***

IF (q1_1 * q1_2 < 30) D1_horas.por.semana.fx = 0 .
IF (q1_1  * q1_2  >= 30 & q1_1  * q1_2   < 40) D1_horas.por.semana.fx = 1 .
IF (q1_1  * q1_2  >= 40 & q1_1  * q1_2   < 50) D1_horas.por.semana.fx = 2 .
IF (q1_1  * q1_2 > 49) D1_horas.por.semana.fx = 3 .
EXECUTE .

ADD VALUE LABEL
D1_horas.por.semana.fx  0 "menos de 30 horas/semana"  1 "30 a 39 horas/semana"  2 "40 a 49 horas/semana"  3 "50 ou mais horas/semana".

VARIABLE LABELS
D1_horas.por.semana.fx	'D1_horas.por.semana.fx.Total de horas por semana que o CENTRO POP encontra-se em funcionamento'.
EXECUTE.


*** Quantidade de Salas - q5 ***

COMPUTE D5_total.salas.atend= q5_1 + q5_2 + q5_3 + q5_4.
EXECUTE.

VARIABLE LABELS
D5_total.salas.atend	'D5_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

**** Soma o total de salas de atendimentos com o total de salas de coordenação********

COMPUTE D5_total.salas.adm.e.atend= q5_1 + q5_2 + q5_3 + q5_4+ q5_5.
EXECUTE.

VARIABLE LABELS
D5_total.salas.adm.e.atend	'D5_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE
  D5_total.salas.atend
  (0 thru 1=1)  (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D5_Salas.atend.fx .
EXECUTE .

ADD VALUE LABEL
D5_Salas.atend.fx 1"0 a 1"  2"2 a 3"  3"4 a 5"   4"6 a 7"    5"8 ou mais".

VARIABLE LABELS
D5_Salas.atend.fx	'D5_Salas.atend.fx.Número de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE
D5_total.salas.adm.e.atend
  (0 thru 1=1)  (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D5_total.salas.adm.e.atend.fx.
EXECUTE .

ADD VALUE LABEL
D5_total.salas.adm.e.atend.fx 1"0 a 1"  2"2 a 3"  3"4 a 5"   4"6 a 7"  5"8 ou mais".

VARIABLE LABELS
D5_total.salas.adm.e.atend.fx	'D5_Total de salas utilizadas para atendimento e para atividades administrativas.fx'.
EXECUTE.


***Quantidade de banheiros exclusivos dos trabalhadores do Centro Pop***

RECODE
q5_6
  (0 =0) (1=1)  (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D5_6.
EXECUTE .

ADD VALUE LABEL
D5_6 0 "0" 1"1"  2"2 a 3"  3"4 a 5"   4"6 a 7"    5"8 ou mais".

VARIABLE LABELS
D5_6	'D5_6.Quantidade de banheiros de uso exclusivo dos trabalhadores do Centro POP'.
EXECUTE.

***Quantidade de banheiros exclusivos dos usuários do Centro Pop***

RECODE
q5_7
  (0=0) (1=1) (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D5_7.
EXECUTE .

ADD VALUE LABEL
D5_7  0"Nenhum banheiro" 1"1 banheiro" 2"2 a 3 banheiros"  3"4 a 5 banheiros"   4"6 a 7 banheiros"   5"8 ou mais banheiros".

VARIABLE LABELS
D5_7	'D5_7.Quantidade de banheiros para uso dos usuários do Centro POP'.
EXECUTE.


*** Quantidade de Espaços para higiene pessoal (Box com chuveiros individualizados)***

RECODE
q5_8
   (0=0) (1=1) (2 thru 3=2)  (4 thru 5=3)  (6 thru 7=4)  (8 thru Highest=5)  INTO  D5_8.
EXECUTE .

ADD VALUE LABEL
D5_8 0"Nenhum banheiro" 1"1 banheiro" 2"2 a 3 banheiros"  3"4 a 5 banheiros"   4"6 a 7 banheiros"   5"8 ou mais banheiros".

VARIABLE LABELS
D5_8	'D5_8.Quantidade de espaços para higiene pessoal (Box com chuveiros individualizados)'.
EXECUTE.


*** Quantidade de Computadores no Centro Pop***

RECODE
q9_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_1 .
EXECUTE .

ADD VALUE LABEL
D9_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_1	'D9_1.Quantidade de computadores no CENTRO POP'.
EXECUTE.


*********Computadores conectados à internet**********

RECODE
  q9_2 
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_2 .
EXECUTE .

ADD VALUE LABEL
D9_2 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_2	'D9_2.Quantidade de computadores conectados à internet no CENTRO POP'.
EXECUTE.


*******Computadores para os usuários************

RECODE
 q9_3
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_3 .
EXECUTE .

ADD VALUE LABEL
D9_3 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_3	'D9_3.Quantidade de computadores para utilização pelos usuários'.
EXECUTE.


*******Computadores com internet para os usuários************

RECODE
 q9_4
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D9_4 .
EXECUTE .

ADD VALUE LABEL
D9_4 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"6 a 10" 11"mais de 10".

VARIABLE LABELS
D9_4	'D9_4.Quantidade de computadores concectados à internet, para utilização pelos usuários'.
EXECUTE.


*** Estimativa do número de pessoas em situação de rua na área de abrangência do CENTRO POP, no mês de referência de agosto de 2018 ***
****Na base, o valor máximo é 3.007 pessoas. ****

RECODE
q18_1_total
(SYSMIS=999999)  (0 thru 99=0) (100 thru 500=1) (501 thru 1000=2) (1001 thru 2000=3) (2001 thru 3000=4) (3001 thru 4000=5) INTO  D18_1_total.fx.
EXECUTE .

ADD VALUE LABEL
D18_1_total.fx 999999"Não sabe"  0"menos de 100"  1"100 a 500"  2"501 a 1000" 3"1001 a 2000"  4"2001 a 3000"  5"3001 a 4000".

VARIABLE LABELS
D18_1_total.fx	'D18_1_fx.estimativa de pessoas em situação de rua em sua área de abrangência'.
EXECUTE.
