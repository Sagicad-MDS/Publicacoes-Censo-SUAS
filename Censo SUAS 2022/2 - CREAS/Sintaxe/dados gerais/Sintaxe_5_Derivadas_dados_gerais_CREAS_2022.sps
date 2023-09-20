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


** q8*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d_8_atend= SUM( q8_1, q8_2,q8_3, q8_4).
EXECUTE.

VARIABLE LABELS
d_8_atend 'd_8_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d_8_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_8_atend_categoria.

VARIABLE LABELS
d_8_atend_categoria 'd_8_atend_categoria.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS d_8_atend_categoria
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades administrativas*

COMPUTE d_8_adm_atend= SUM(q8_1, q8_2,q8_3, q8_4, q8_5).
EXECUTE.

VARIABLE LABELS
d_8_adm_atend 'd_8_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d_8_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_8_adm_atend_categoria.

VALUE LABELS d_8_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_8_adm_atend_categoria 'd_8_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

*** q8_6*********************Quantidade de banheiros*********************************************************

RECODE q8_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_8_6_banheiros.

VALUE LABELS d_8_6_banheiros 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_8_6_banheiros 'd_8_6_banheiros.Quantidade total de banheiros'.
EXECUTE.

 

***q12****************************** Quantidade de Computadores***********************************************

RECODE  q12_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_12_1.
EXECUTE .

VALUE LABELS d_12_1
 0"nenhum computador" 
1"1 computador" 
2"2 computadores"  
3"3 computadores"  
4"4 computadores" 
5"5 computadores"  
10"De 6 a 10 computadores"  
11"Mais de 10 computadores" .

VARIABLE LABELS
d_12_1	'd_12_1.Quantidade de computadores, em perfeito funcionamento, existentes no CREAS'.
EXECUTE.

RECODE  q12_2 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_12_2.
EXECUTE .

VALUE LABELS d_12_2
 0"nenhum computador" 
1"1 computador" 
2"2 computadores"  
3"3 computadores"  
4"4 computadores" 
5"5 computadores"  
10"De 6 a 10 computadores"  
11"Mais de 10 computadores" .

VARIABLE LABELS
d_12_2	'd_12_2.Quantidade de computadores conectados à internet no CREAS'.
EXECUTE.



**q15********************************************************************************************************************


RECODE q15_1  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d_15_1.

VALUE LABELS d_15_1  
1"Entre 1 e 20 casos"  
2"Entre 21 e 40 casos"  
3"Entre 41 e 70 casos" 
4"Entre 71 e 100 casos" 
5"Mais de 100 casos".
EXECUTE.

VARIABLE LABELS  d_15_1  'd_15_1. Quantos casos em acompanhamento pelo PAEFI são referentes a famílias residentes no município sede do CREAS?'.
EXECUTE.




RECODE q15_2  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d_15_2.

VALUE LABELS d_15_2  
1"Entre 1 e 20 casos"  
2"Entre 21 e 40 casos"  
3"Entre 41 e 70 casos" 
4"Entre 71 e 100 casos" 
5"Mais de 100 casos".
EXECUTE.

VARIABLE LABELS  d_15_2  'd_15_2. Quantos casos em acompanhamento pelo PAEFI são referentes a famílias residentes em outros municípios?'.
EXECUTE.


******q22*********************************************************************

RECODE q22_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d_22_1.

VALUE LABELS  d_22_1  
0"Nenhum adolescente" 
1"Entre 1 e 20 adolescentes"  
2"Entre 21 e 40 adolescentes"  
3"Entre 41 e 70 adolescentes" 
4"Entre 71 e 100 adolescentes" 
5"Mais de 100 adolescentes".
EXECUTE.

VARIABLE LABELS   d_22_1  ' d_22_1.Do total de adolescentes em MSE em agosto/2021, quantas(os) adolescentes cumprem liberdade assistida pela primeira vez'.
EXECUTE.



RECODE q22_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d_22_2.

VALUE LABELS  d_22_2 
0"Nenhum adolescente" 
1"Entre 1 e 20 adolescentes"  
2"Entre 21 e 40 adolescentes"  
3"Entre 41 e 70 adolescentes" 
4"Entre 71 e 100 adolescentes" 
5"Mais de 100 adolescentes".
EXECUTE.

VARIABLE LABELS   d_22_2  ' d_22_2.Do total de adolescentes em MSE em agosto/2021, quantas(os) adolescentes cumprem prestação de serviços à comunidade pela primeira vez'.
EXECUTE.





**q40********************************

RECODE q40  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d_40.

VALUE LABELS d_40 
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_40  'd_40. Total de pessoas com deficiência e/ou Idosas atendidas nesta Unidade durante o mes de  agosto de 2021'.
EXECUTE.



**q41********************************

RECODE q41  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d_41.

VALUE LABELS d_41 
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_41  'd_41.  Serviço de Proteção Social Especial para Pessoas Com Deficiência, Idosas e suas Famílias, ofertado nesta Unidade, possui capacidade para atender quantas(os) usuárias(os) por turno'.
EXECUTE.



























