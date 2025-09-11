


DATASET ACTIVATE DataSet1.

**q3*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q_3_1 * q_3_2 < 30) d_3=0.
IF (q_3_1 * q_3_2  >= 30) & (q_3_1 * q_3_2   < 40) d_3 = 1 .
IF (q_3_1 * q_3_2  >= 40) & (q_3_1 * q_3_2   < 50) d_3 = 2 .
IF (q_3_1 * q_3_2 > 49) d_3 = 3 .
EXECUTE.

VALUE LABELS   d_3  
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 49 horas/semana".

 VARIABLE LABELS
d_3 'd_3_Total de horas por semana que o Centro Dia encontra-se em funcionamento'.
EXECUTE.


** q7*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*


COMPUTE  d_18_atend=SUM(q_18_1, q_18_2, q_18_3, q_18_4).
EXECUTE.


VARIABLE LABELS
d_18_atend  'd_18_atend.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d_18_atend  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d_18_atend_categoria.

VARIABLE LABELS
d_18_atend_categoria 'd_18_atend_categoria.Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS d_18_atend_categoria
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades administrativas*

COMPUTE d_18_adm_atend= SUM(q_18_1, q_18_2, q_18_3, q_18_4, q_18_5).
EXECUTE.

VARIABLE LABELS
d_18_adm_atend 'd_18_adm_atend.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d_18_adm_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d_18_adm_atend_categoria.

VALUE LABELS d_18_adm_atend_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d_18_adm_atend_categoria 'd_18_adm_atend_categoria.Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

*** q_18_6*********************Quantidade de banheiros*********************************************************


COMPUTE d18_total_banheiros= SUM(q_18_6, q_18_7).
EXECUTE.

VARIABLE LABELS
d18_total_banheiros 'd18_total_banheiros'.
EXECUTE.

FORMATS 
d18_total_banheiros (F8.0).
Execute.


RECODE d18_total_banheiros (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d18_total_banheiro_cat.

VALUE LABELS d18_total_banheiro_cat 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d18_total_banheiro_cat  'd18_total_banheiro_cat.Quantidade total de banheiros'.
EXECUTE.

FORMATS 
d18_total_banheiro_cat (F8.0).
Execute.

***banheiro trabalhadores

RECODE q_18_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d_18_6_banheiro_trab.

VALUE LABELS d_18_6_banheiro_trab 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_18_6_banheiro_trab 'd_18_6_banheiro_trab.Quantidade total de banheiros para trabalhadores da Unidade'.
EXECUTE.

FORMATS 
d_18_6_banheiro_trab (F8.0).
Execute.

***banheiro usuarios

RECODE q_18_7 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d_18_7_banheiro_usu.

VALUE LABELS d_18_7_banheiro_usu 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_18_7_banheiro_usu 'd_18_7_banheiro_usu.Quantidade total de banheiros para usuarios'.
EXECUTE.

FORMATS 
d_18_7_banheiro_usu (F8.0).
Execute.



******** QUESTÃO 21
***Equipamentos disponíveis no Centro DIA
****telefone*****

IF  (q_21_1 = 1  | q_21_2 = 1) d21_telefone=1.
EXECUTE.

VALUE LABELS
d21_telefone  0 "Não"  1 "Sim".
  
VARIABLE LABELS
d21_telefone  'd21 - Possui Telefone (telefone ou celular)'.
EXECUTE.

****veiculo

IF  (q_21_8 = 1  | q_21_9 = 1 | q_21_10 = 1) d21_veiculo=1.
EXECUTE.

VALUE LABELS
d21_veiculo  0 "Não"  1 "Sim".

  
VARIABLE LABELS
d21_veiculo	'd21 - Possui Veículo (exclusivo, compartilhado ou adaptado)'.
EXECUTE.

RECODE d21_telefone  d21_veiculo (SYSMIS=0).
EXECUTE.



*********QUESTÃO 29 - Capacidade de atendimento

RECODE q_29  (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 50=5)
(51 thru 60=6)  (61 thru 70=7) (71 thru 80=8) (81 thru 90=9) (91 thru 100=10) (101 thru 150=11) (151 thru 200=12)
(201 thru Highest=13) INTO d29_cap_atend_cat.
EXECUTE.

VALUE LABELS d29_cap_atend_cat
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
d29_cap_atend_cat 'd29_Capacidade de atendimento por categoria'.
EXECUTE.

FORMATS 
d29_cap_atend_cat (F8.0).
Execute.




*q32 ***********************************************************************************************************

RECODE q_32_1 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_32_1.

VALUE LABELS d_32_1
0"Nenhuma criança de 0 a 6 anos" 
1"Entre 1 e 20 criança de 0 a 6 anos"  
2"Entre 21 e 40 criança de 0 a 6 anos"  
3"Entre 41 e 70 criança de 0 a 6 anos" 
4"Entre 71 e 100 criança de 0 a 6 anos" 
5"Mais de 100 criança de 0 a 6 anos".
EXECUTE.

VARIABLE LABELS
d_32_1  'Crianças de 0 a 6 anos, com deficiência'.
EXECUTE.



RECODE q_32_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_32_2.

VALUE LABELS d_32_2
0"Nenhuma criança e adolescentes de 7 a 14 anos" 
1"Entre 1 e 20 criança e adolescentes de 7 a 14 anos"  
2"Entre 21 e 40 criança e adolescentes de 7 a 14 anos"  
3"Entre 41 e 70 criança e adolescentes de 7 a 14 anos" 
4"Entre 71 e 100 criança e adolescentes de 7 a 14 anos" 
5"Mais de 100 criança e adolescentes de 7 a 14 anos".
EXECUTE.

VARIABLE LABELS
d_32_2  'Crianças e adolescentes de 7 a 14 anos, com deficiência'.
EXECUTE.



RECODE q_32_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_32_3.

VALUE LABELS d_32_3
0"Nenhum adolescente de 15 a 17 anos" 
1"Entre 1 e 20 adolescentes de 15 a 17 anos"  
2"Entre 21 e 40 adolescentes de 15 a 17 anos"  
3"Entre 41 e 70 adolescentes de 15 a 17 anos" 
4"Entre 71 e 100 adolescentes de 15 a 17 anos" 
5"Mais de 100 adolescentes de 15 a 17 anos".
EXECUTE.

VARIABLE LABELS
d_32_3  'Adolescentes de 15 a 17 anos, com deficiência'.
EXECUTE.

RECODE q_32_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_32_4.

VALUE LABELS d_32_4
0"Nenhum jovens e adulto (18 a 59 anos) " 
1"Entre 1 e 20 jovens e adulto (18 a 59 anos)"  
2"Entre 21 e 40 jovens e adulto (18 a 59 anos)"  
3"Entre 41 e 70 jovens e adulto (18 a 59 anos)" 
4"Entre 71 e 100 jovens e adulto (18 a 59 anos)" 
5"Mais de 100 jovens e adulto (18 a 59 anos)".
EXECUTE.

VARIABLE LABELS
d_32_4  'Jovens e adulto (18 a 59 anos) com deficiência'.
EXECUTE.

RECODE q_32_5  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_32_5.

VALUE LABELS d_32_5
0"Nenhum idoso (60 anos ou mais) " 
1"Entre 1 e 20 idosos (60 anos ou mais)"  
2"Entre 21 e 40  idosos (60 anos ou mais)"  
3"Entre 41 e 70  idosos (60 anos ou mais)" 
4"Entre 71 e 100  idosos (60 anos ou mais)" 
5"Mais de 100 idosos (60 anos ou mais)".
EXECUTE.

VARIABLE LABELS
d_32_5  'Idosas(os) (60 anos ou mais) com deficiência'.
EXECUTE.

RECODE q_32_6  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_32_6.

VALUE LABELS d_32_6
0"Nenhum idoso (60 anos ou mais) " 
1"Entre 1 e 20 idosos (60 anos ou mais)"  
2"Entre 21 e 40  idosos (60 anos ou mais)"  
3"Entre 41 e 70  idosos (60 anos ou mais)" 
4"Entre 71 e 100  idosos (60 anos ou mais)" 
5"Mais de 100 idosos (60 anos ou mais)".
EXECUTE.

VARIABLE LABELS
d_32_6  'Idosas(os) (60 anos ou mais) dependentes pela idade, sem deficiência'.
EXECUTE.

RECODE q_32_7_total  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_32_7_total.

VALUE LABELS d_32_7_total
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_32_7_total  'Total de pessoas atendidas no Serviço no  mês de agosto de 2018'.
EXECUTE.

****q33******************************************************************


RECODE q_33_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_33_1.

VALUE LABELS d_33_1
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_33_1  'Total de pessoas atendidas com Deficiência física'.
EXECUTE.



RECODE q_33_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_33_2.

VALUE LABELS d_33_2
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_33_2  'Total de pessoas atendidas com Deficiência visual'.
EXECUTE.


RECODE q_33_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_33_3.

VALUE LABELS d_33_3
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_33_3  'Total de pessoas atendidas com Deficiência auditiva'.
EXECUTE.


RECODE q_33_4  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_33_4.

VALUE LABELS d_33_4
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_33_4  'Total de pessoas atendidas com Deficiência intelectual'.
EXECUTE.


RECODE q_33_5  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_33_5.

VALUE LABELS d_33_5
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_33_5  'Total de pessoas atendidas com Deficiência mental'.
EXECUTE.

RECODE q_33_6  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_33_6.

VALUE LABELS d_33_6
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_33_6  'Total de pessoas atendidas com Autismo'.
EXECUTE.

RECODE q_33_7  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_33_7.

VALUE LABELS d_33_7
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_33_7  'Total de pessoas atendidas com Microcefalia decorrente de Zika'.
EXECUTE.


***q34***************************************************************************************************************

RECODE q_34_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_34_1.

VALUE LABELS d_34_1
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_34_1  'Total de pessoas atendidas Idosas(os) beneficiárias(os) do BPC'.
EXECUTE.

RECODE q_34_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_34_2.

VALUE LABELS d_34_2
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_34_2  'Total de pessoas atendidas com Deficiência beneficiárias do BPC'.
EXECUTE.


***q35***************************************************************************************************

RECODE q_35  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_35.

VALUE LABELS d_35
0"Nenhuma  pessoas atendidas " 
1"Entre 1 e 20  pessoas atendidas"  
2"Entre 21 e 40   pessoas atendidas"  
3"Entre 41 e 70  pessoas atendidas" 
4"Entre 71 e 100  pessoas atendidas" 
5"Mais de 100  pessoas atendidas".
EXECUTE.

VARIABLE LABELS
d_35   'Total de pessoas atendidas beneficiárias do PBF'.
EXECUTE.




**q38*************************************************************************************************


RECODE q_38_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_38_1.

VALUE LABELS d_38_1
0"Nenhum profissional" 
1"Entre 1 e 20  profissionais"  
2"Entre 21 e 40    profissionais"  
3"Entre 41 e 70   profissionais" 
4"Entre 71 e 100   profissionais" 
5"Mais de 100   profissionais".
EXECUTE.

VARIABLE LABELS
d_38_1   'Quantos profissionais já participaram de algum curso do CAPACITASUAS?'.
EXECUTE.







