* Encoding: UTF-8.



DATASET ACTIVATE DataSet1.

**q2*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q2_2 < 21) d_2=0.
IF (q2_2 >= 21) & (q2_2 < 24) d_2 = 1 .
IF (q2_2 >= 25) & (q2_2 < 28) d_2 = 2 .
IF (q2_2 > 28) d_2 = 3 .
EXECUTE.

VALUE LABELS   d_2 
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 50 horas/semana".

 VARIABLE LABELS
d_2  'd_2 _Total de horas por semana que o Centro POP encontra-se em funcionamento'.
EXECUTE.


** q6*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d_6_atend=  SUM (q6_1, q6_2, q6_3, q6_4).
EXECUTE.

VARIABLE LABELS
d_6_atend 'd_6_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d_6_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_6_atend_categoria.

VARIABLE LABELS
d_6_atend_categoria 'd_6_atend_categoria.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS d_6_atend_categoria
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades administrativas*

COMPUTE d_6_adm_atend= SUM (q6_1, q6_2, q6_3, q6_4,q6_5) .
EXECUTE.

VARIABLE LABELS
d_6_adm_atend 'd_6_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d_6_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_6_adm_atend_categoria.

VALUE LABELS d_6_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_6_adm_atend_categoria 'd_6_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

*** q6_6*********************Quantidade de banheiros trabalhadores*********************************************************

RECODE q6_6 (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_6_6_banheiros.

VALUE LABELS d_6_6_banheiros 
0"nenhum banheiro"
1"1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_6_6_banheiros 'd_6_6_banheiros.Quantidade total de banheiros'.
EXECUTE.

 *** q6_8*********************Quantidade de box*********************************************************

RECODE q6_8 (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_6_8_box.

VALUE LABELS d_6_8_box 
0"nenhum box"
1"1 box" 
2"De 2 a 3 box" 
 3"De 4 a 5 box" 
 4"De 6 a 7 box" 
5"8 ou mais box".
EXECUTE.

VARIABLE LABELS  d_6_8_box  'd_6_8_Quantidade de espaços para higiene pessoal (Box com chuveiros individualizados)'.
EXECUTE.

***q10****************************** Quantidade de Computadores conectados a internet**********************************************

RECODE  q10_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_10_1.
EXECUTE .

VALUE LABELS d_10_1
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_10_1	'd_10_1.Quantidade total de computadores na Unidade'.
EXECUTE.



RECODE  q10_2 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_10_2.
EXECUTE .

VALUE LABELS d_10_2
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_10_2	'd_10_2.Quantidade de computadores conectados a internet'.
EXECUTE.



RECODE  q10_3 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_10_3.
EXECUTE .

VALUE LABELS d_10_3
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_10_3	'd_10_3.Quantidade  de computadores para utilização dos usuários'.
EXECUTE.




RECODE  q10_4 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_10_4.
EXECUTE .

VALUE LABELS d_10_4
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_10_4	'd_10_4.Quantidade  de computadores para utilização dos usuários conectados a internet'.
EXECUTE.




