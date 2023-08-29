


**q2*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q2_1 * q2_2 < 30) d_2=0.
IF (q2_1 * q2_2  >= 30) & (q2_1 * q2_2   < 40) d_2 = 1 .
IF (q2_1 * q2_2  >= 40) & (q2_1 * q2_2   < 50) d_2 = 2 .
IF (q2_1 * q2_2 > 49) d_2 = 3 .
EXECUTE.

VALUE LABELS   d_2 
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 49 horas/semana".

 VARIABLE LABELS
d_2 'd_2_Total de horas por semana que o CRAS encontra-se em funcionamento'.
EXECUTE.



** q7*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d_7_atend= SUM( q7_1, q7_2,q7_3, q7_4).
EXECUTE.

VARIABLE LABELS
d_7_atend 'd_7_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d_7_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d_7_atend_categoria.

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

RECODE d_7_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d_7_adm_atend_categoria.

VALUE LABELS d_7_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_7_adm_atend_categoria 'd_7_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.


*Salas exclusivas Cadunico/PBF*

RECODE q7_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d_7_PBF_categoria.

VALUE LABELS d_7_PBF_categoria
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_7_PBF_categoria 'd_7_PBF_categoria.Total de salas exclusivas para o Cadastro Único/Programa Bolsa Família'.
EXECUTE.



*Salas exclusivas PCF*

RECODE q7_7 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d_7_PCF_categoria.

VALUE LABELS d_7_PCF_categoria
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_7_PCF_categoria 'd_7_PCF_categoria.Total de salas exclusivas para a utilização pelo Programa Criança Feliz'.
EXECUTE.


*** q_7_8*********************Quantidade de banheiros*********************************************************

RECODE q7_8 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d_7_8_banheiros.

VALUE LABELS d_7_8_banheiros 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_7_8_banheiros 'd_7_8_banheiros.Quantidade total de banheiros'.
EXECUTE.

 


***q11****************************** Quantidade de Computadores***********************************************

RECODE  q11_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_11_1.
EXECUTE .

VALUE LABELS d_11_1
 0"0 computador" 
1"1 computador" 
2"2 computadores" 
3"3 computadores" 
4"4 computadores" 
5"5 computadores" 
10"De 6 a 10 computadores" 
11"Mais de 10 computadores".

VARIABLE LABELS
d_11_1	'd_11_1.Quantidade de computadores, em perfeito funcionamento, existentes no CRAS'.
EXECUTE.

RECODE  q11_2 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d_11_2.
EXECUTE .

VALUE LABELS d_11_2
  0"0 computador" 
1"1 computador" 
2"2 computadores" 
3"3 computadores" 
4"4 computadores" 
5"5 computadores" 
10"De 6 a 10 computadores" 
11"Mais de 10 computadores".

VARIABLE LABELS
d_11_2	'd_11_2.Quantidade de computadores conectados à internet no CRAS'.
EXECUTE.



**q14********************************************************************************************************************


RECODE q14  ( 0=0)(1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO q14_categoria.

VALUE LABELS q14_categoria
0"nenhuma pessoa"
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.


VARIABLE LABELS
q14_categoria 'q14_categoria.Total de pessoas que participaram regularmente dos atendimentos coletivos realizados pelo PAIF'.
EXECUTE.




**q25  _Total de indivíduos atendidos pelo Serviço de PSB no Domicílio neste CRAS**************************************************************************************************************
****teste

DO IF (q25_1 < q25_2 | q25_1 < q25_3).
RECODE q25_1 (ELSE=SYSMIS).
RECODE q25_2(ELSE=SYSMIS).
RECODE q25_3 (ELSE=SYSMIS).
RECODE q25_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


RECODE q25_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d25_1.

VALUE LABELS d25_1
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE. 

VARIABLE LABELS  d25_1  'd25_1. Total de indivíduos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.

***idosos********************************

RECODE q25_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d25_2.

VALUE LABELS d25_2  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d25_2  'd25_2. Total de idosos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.

***pessoas com deficiencia********************************

RECODE q25_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d25_3.

VALUE LABELS d25_3  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d25_3  'd25_3. Total de pessoas com deficiencia atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.

***pessoas com deficiencia de 0 a 6 anos de idade*******************************

RECODE q25_4 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d25_4.

VALUE LABELS d25_4  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d25_4  'd25_4. Total de pessoas com deficiencia de 0 a 6 anos de idade atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.


***************************************q27Serviço de PSB no Domicílio ofertado na rede referenciada  - Total de indivíduos atendidos**************************************************************************************************************

DO IF (q27_1  < q27_2 | q27_1 < q27_3).
RECODE q27_1 (ELSE=SYSMIS).
RECODE q27_2(ELSE=SYSMIS).
RECODE q27_3 (ELSE=SYSMIS).
RECODE q27_4 (ELSE=SYSMIS).
END IF.
EXECUTE.





RECODE q27_1 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d27_1.

VALUE LABELS d27_1  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d27_1  'd27_1. Total de indivíduos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.

***idosos********************************

RECODE q27_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d27_2.

VALUE LABELS d27_2  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d27_2  'd27_2. Total de idosos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.

***pessoas com deficiencia********************************

RECODE q27_3 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d27_3.

VALUE LABELS d27_3  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d27_3  'd27_3. Total de pessoas com deficiencia atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.

***pessoas com deficiencia de 0 a 6 anos de idade*******************************

RECODE q27_4 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d27_4.

VALUE LABELS d27_4  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d27_4  'd27_4. Total de pessoas com deficiencia de 0 a 6 anos de idade atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.


**************************************q41  Total de pessoas atendidas para o Cadastro Único**************************************************************************************************************

DO IF (q41_1  < q42_2 | q41_1 < q43_3).
RECODE q41_1 (ELSE=SYSMIS).
RECODE q41_2(ELSE=SYSMIS).
RECODE q41_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


RECODE q41_1 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d41_1.

VALUE LABELS d41_1  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d41_1  'd41_1. Total de pessoas atendidas para o Cadastro Único'.
EXECUTE.

***inclusão cadastral********************************

RECODE q41_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d41_2.

VALUE LABELS d41_2  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d41_2  'd41_2. Total de pessoas realizaram entrevista para inclusão cadastral'.
EXECUTE.

***atualização cadastral********************************

RECODE q41_3 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d41_3.

VALUE LABELS d41_3  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d41_3  'd41_3. Total de pessoas realizaram entrevista para atualização cadastral'.
EXECUTE.



**************************************q42  tempo médio  atendimento para o Cadastro Único**************************************************************************************************************

RECODE q42_1 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d42_1.

VALUE LABELS d42_1  
0 'mesmo dia' 
1"Entre 1 e 10 dias"  
2"Entre 11 e 20 dias"  
3"Entre 21 e 30 dias" 
4"Entre 31 e 60 dias" 
5"Mais de 60 dias".
EXECUTE.

VARIABLE LABELS  d42_1  'd42_1. Em média quantos dias são entre o agendamento e a realização do atendimento'.
EXECUTE.



RECODE q42_2 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d42_2.

VALUE LABELS d42_2  
0 'mesmo dia' 
1"Entre 1 e 10 dias"  
2"Entre 11 e 20 dias"  
3"Entre 21 e 30 dias" 
4"Entre 31 e 60 dias" 
5"Mais de 60 dias".
EXECUTE.

VARIABLE LABELS  d42_2  'd42_2.  Em média quantos dias são após a entrevista, para que os dados coletados em formulário em papel sejam inseridos no sistema'.
EXECUTE.



RECODE q42_3 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d42_3.

VALUE LABELS d42_3  
0 'menos de um minuto' 
1"Entre 1 e 10 minutos"  
2"Entre 11 e 20 minutos"  
3"Entre 21 e 30 minutos" 
4"Entre 31 e 60 minutos" 
5"Mais de 60 minutos".
EXECUTE.

VARIABLE LABELS  d42_3  'd42_3_Em média quantos minutos a família espera  nesta Unidade até que o atendimento seja iniciado'.
EXECUTE.



RECODE q42_4 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d42_4.

VALUE LABELS d42_4  
0 'menos de um minuto' 
1"Entre 1 e 10 minutos"  
2"Entre 11 e 20 minutos"  
3"Entre 21 e 30 minutos" 
4"Entre 31 e 60 minutos" 
5"Mais de 60 minutos".
EXECUTE.

VARIABLE LABELS  d42_4  'd42_4_Em média quantos minutos durou a primeira entrevista de uma família para inclusão cadastral no Cadastro Único '.
EXECUTE.




RECODE q42_5 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d42_5.

VALUE LABELS d42_5  
0 'menos de um minuto' 
1"Entre 1 e 10 minutos"  
2"Entre 11 e 20 minutos"  
3"Entre 21 e 30 minutos" 
4"Entre 31 e 60 minutos" 
5"Mais de 60 minutos".
EXECUTE.

VARIABLE LABELS  d42_5  'd42_5_Em média quantos minutos durou a atualização cadastral de uma família no Cadastro Único '.
EXECUTE.






