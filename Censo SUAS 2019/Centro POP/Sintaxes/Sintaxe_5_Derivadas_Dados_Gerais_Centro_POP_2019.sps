


DATASET ACTIVATE DataSet1.

**q1*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q1_1 * q1_2 < 30) d_1=0.
IF (q1_1 * q1_2  >= 30) & (q1_1 * q1_2   < 40) d_1 = 1 .
IF (q1_1 * q1_2  >= 40) & (q1_1 * q1_2  < 50) d_1 = 2 .
IF (q1_1 * q1_2 > 49) d_1 = 3 .
EXECUTE.

VALUE LABELS   d_1 
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 50 horas/semana".

 VARIABLE LABELS
d_1  'd_1 _Total de horas por semana que o Centro POP encontra-se em funcionamento'.
EXECUTE.


** q5*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d_5_atend=  SUM (q5_1, q5_2, q5_3, q5_4).
EXECUTE.

VARIABLE LABELS
d_5_atend 'd_5_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d_5_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_5_atend_categoria.

VARIABLE LABELS
d_5_atend_categoria 'd_5_atend_categoria.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS d_5_atend_categoria
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades administrativas*

COMPUTE d_5_adm_atend= SUM (q5_1, q5_2, q5_3, q5_4,q5_5) .
EXECUTE.

VARIABLE LABELS
d_5_adm_atend 'd_5_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d_5_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_5_adm_atend_categoria.

VALUE LABELS d_5_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_5_adm_atend_categoria 'd_5_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

*** q5_6*********************Quantidade de banheiros trabalhadores*********************************************************

RECODE q5_6 (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_5_6_banheiros.

VALUE LABELS d_5_6_banheiros 
0"nenhum banheiro"
1"1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_5_6_banheiros 'd_5_6_banheiros.Quantidade total de banheiros'.
EXECUTE.

 *** q5_8*********************Quantidade de box*********************************************************

RECODE q5_8 (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_5_8_box.

VALUE LABELS d_5_8_box 
0"nenhum box"
1"1 box" 
2"De 2 a 3 box" 
 3"De 4 a 5 box" 
 4"De 6 a 7 box" 
5"8 ou mais box".
EXECUTE.

VARIABLE LABELS  d_5_8_box  'd_5_8_Quantidade de espaços para higiene pessoal (Box com chuveiros individualizados)'.
EXECUTE.

***q9****************************** Quantidade de Computadores conectados a internet**********************************************

RECODE  q9_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_9_1.
EXECUTE .

VALUE LABELS d_9_1
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_9_1	'd_9_1.Quantidade total de computadores na Unidade'.
EXECUTE.



RECODE  q9_2 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_9_2.
EXECUTE .

VALUE LABELS d_9_2
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_9_2	'd_9_2.Quantidade de computadores conectados a internet'.
EXECUTE.



RECODE  q9_3 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_9_3.
EXECUTE .

VALUE LABELS d_9_3
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_9_3	'd_9_3.Quantidade  de computadores para utilização dos usuários'.
EXECUTE.




RECODE  q9_4 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_9_4.
EXECUTE .

VALUE LABELS d_9_4
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_9_4	'd_9_4.Quantidade  de computadores para utilização dos usuários conectados a internet'.
EXECUTE.


******q31**************************************************************

RECODE q31 (0=1).
RECODE q31_1_99 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 50=4)  (51 thru Highest=5) (ELSE=Copy) INTO d_31_1_99.
VARIABLE LABELS d_31_1_99 'd_31_1_99. Nesta unidade, algum(a) profissional já participou de algum curso do CAPACITASUAS'.
VALUE LABELS d_31_1_99
1 'Nenhum' 
2 'Até 5'  
3 '6 a 10'  
4 '11 a 50'  
5 'mais de 50'.
EXECUTE.


