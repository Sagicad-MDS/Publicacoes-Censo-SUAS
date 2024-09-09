* Encoding: UTF-8.




**q4*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q4_1 * q4_2 < 30) d_4=0.
IF (q4_1 * q4_2  >= 30) & (q4_1 * q4_2   < 40) d_4= 1 .
IF (q4_1 * q4_2  >= 40) & (q4_1 * q4_2   < 50) d_4 = 2 .
IF (q4_1 * q4_2 > 49) d_4 = 3 .
EXECUTE.

VALUE LABELS   d_4 
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 49 horas/semana".

 VARIABLE LABELS
d_4 'd_4_Total de horas por semana que o CREAS encontra-se em funcionamento'.
EXECUTE.


** q7*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d_7_atend= SUM( q7_1, q7_2,q7_3, q7_4).
EXECUTE.

VARIABLE LABELS
d_7_atend 'd_7_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d_7_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_7_atend_categoria.

VARIABLE LABELS
d_7_atend_categoria 'd_7_atend_categoria.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS d_7_atend_categoria
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades administrativas*

COMPUTE d_7_adm_atend= SUM(q7_1, q7_2,q7_3, q7_4, q7_5).
EXECUTE.

VARIABLE LABELS
d_7_adm_atend 'd_7_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d_7_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_7_adm_atend_categoria.

VALUE LABELS d_7_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_7_adm_atend_categoria 'd_7_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

*** q8_6*********************Quantidade de banheiros*********************************************************

RECODE q7_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_7_6_banheiros.

VALUE LABELS d_7_6_banheiros 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_7_6_banheiros 'd_7_6_banheiros.Quantidade total de banheiros'.
EXECUTE.

 

***q10****************************** Quantidade de Computadores***********************************************

RECODE  q10_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_10_1.
EXECUTE .

VALUE LABELS d_10_1
 0"nenhum computador" 
1"1 computador" 
2"2 computadores"  
3"3 computadores"  
4"4 computadores" 
5"5 computadores"  
10"De 6 a 10 computadores"  
11"Mais de 10 computadores" .

VARIABLE LABELS
d_10_1	'd_10_1.Quantidade de computadores, em perfeito funcionamento, existentes no CREAS'.
EXECUTE.

RECODE  q10_2 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_10_2.
EXECUTE .

VALUE LABELS d_10_2
 0"nenhum computador" 
1"1 computador" 
2"2 computadores"  
3"3 computadores"  
4"4 computadores" 
5"5 computadores"  
10"De 6 a 10 computadores"  
11"Mais de 10 computadores" .

VARIABLE LABELS
d_10_2	'd_10_2.Quantidade de computadores conectados à internet no CREAS'.
EXECUTE.





