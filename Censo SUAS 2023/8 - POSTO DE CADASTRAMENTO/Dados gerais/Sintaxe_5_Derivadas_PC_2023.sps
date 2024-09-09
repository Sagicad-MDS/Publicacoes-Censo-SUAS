


DATASET ACTIVATE DataSet1.

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
d_2 'd_2_Total de horas por semana que o Posto encontra-se em funcionamento'.
EXECUTE.






** q5*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d_5_atend= SUM( q5_1, q5_2,q5_3, q5_4, q5_5).
EXECUTE.

VARIABLE LABELS
d_5_atend 'd_5_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d_5_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_5_atend_categoria.
EXECUTE.

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

COMPUTE d_5_adm_atend= SUM(q5_1, q5_2,q5_3, q5_4, q5_5, q5_6).
EXECUTE.

VARIABLE LABELS
d_5_adm_atend 'd_5_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d_5_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_5_adm_atend_categoria.
EXECUTE.

VALUE LABELS d_5_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_5_adm_atend_categoria 'd_5_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

*** q5_7*********************Quantidade de banheiros*********************************************************

RECODE q5_7 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_5_7_banheiros.
EXECUTE.

VALUE LABELS d_5_7_banheiros 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_5_7_banheiros 'd_5_7_banheiros.Quantidade total de banheiros'.
EXECUTE.


****q9******************************Quantidade de equipamentos*************************

RECODE  q7_1_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d7_1_1.
EXECUTE .

VALUE LABELS d7_1_1
0  " nenhum telefone" 
1  "1 telefone" 
2  "2  telefones" 
3  "3  telefones" 
4  "4 telefones" 
5  "5 telefones"  
6 "De 6 a 10 telefones" 
7 "Mais de 10 telefones" .

VARIABLE LABELS
d7_1_1	'd7_1_1.Quantidade de telefones'.
EXECUTE.

RECODE  q7_2_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d7_2_1.
EXECUTE .

VALUE LABELS d7_2_1
0  " nenhum celular" 
1  "1 celular" 
2  "2  celulares" 
3  "3   celulares" 
4  "4  celulares" 
5  "5  celulares" 
6 "De 6 a 10 celulares" 
7 "Mais de 10  celulares"  .


VARIABLE LABELS
d7_2_1	'd7_2_1.Quantidade de celulares da unidade'.
EXECUTE.

RECODE  q7_3_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d7_3_1.
EXECUTE .

VALUE LABELS d7_3_1
0  " nenhuma impressora" 
1  "1  impressora" 
2  "2   impressoras" 
3  "3   impressoras" 
4  "4  impressoras" 
5  "5  impressoras" 
6 "De 6 a 10 impressoras" 
7 "Mais de 10  impressoras"   .

VARIABLE LABELS
d7_3_1	'd7_3_1.Quantidade de impressoras'.
EXECUTE.

RECODE  q7_4_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d7_4_1.
EXECUTE .

VALUE LABELS d7_4_1
0  " nenhuma máquina copiadora"
1  "1  máquina copiadora" 
2  "2  máquinas copiadoras" 
3  "3   máquinas copiadoras" 
4  "4 máquinas copiadoras" 
5  "5  máquinas copiadoras" 
6 "De 6 a 10 máquinas copiadoras" 
7 "Mais de 10  máquinas copiadoras"   .

VARIABLE LABELS
d7_4_1	'd7_4_1 Quantidade de máquinas copiadoras'.
EXECUTE.

RECODE  q7_9_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d7_9_1.
EXECUTE .

VALUE LABELS d7_9_1
0  " nenhum veículo de uso exclusivo" 
1  "1  veículo de uso exclusivo" 
2  "2   veículos de uso exclusivo" 
3  "3  veículos de uso exclusivo" 
4  "4 veículos de uso exclusivo" 
5  "5  veículos de uso exclusivo" 
6 "De 6 a 10 veículos de uso exclusivo" 
7 "Mais de 10  veículos de uso exclusivo"   .

VARIABLE LABELS
d7_9_1	'd7_9_1.Quantidade de veículos de uso exclusivo'.
EXECUTE.

RECODE  q7_10_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d7_10_1.
EXECUTE .

VALUE LABELS d7_10_1
0  " nenhum veículo de uso compartilhado" 
1  "1  veículo de uso compartilhado" 
2  "2   veículos de uso compartilhado" 
3  "3  veículos de uso compartilhado" 
4  "4 veículos de uso compartilhado" 
5  "5  veículos de uso compartilhado" 
6 "De 6 a 10 veículos de uso compartilhado" 
7 "Mais de 10  veículos de uso compartilhado"    .

VARIABLE LABELS
d7_10_1 	'd7_10_1.Quantidade de veículos de uso compartilhado'.
EXECUTE.

***q8****************************** Quantidade de Computadores***********************************************

RECODE  q8_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d8_1.
EXECUTE .

VALUE LABELS d8_1
0  " nenhum computador" 
1  "1 computador" 
2  "2  computadores" 
3  "3   computadores" 
4  "4 computadores" 
5  "5  computadores" 
6 "De 6 a 10 computadores" 
7 "Mais de 10 computadores"   .

VARIABLE LABELS
d8_1	'd8_1.Quantidade de computadores, em perfeito funcionamento'.
EXECUTE.

RECODE  q8_2 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6) (11 thru Highest=7) INTO  d8_2.
EXECUTE .

VALUE LABELS d8_2
0  " nenhum computador" 
1  "1 computador" 
2  "2  computadores" 
3  "3   computadores" 
4  "4 computadores" 
5  "5  computadores" 
6 "De 6 a 10 computadores" 
7 "Mais de 10 computadores"   .

VARIABLE LABELS
d8_2	'd8_2.Quantidade de computadores conectados à internet'.
EXECUTE.



**q14********************************************


RECODE q10_1  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)(71 thru 100=4) (100 thru Highest=5) INTO d10_1.
EXECUTE.

VALUE LABELS d10_1 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d10_1  'd10_1. Total de pessoas atendidas no Posto do Cadastro Unico'.
EXECUTE.

RECODE q10_2  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)(71 thru 100=4) (100 thru Highest=5) INTO d10_2.
EXECUTE.

VALUE LABELS d10_2 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d10_2  'd10_2. Total de pessoas que realizaram entrevista para inclusão cadastral'.
EXECUTE.

RECODE q10_3  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d10_3.
EXECUTE.

VALUE LABELS d10_3 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d10_3  'd10_3. Total de pessoas que realizaram entrevista para atualização cadastral'.
EXECUTE.

**q11**************************************DURAÇÃO MÉDIA DE ESPERA E DE ATENDIMENTOS

RECODE q11_1  (0=1) (1=2) (2 thru 5=3)(6 thru 15=4) (16 thru Highest=5) INTO d11_1.
EXECUTE.

VALUE LABELS d11_1
1"nenhum dia"  
2"1 dia"  
3"Entre 2 e 5 dias" 
4"Entre 6 e 15" 
5"Mais de 15 dias".
EXECUTE.

VARIABLE LABELS  d11_1  'd11_1. Quantos dias entre o agendamento e a realização do atendimento '.
EXECUTE.

RECODE q11_2  (0=1) (1=2) (2 thru 5=3)(6 thru 15=4) (16 thru Highest=5) INTO d11_2.
EXECUTE.

VALUE LABELS d11_2
1"nenhum dia" 
2"1 dia"  
3"Entre 2 e 5 dias" 
4"Entre 6 e 15" 
5"Mais de 15 dias".
EXECUTE.

VARIABLE LABELS  d11_2  'd11_2.Quantos dias após a entrevista, para que os dados coletados em formulário em papel sejam inseridos no sistema'.
EXECUTE.


RECODE q11_3  (0 thru 5=1) (6 thru 15=2) (16 thru 30=3)(31 thru 60=4) (61 thru Highest=5) INTO d11_3.
EXECUTE.

VALUE LABELS d11_3  
1"Em até 5 minutos"  
2"Entre 6 e 15 minutos"  
3"Entre 16 e 30 minutos " 
4"Entre 31 e 60 minutos" 
5"Mais de 60 minutos".
EXECUTE.

VARIABLE LABELS  d11_3  'Quantos minutos Uma entrevista para inclusão cadastral  '.
EXECUTE.

RECODE q11_4  (0 thru 5=1) (6 thru 15=2) (16 thru 30=3)(31 thru 60=4) (61 thru Highest=5) INTO d11_4.
EXECUTE.

VALUE LABELS d11_4 
1"Em até 5 minutos"  
2"Entre 6 e 15 minutos"  
3"Entre 16 e 30 minutos " 
4"Entre 31 e 60 minutos" 
5"Mais de 60 minutos".
EXECUTE.

VARIABLE LABELS  d11_4  'd11_4. Quantos minutos para uma entrevista para atualização cadastral  '.
EXECUTE.




















