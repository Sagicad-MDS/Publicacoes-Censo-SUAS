


**q2*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q2_1 * q2_2 < 30) d2=0.
IF (q2_1 * q2_2  >= 30) & (q2_1 * q2_2   < 40) d2 = 1 .
IF (q2_1 * q2_2  >= 40) & (q2_1 * q2_2   < 50) d2 = 2 .
IF (q2_1 * q2_2 > 49) d2 = 3 .
EXECUTE.

VALUE LABELS   d2 
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 49 horas/semana".

 VARIABLE LABELS
d2 'd2_Total de horas por semana que o CRAS encontra-se em funcionamento'.
EXECUTE.



** q8*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d8_atend= SUM( q8_1, q8_2,q8_3, q8_4).
EXECUTE.

VARIABLE LABELS
d8_atend 'd8_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d8_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d8_atend_categoria.

VARIABLE LABELS
d8_atend_categoria 'd8_atend_categoria.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS d8_atend_categoria
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades administrativas*

COMPUTE d8_adm_atend= SUM(q8_1, q8_2,q8_3, q8_4, q8_5).
EXECUTE.

VARIABLE LABELS
d8_adm_atend 'd8_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d8_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d8_adm_atend_categoria.

VALUE LABELS d8_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d8_adm_atend_categoria 'd8_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.



*** q8_6*********************Quantidade de banheiros*********************************************************

RECODE q8_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d8_6_banheiros.

VALUE LABELS d8_6_banheiros 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d8_6_banheiros 'd8_6_banheiros.Quantidade total de banheiros'.
EXECUTE.

 


***q11****************************** Quantidade de Computadores***********************************************

RECODE  q11_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d11_1.
EXECUTE .

VALUE LABELS d11_1
 0"0 computador" 
1"1 computador" 
2"2 computadores" 
3"3 computadores" 
4"4 computadores" 
5"5 computadores" 
10"De 6 a 10 computadores" 
11"Mais de 10 computadores".

VARIABLE LABELS
d11_1	'd11_1.Quantidade de computadores, em perfeito funcionamento, existentes no CRAS'.
EXECUTE.




RECODE  q11_2 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d11_2.
EXECUTE .

VALUE LABELS d11_2
  0"0 computador" 
1"1 computador" 
2"2 computadores" 
3"3 computadores" 
4"4 computadores" 
5"5 computadores" 
10"De 6 a 10 computadores" 
11"Mais de 10 computadores".

VARIABLE LABELS
d11_2	'd11_2.Quantidade de computadores conectados à internet no CRAS'.
EXECUTE.



**q13*******************************************************************************************************************


RECODE q13  ( 0=0)(1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO q13_categoria.

VALUE LABELS q13_categoria
0"nenhuma pessoa"
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.


VARIABLE LABELS
q13_categoria 'q13_categoria.Total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF'.
EXECUTE.




**q23  _Total de indivíduos atendidos pelo Serviço de PSB no Domicílio neste CRAS**************************************************************************************************************


RECODE q23_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d23_1.

VALUE LABELS d23_1
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE. 

VARIABLE LABELS  d23_1  'd23_1. Total de indivíduos atendidos pelo Serviço de PSB no omicílio neste CRAS'.
EXECUTE.

***idosos********************************

RECODE q23_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d23_2.

VALUE LABELS d23_2  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d23_2  'd23_2. Destes, qual o total de idosas(os) atendidos'.
EXECUTE.

***pessoas com deficiencia********************************

RECODE q23_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d23_3.

VALUE LABELS d23_3  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d23_3  'd23_3. Destes, qual o total de pessoas com deficiência'.
EXECUTE.

***pessoas com deficiencia de 0 a 6 anos de idade*******************************

RECODE q23_4 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d23_4.

VALUE LABELS d23_4  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d23_4  'd23_4. Do total de pessoas com deficiência, quantas possuem de 0 a 6 anos'.
EXECUTE.


***************************************q36 pessoas atendidas para o Cadastro Único **************************************************************************************************************

DO IF (q36_1  < q36_2 | q36_1 < q36_3).
RECODE q36_1 (ELSE=SYSMIS).
RECODE q36_2(ELSE=SYSMIS).
RECODE q36_3 (ELSE=SYSMIS).
END IF.
EXECUTE.



RECODE q36_1 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_1.

VALUE LABELS d36_1  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d36_1  'd36_1. Total de pessoas atendidas para o Cadastro Único'.
EXECUTE.



RECODE q36_2 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_2.

VALUE LABELS d36_2  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d36_2  'd36_2. Destes, qual o total de pessoas realizaram entrevista para inclusão cadastral'.
EXECUTE.



RECODE q36_3 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_3.

VALUE LABELS d36_3 
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d36_3  'd36_3. Destes, qual o total de pessoas realizaram entrevista para atualização cadastral'.
EXECUTE.



RECODE q37_1 (0=0)  (1 =1) (2 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru Highest=5) INTO d37_1.

VALUE LABELS d37_1  
0 'menos de um dia' 
1 'Em 1 dia'
2"Entre 2 e 5 dias"  
3"Entre 6 e 10 dias"
4"Entre 11 e 20 dias"
5"Mais de 21 dias".
EXECUTE.

VARIABLE LABELS  d37_1  'd37_1_Em média quantos dias demora entre o agendamento e a realização do atendimento'.
EXECUTE.



RECODE q37_2 (0=0)  (1 =1) (2 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru Highest=5) INTO d37_2.

VALUE LABELS d37_2 
0 'menos de um dia' 
1 'Em 1 dia'
2"Entre 2 e 5 dias"  
3"Entre 6 e 10 dias"
4"Entre 11 e 20 dias"
5"Mais de 21 dias".
EXECUTE.

VARIABLE LABELS  d37_2  'd37_2_Em média quantos dias demora após a entrevista, para que os dados coletados em formulário em papel sejam inseridos no sistema'.
EXECUTE.




