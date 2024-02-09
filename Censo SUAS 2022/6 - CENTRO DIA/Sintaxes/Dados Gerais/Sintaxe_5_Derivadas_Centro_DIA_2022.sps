* Encoding: UTF-8.



DATASET ACTIVATE DataSet1.

**q3*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q3_1 * q3_2 < 30) d_3=0.
IF (q3_1 * q3_2  >= 30) & (q3_1 * q3_2   < 40) d_3 = 1 .
IF (q3_1 * q3_2  >= 40) & (q3_1 * q3_2   < 50) d_3 = 2 .
IF (q3_1 * q3_2 > 49) d_3 = 3 .
EXECUTE.

VALUE LABELS   d_3  
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 49 horas/semana".

 VARIABLE LABELS
d_3 'd_3_Total de horas por semana que o Centro Dia encontra-se em funcionamento'.
EXECUTE.


** d14********* Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*


COMPUTE  d14_atend=SUM(q14_1, q14_2, q14_3, q14_4).
EXECUTE.


VARIABLE LABELS
d14_atend  'd14_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d14_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d14_atend_categoria.

VARIABLE LABELS
d14_atend_categoria 'd14_atend_categoria.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS d14_atend_categoria
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades administrativas*

COMPUTE d14_adm_atend= SUM(q14_1, q14_2, q14_3, q14_4, q14_5).
EXECUTE.

VARIABLE LABELS
d14_adm_atend 'd14_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d14_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d14_adm_atend_categoria.

VALUE LABELS d14_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d14_adm_atend_categoria 'd14_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

*** d14******************Quantidade de banheiros*********************************************************


COMPUTE d14_total_banheiros= SUM(q14_6, q14_7).
EXECUTE.

VARIABLE LABELS
d14_total_banheiros 'd14_total_banheiros'.
EXECUTE.

FORMATS 
d14_total_banheiros (F8.0).
Execute.


RECODE d14_total_banheiros (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d14_total_banheiro_cat.

VALUE LABELS d14_total_banheiro_cat 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d14_total_banheiro_cat  'd14_total_banheiro_cat.Quantidade total de banheiros'.
EXECUTE.

FORMATS 
d14_total_banheiro_cat (F8.0).
Execute.

***banheiro trabalhadores

RECODE q14_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d14_6_banheiro_trab.

VALUE LABELS d14_6_banheiro_trab 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d14_6_banheiro_trab 'd14_6_banheiro_trab.Quantidade total de banheiros para trabalhadores da Unidade'.
EXECUTE.

FORMATS 
d14_6_banheiro_trab (F8.0).
Execute.

***banheiro usuarios

RECODE q14_7 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d14_7_banheiro_usu.

VALUE LABELS d14_7_banheiro_usu 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d14_7_banheiro_usu 'd14_7_banheiro_usu.Quantidade total de banheiros para usuarios'.
EXECUTE.

FORMATS 
d14_7_banheiro_usu (F8.0).
Execute.




****** Quantidade de telefone***********************************************

RECODE q17_1_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)(8 thru Highest=5) INTO d17_1_1.

VALUE LABELS d17_1_1 
1"Até 1 telefone" 
2"De 2 a 3 telefones" 
 3"De 4 a 5  telefones" 
 4"De 6 a 7  telefones" 
5"8 ou mais  telefones".
EXECUTE.

VARIABLE LABELS   d17_1_1 ' d17_1_1.Quantidade de telefones'.
EXECUTE.



****** Quantidade de  impressora***********************************************

RECODE q17_3_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)(8 thru Highest=5) INTO d17_3_1.

VALUE LABELS d17_3_1 
1"Até 1 impressora" 
2"De 2 a 3  impressoras" 
 3"De 4 a 5   impressoras" 
 4"De 6 a 7   impressoras" 
5"8 ou mais   impressoras".
EXECUTE.

VARIABLE LABELS   d17_3_1 ' d17_3_1.Quantidade de impressoras'.
EXECUTE.

****** Quantidade de  veiculo uso exclusivo***********************************************

RECODE q17_8_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)(8 thru Highest=5) INTO d17_8_1.

VALUE LABELS d17_8_1 
1"Até 1  veiculo uso exclusivo" 
2"De 2 a 3   veiculos uso exclusivo"
 3"De 4 a 5   veiculos uso exclusivo" 
 4"De 6 a 7   veiculos uso exclusivo" 
5"8 ou mais   veiculos uso exclusivo".
EXECUTE.

VARIABLE LABELS   d17_8_1 ' d17_8_1.Quantidade de veiculos uso exclusivo'.
EXECUTE.

****** Quantidade de  veiculo uso compartilhado***********************************************

RECODE q17_9_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)(8 thru Highest=5) INTO d17_9_1.

VALUE LABELS d17_9_1 
1"Até 1  veiculo uso compartilhado" 
2"De 2 a 3   veiculos uso compartilhado"
 3"De 4 a 5   veiculos uso compartilhado" 
 4"De 6 a 7   veiculos uso compartilhado" 
5"8 ou mais   veiculos uso compartilhado".
EXECUTE.

VARIABLE LABELS   d17_9_1 ' d17_9_1.Quantidade de veiculos uso compartilhado'.
EXECUTE.

****** Quantidade de camas***********************************************

RECODE q17_24_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)(8 thru Highest=5) INTO d17_24_1.

VALUE LABELS d17_24_1 
1"Até 1  camas/colchonetes" 
2"De 2 a 3   camas/colchonetes"
 3"De 4 a 5   camas/colchonetes" 
 4"De 6 a 7   camas/colchonetes" 
5"8 ou mais  camas/colchonetes".
EXECUTE.

VARIABLE LABELS   d17_24_1 ' d17_24_1.Quantidade de camas/colchonetes'.
EXECUTE.

***q18****************************** Quantidade de Computadores***********************************************

RECODE  q18_1 (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d18_1.
EXECUTE .

VALUE LABELS d18_1
 0"nenhum computador" 
1"1 computador"  
2"2 computadores" 
3"3 computadores" 
4"4 computadores" 
5"5 computadores" 
10"De 6 a 10 computadores"  
11"Mais de 10computadores" .

VARIABLE LABELS  d18_1 'd18_1.Quantidade de computadores, em perfeito funcionamento, existentes no Centro Dia'.
EXECUTE.

RECODE  q18_2  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d18_2.
EXECUTE .

VALUE LABELS d18_2
  0"nenhum computador" 
1"1 computador"  
2"2 computadores" 
3"3 computadores" 
4"4 computadores" 
5"5 computadores" 
10"De 6 a 10 computadores"  
11"Mais de 10computadores" .


VARIABLE LABELS  d18_2  'd18_2.Quantidade de computadores conectados � internet no Centro Dia'.
EXECUTE.


RECODE  q18_3  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d18_3.
EXECUTE .

VALUE LABELS d18_3
 0"nenhum computador" 
1"1 computador"  
2"2 computadores" 
3"3 computadores" 
4"4 computadores" 
5"5 computadores" 
10"De 6 a 10 computadores"  
11"Mais de 10computadores" .


VARIABLE LABELS  d18_3  'd18_3.Quantidade de computadores conectados � internet  diponiveis para os usuários do Centro Dia'.
EXECUTE.






*********QUEST�O 25- Capacidade de atendimento usuarios por turno

RECODE q25  (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 50=5)
(51 thru 60=6)  (61 thru 70=7) (71 thru 80=8) (81 thru 90=9) (91 thru 100=10) (101 thru 150=11) (151 thru 200=12)
(201 thru Highest=13) INTO d25_cap_atend_cat.
EXECUTE.

VALUE LABELS d25_cap_atend_cat
 0"Nenhuma pessoa" 
1"De 1 a 10 pessoas" 
 2"De 11 a 20 pessoas"  
3"De 21 a 30 pessoas"
4"De 31 a 40 pessoas" 
5"De 41 a 50 pessoas"
 6"De 51 a 60 pessoas" 
7"De 61 a 70 pessoas"
8"De 71 a 80 pessoas"
 9"De 81 a 90 pessoas" 
10"De 91 a 100 pessoas" 
11"De 101 a 150 pessoas"
12"De 151 a 200 pessoas" 
13"De 201 ou mais pessoas" .
EXECUTE.

VARIABLE LABELS
d25_cap_atend_cat 'd25_Capacidade de atendimento usuarios por turno'.
EXECUTE.

FORMATS 
d25_cap_atend_cat (F8.0).
Execute.




*q35***********************************************************************************************************

RECODE q35_1 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d35_1.

VALUE LABELS d35_1
0"Nenhuma crian�a de 0 a 6 anos" 
1"Entre 1 e 20 crian�a de 0 a 6 anos"  
2"Entre 21 e 40 crian�a de 0 a 6 anos"  
3"Entre 41 e 70 crian�a de 0 a 6 anos" 
4"Entre 71 e 100 crian�a de 0 a 6 anos" 
5"Mais de 100 crian�a de 0 a 6 anos".
EXECUTE.

VARIABLE LABELS
d35_1  'Crianças de 0 a 6 anos, com defici�ncia'.
EXECUTE.



RECODE q35_2 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d35_2.

VALUE LABELS d35_2
0"Nenhuma crian�a e adolescentes de 7 a 14 anos" 
1"Entre 1 e 20 crian�a e adolescentes de 7 a 14 anos"  
2"Entre 21 e 40 crian�a e adolescentes de 7 a 14 anos"  
3"Entre 41 e 70 crian�a e adolescentes de 7 a 14 anos" 
4"Entre 71 e 100 crian�a e adolescentes de 7 a 14 anos" 
5"Mais de 100 crian�a e adolescentes de 7 a 14 anos".
EXECUTE.

VARIABLE LABELS
d35_2  'Crian�as e adolescentes de 7 a 14 anos, com defici�ncia'.
EXECUTE.



RECODE q35_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d35_3.

VALUE LABELS d35_3
0"Nenhum adolescente de 15 a 17 anos" 
1"Entre 1 e 20 adolescentes de 15 a 17 anos"  
2"Entre 21 e 40 adolescentes de 15 a 17 anos"  
3"Entre 41 e 70 adolescentes de 15 a 17 anos" 
4"Entre 71 e 100 adolescentes de 15 a 17 anos" 
5"Mais de 100 adolescentes de 15 a 17 anos".
EXECUTE.

VARIABLE LABELS
d35_3  'Adolescentes de 15 a 17 anos, com defici�ncia'.
EXECUTE.

RECODE q35_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d35_4.

VALUE LABELS d35_4
0"Nenhum jovens e adulto (18 a 59 anos) " 
1"Entre 1 e 20 jovens e adulto (18 a 59 anos)"  
2"Entre 21 e 40 jovens e adulto (18 a 59 anos)"  
3"Entre 41 e 70 jovens e adulto (18 a 59 anos)" 
4"Entre 71 e 100 jovens e adulto (18 a 59 anos)" 
5"Mais de 100 jovens e adulto (18 a 59 anos)".
EXECUTE.

VARIABLE LABELS
d35_4  'Jovens e adulto (18 a 59 anos) com defici�ncia'.
EXECUTE.

RECODE q35_5  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d35_5.

VALUE LABELS d35_5
0"Nenhum idoso (60 anos ou mais) " 
1"Entre 1 e 20 idosos (60 anos ou mais)"  
2"Entre 21 e 40  idosos (60 anos ou mais)"  
3"Entre 41 e 70  idosos (60 anos ou mais)" 
4"Entre 71 e 100  idosos (60 anos ou mais)" 
5"Mais de 100 idosos (60 anos ou mais)".
EXECUTE.

VARIABLE LABELS
d35_5  'Idosas(os) (60 anos ou mais) com defici�ncia'.
EXECUTE.

RECODE q35_6  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d35_6.

VALUE LABELS d35_6
0"Nenhum idoso (60 anos ou mais) " 
1"Entre 1 e 20 idosos (60 anos ou mais)"  
2"Entre 21 e 40  idosos (60 anos ou mais)"  
3"Entre 41 e 70  idosos (60 anos ou mais)" 
4"Entre 71 e 100  idosos (60 anos ou mais)" 
5"Mais de 100 idosos (60 anos ou mais)".
EXECUTE.

VARIABLE LABELS
d35_6  'Idosas(os) (60 anos ou mais) dependentes pela idade, sem deficiência'.
EXECUTE.


RECODE q35_7  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d35_7_total.

VALUE LABELS d35_7_total
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d35_7_total  'Total de pessoas atendidas no Servi�o no  m�s de agosto de 2020'.
EXECUTE.

****q36*****************************************************************


RECODE q36_1   (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_1.

VALUE LABELS d36_1
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d36_1  'Total de pessoas atendidas com Deficiência física'.
EXECUTE.



RECODE q36_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_2.

VALUE LABELS d36_2
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d36_2  'Total de pessoas atendidas com Deficiência visual'.
EXECUTE.


RECODE q36_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_3.

VALUE LABELS d36_3
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d36_3  'Total de pessoas atendidas com Defici�ncia auditiva'.
EXECUTE.


RECODE q36_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_4.

VALUE LABELS d36_4
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d36_4  'Total de pessoas atendidas com Defici�ncia intelectual'.
EXECUTE.


RECODE q36_5  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_5.

VALUE LABELS d36_5
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d36_5  'Total de pessoas atendidas com Deficiência mental'.
EXECUTE.

RECODE q36_6  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_6.

VALUE LABELS d36_6
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d36_6  'Total de pessoas atendidas com Autismo'.
EXECUTE.

RECODE q36_7  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d36_7.

VALUE LABELS d36_7
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d36_7  'Total de pessoas atendidas com Microcefalia decorrente de Zika'.
EXECUTE.


***q37**************************************************************************************************************

RECODE q37_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d37_1.

VALUE LABELS d37_1
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d37_1  'Total de pessoas atendidas Idosas(os) benefici�rias(os) do BPC'.
EXECUTE.

RECODE q37_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d37_2.

VALUE LABELS d37_2
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d37_2  'Total de pessoas atendidas com Deficiência beneficiárias do BPC'.
EXECUTE.


RECODE q37_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d37_3.

VALUE LABELS d37_3
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d37_3  'Total de pessoas atendidas que recebem pensão/aposentadoria'.
EXECUTE.


RECODE q37_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d37_4.

VALUE LABELS d37_4
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d37_4  'Total de pessoas atendidas com fam�lias beneficiárias do PBF'.
EXECUTE.


RECODE q37_5  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d37_5.

VALUE LABELS d37_5
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d37_5  'Total de pessoas atendidas que recebem a Pensão Especial por Microcefalia'.
EXECUTE.



****q38


RECODE q38_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d38_1.

VALUE LABELS d38_1
0"Nenhum usuário " 
1"Entre 1 e 20  usuários"  
2"Entre 21 e 40   usuários"  
3"Entre 41 e 70  usuários" 
4"Entre 71 e 100  usuários" 
5"Mais de 100  usuários".
EXECUTE.

VARIABLE LABELS
d38_1 'Total de usuarios que ficam na unidade em tempo integral'.
EXECUTE.


RECODE q38_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d38_2.

VALUE LABELS d38_2
0"Nenhum usuário " 
1"Entre 1 e 20  usuários"  
2"Entre 21 e 40   usuários"  
3"Entre 41 e 70  usuários" 
4"Entre 71 e 100  usuários" 
5"Mais de 100  usuários".
EXECUTE.

VARIABLE LABELS
d38_2 'Total de usuarios que ficam na unidade em meio per�odo'.
EXECUTE.


RECODE q38_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d38_3.

VALUE LABELS d38_3
0"Nenhum usuário " 
1"Entre 1 e 20  usuários"  
2"Entre 21 e 40   usuários"  
3"Entre 41 e 70  usuários" 
4"Entre 71 e 100  usuários" 
5"Mais de 100  usuários".
EXECUTE.

VARIABLE LABELS
d38_3 'Total de usuarios que ficam na unidade em periodo menor do que meio per�odo'.
EXECUTE.




**q43*************************************************************************************************


RECODE q43 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d43.

VALUE LABELS d43
0"Nenhum profissional" 
1"Entre 1 e 20  profissionais"  
2"Entre 21 e 40    profissionais"  
3"Entre 41 e 70   profissionais" 
4"Entre 71 e 100   profissionais" 
5"Mais de 100   profissionais".
EXECUTE.

VARIABLE LABELS
d43   'Quantos profissionais participaram de curso sobre o Serviços de PSE para Pessoas com Defici�ncia, Idosas e suas fam�lias?'.
EXECUTE.








