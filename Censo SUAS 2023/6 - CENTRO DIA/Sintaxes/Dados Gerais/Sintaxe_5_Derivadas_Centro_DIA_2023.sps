


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


** d8******** Quantidade de Salas *******************************************************************

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
1"At� 1 sala" 
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
 1"At� 1 sala"  
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
1"At� 1 banheiro" 
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
1"At� 1 banheiro" 
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
1"At� 1 banheiro" 
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



******** QUEST�O 17
***Equipamentos dispon�veis no Centro DIA
****telefone*****

IF  (q17_1 = 1  | q17_2 = 1) d17_telefone=1.
EXECUTE.

VALUE LABELS
d17_telefone  0 "N�o"  1 "Sim".
  
VARIABLE LABELS
d17_telefone  'd17 - Possui Telefone (telefone ou celular)'.
EXECUTE.

****veiculo

IF  (q17_8 = 1  | q17_9 = 1 | q17_10 = 1) d17_veiculo=1.
EXECUTE.

VALUE LABELS
d17_veiculo  0 "N�o"  1 "Sim".

  
VARIABLE LABELS
d17_veiculo	'd17 - Possui Ve�culo (exclusivo, compartilhado ou adaptado)'.
EXECUTE.

RECODE d17_telefone  d17_veiculo (SYSMIS=0).
EXECUTE.




****** Quantidade de telefone***********************************************

RECODE q17_1_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)(8 thru Highest=5) INTO d17_1_1.

VALUE LABELS d17_1_1 
1"At� 1 telefone" 
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
1"At� 1 impressora" 
2"De 2 a 3  impressoras" 
 3"De 4 a 5   impressoras" 
 4"De 6 a 7   impressoras" 
5"8 ou mais   impressoras".
EXECUTE.

VARIABLE LABELS   d17_3_1 ' d17_3_1.Quantidade de impresoras'.
EXECUTE.

****** Quantidade de  veiculo uso exclusivo***********************************************

RECODE q17_8_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)(8 thru Highest=5) INTO d17_8_1.

VALUE LABELS d17_8_1 
1"At� 1  veiculo uso exclusivo" 
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
1"At� 1  veiculo uso compartilhado" 
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
1"At� 1  camas/colchonetes" 
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
 0" nenhum computador" 
1"1 computador" 
2"2 computadores" 
3"3 computadores"  
4"4 computadores"  
5"5 computadores"  
10"De 6 a 10 computadores"  
11"Mais de 10 computadores" .

VARIABLE LABELS  d18_1 'd18_1.Quantidade de computadores, em perfeito funcionamento, existentes n
RECODE  q18_3  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d18_3.
EXECUTE .

VALUE LABELS d18_3
 0" nenhum computador" 
1"1 computador" 
2"2 computadores" 
3"3 computadores"  
4"4 computadores"  
5"5 computadores"  
10"De 6 a 10 computadores"  
11"Mais de 10 computadores" .

VARIABLE LABELS  d18_3  'd18_3.Quantidade de computadores conectados � internet  diponiveis para os usu�rios do Centro Dia'.
EXECUTE.
o Centro Dia'.
EXECUTE.

RECODE  q18_2  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10) (11 thru Highest=11) INTO  d18_2.
EXECUTE .

VALUE LABELS d18_2
 0" nenhum computador" 
1"1 computador" 
2"2 computadores" 
3"3 computadores"  
4"4 computadores"  
5"5 computadores"  
10"De 6 a 10 computadores"  
11"Mais de 10 computadores" .

VARIABLE LABELS  d18_2  'd18_2.Quantidade de computadores conectados � internet no Centro Dia'.
EXECUTE.




*********QUEST�O 22 Capacidade de atendimento usuarios por turno

RECODE q22  (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 50=5)(51 thru 60=6)  (61 thru 70=7) (71 thru 80=8) (81 thru 90=9) (91 thru 100=10) (101 thru 150=11) (151 thru 200=12)(201 thru Highest=13) INTO d22_cap_atend_cat.
EXECUTE.

VALUE LABELS d22_cap_atend_cat
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
d22_cap_atend_cat 'd22_Capacidade de atendimento usuarios por turno'.
EXECUTE.

FORMATS 
d22_cap_atend_cat (F8.0).
Execute.



*********QUEST�O 30 lista de espera

RECODE q30  (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 50=5) (51 thru 60=6)  (61 thru 70=7) (71 thru 80=8) (81 thru 90=9) (91 thru 100=10) (101 thru 150=11) (151 thru 200=12)(201 thru Highest=13) INTO d30_lista_espera.
EXECUTE.

VALUE LABELS d30_lista_espera
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
d30_lista_espera      'd30_quantas pessoas est�o neste momento em lista de espera'.
EXECUTE.

FORMATS 
d30_lista_espera (F8.0).
Execute.


*q31***********************************************************************************************************

RECODE q31_1 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_1.

VALUE LABELS d31_1
0"Nenhuma crian�a de 0 a 6 anos" 
1"Entre 1 e 20 crian�a de 0 a 6 anos"  
2"Entre 21 e 40 crian�a de 0 a 6 anos"  
3"Entre 41 e 70 crian�a de 0 a 6 anos" 
4"Entre 71 e 100 crian�a de 0 a 6 anos" 
5"Mais de 100 crian�a de 0 a 6 anos".
EXECUTE.

VARIABLE LABELS
d31_1  'Crian�as de 0 a 6 anos, com defici�ncia'.
EXECUTE.



RECODE q31_2 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_2.

VALUE LABELS d31_2
0"Nenhuma crian�a e adolescentes de 7 a 14 anos" 
1"Entre 1 e 20 crian�a e adolescentes de 7 a 14 anos"  
2"Entre 21 e 40 crian�a e adolescentes de 7 a 14 anos"  
3"Entre 41 e 70 crian�a e adolescentes de 7 a 14 anos" 
4"Entre 71 e 100 crian�a e adolescentes de 7 a 14 anos" 
5"Mais de 100 crian�a e adolescentes de 7 a 14 anos".
EXECUTE.

VARIABLE LABELS
d31_2  'Crian�as e adolescentes de 7 a 14 anos, com defici�ncia'.
EXECUTE.



RECODE q31_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_3.

VALUE LABELS d31_3
0"Nenhum adolescente de 15 a 17 anos" 
1"Entre 1 e 20 adolescentes de 15 a 17 anos"  
2"Entre 21 e 40 adolescentes de 15 a 17 anos"  
3"Entre 41 e 70 adolescentes de 15 a 17 anos" 
4"Entre 71 e 100 adolescentes de 15 a 17 anos" 
5"Mais de 100 adolescentes de 15 a 17 anos".
EXECUTE.

VARIABLE LABELS
d31_3  'Adolescentes de 15 a 17 anos, com defici�ncia'.
EXECUTE.

RECODE q31_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_4.

VALUE LABELS d31_4
0"Nenhum jovens e adulto (18 a 59 anos) " 
1"Entre 1 e 20 jovens e adulto (18 a 59 anos)"  
2"Entre 21 e 40 jovens e adulto (18 a 59 anos)"  
3"Entre 41 e 70 jovens e adulto (18 a 59 anos)" 
4"Entre 71 e 100 jovens e adulto (18 a 59 anos)" 
5"Mais de 100 jovens e adulto (18 a 59 anos)".
EXECUTE.

VARIABLE LABELS
d31_4  'Jovens e adulto (18 a 59 anos) com defici�ncia'.
EXECUTE.

RECODE q31_5  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_5.

VALUE LABELS d31_5
0"Nenhum idoso (60 a 79 anos) " 
1"Entre 1 e 20 idosos (60 a 79 anos)"  
2"Entre 21 e 40  idosos (60 a 79 anos)"  
3"Entre 41 e 70  idosos (60 a 79 anos)" 
4"Entre 71 e 100  idosos (60 a 79 anos)" 
5"Mais de 100 idosos (60 a 79 anos)".
EXECUTE.

VARIABLE LABELS
d31_5  ' Idosas (os) de 60 a 79 anos com defici�ncia'.
EXECUTE.


RECODE q31_6  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_6.

VALUE LABELS d31_6
0"Nenhum idoso (80 anos  ou mais) " 
1"Entre 1 e 20 idosos (80 anos  ou mais)"  
2"Entre 21 e 40  idosos (80 anos  ou mais)"  
3"Entre 41 e 70  idosos (80 anos  ou mais)" 
4"Entre 71 e 100  idosos (80 anos  ou mais)" 
5"Mais de 100 idosos (80 anos  ou mais)".
EXECUTE.

VARIABLE LABELS
d31_6  ' Idosas(os) com 80 anos ou mais, com defici�ncia'.
EXECUTE.



RECODE q31_7  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_7.

VALUE LABELS d31_7
0"Nenhum idoso (60 a 79 anos) " 
1"Entre 1 e 20 idosos (60 a 79 anos)"  
2"Entre 21 e 40  idosos (60 a 79 anos)"  
3"Entre 41 e 70  idosos (60 a 79 anos)" 
4"Entre 71 e 100  idosos (60 a 79 anos)" 
5"Mais de 100 idosos (60 a 79 anos)".
EXECUTE.

VARIABLE LABELS
d31_7  'Idosas (os) com 60 a 79 anos, dependentes pela idade, sem defici�ncia'.
EXECUTE.



RECODE q31_8  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_8.

VALUE LABELS d31_8
0"Nenhum idoso (80 anos  ou mais) " 
1"Entre 1 e 20 idosos (80 anos  ou mais)"  
2"Entre 21 e 40  idosos (80 anos  ou mais)"  
3"Entre 41 e 70  idosos (80 anos  ou mais)" 
4"Entre 71 e 100  idosos (80 anos  ou mais)" 
5"Mais de 100 idosos (80 anos  ou mais)".
EXECUTE.

VARIABLE LABELS
d31_8  ' Idosas(os) com 80 anos ou mais, dependentes pela idade, sem defici�ncia'.
EXECUTE.


RECODE q31_9  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d31_9_total.

VALUE LABELS d31_9_total
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d31_9_total  'Total de pessoas atendidas no Servi�o no m�s de agosto de 2023'.
EXECUTE.

****q32*****************************************************************


RECODE q32_1   (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d32_1.

VALUE LABELS d32_1
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d32_1  'Total de pessoas atendidas com Defici�ncia f�sica'.
EXECUTE.



RECODE q32_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d32_2.

VALUE LABELS d32_2
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d32_2  'Total de pessoas atendidas com Defici�ncia visual'.
EXECUTE.


RECODE q32_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d32_3.

VALUE LABELS d32_3
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d32_3  'Total de pessoas atendidas com Defici�ncia auditiva'.
EXECUTE.


RECODE q32_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d32_4.

VALUE LABELS d32_4
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d32_4  'Total de pessoas atendidas com Defici�ncia intelectual'.
EXECUTE.


RECODE q32_5  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d32_5.

VALUE LABELS d32_5
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d32_5  'Total de pessoas atendidas com Defici�ncia mental'.
EXECUTE.

RECODE q32_6  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d32_6.

VALUE LABELS d32_6
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d32_6  'Total de pessoas atendidas com Autismo'.
EXECUTE.

RECODE q32_7  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d32_7.

VALUE LABELS d32_7
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d32_7  'Total de pessoas atendidas com Microcefalia decorrente de Zika'.
EXECUTE.


***q33*************************************************************************************************************

RECODE q33_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d33_1.

VALUE LABELS d33_1
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d33_1  'Total de pessoas atendidas Idosas(os) benefici�rias(os) do BPC'.
EXECUTE.

RECODE q33_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d33_2.

VALUE LABELS d33_2
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d33_2  'Total de pessoas atendidas com Defici�ncia benefici�rias do BPC'.
EXECUTE.


RECODE q33_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d33_3.

VALUE LABELS d33_3
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d33_3  'Total de pessoas atendidas que recebem pens�o/aposentadoria'.
EXECUTE.



RECODE q33_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d33_4.

VALUE LABELS d33_4
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d33_4  'Total de pessoas atendidas que recebem a Pens�o Especial por Microcefalia'.
EXECUTE.



****q34


RECODE q34_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d34_1.

VALUE LABELS d34_1
0"Nenhum usu�rio " 
1"Entre 1 e 20  usu�rios"  
2"Entre 21 e 40   usu�rios"  
3"Entre 41 e 70  usu�rios" 
4"Entre 71 e 100  usu�rios" 
5"Mais de 100  usu�rios".
EXECUTE.

VARIABLE LABELS
d34_1 'Total de usuarios que ficam na unidade em tempo integral'.
EXECUTE.


RECODE q34_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d34_2.

VALUE LABELS d34_2
0"Nenhum usu�rio " 
1"Entre 1 e 20  usu�rios"  
2"Entre 21 e 40   usu�rios"  
3"Entre 41 e 70  usu�rios" 
4"Entre 71 e 100  usu�rios" 
5"Mais de 100  usu�rios".
EXECUTE.

VARIABLE LABELS
d34_2 'Total de usuarios que ficam na unidade em meio per�odo'.
EXECUTE.


RECODE q34_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d34_3.

VALUE LABELS d34_3
0"Nenhum usu�rio " 
1"Entre 1 e 20  usu�rios"  
2"Entre 21 e 40   usu�rios"  
3"Entre 41 e 70  usu�rios" 
4"Entre 71 e 100  usu�rios" 
5"Mais de 100  usu�rios".
EXECUTE.

VARIABLE LABELS
d34_3 'Total de usu�rios que ficam na unidade em menos do que meio per�odo'.
EXECUTE.


