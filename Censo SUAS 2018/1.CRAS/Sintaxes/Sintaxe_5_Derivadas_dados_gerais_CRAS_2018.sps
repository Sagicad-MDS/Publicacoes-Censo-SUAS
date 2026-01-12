


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
d_3 'd_3_Total de horas por semana que o CRAS encontra-se em funcionamento'.
EXECUTE.


** q7*********** Quantidade de Salas *******************************************************************

*Salas de atendimento individual ou coletivo*

COMPUTE d_7_atend= q_7_1 + q_7_2 +q_7_3  + q_7_4.
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

COMPUTE d_7_adm_atend= q_7_1 + q_7_2 +q_7_3  + q_7_4+ q_7_5.
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

*** q_7_6*********************Quantidade de banheiros*********************************************************

RECODE q_7_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d_7_6_banheiros.

VALUE LABELS d_7_6_banheiros 
1"Até 1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d_7_6_banheiros 'd_7_6_banheiros.Quantidade total de banheiros'.
EXECUTE.

 

***q11****************************** Quantidade de Computadores***********************************************

RECODE  q_11_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)
(11 thru Highest=11) INTO  d_11_1.
EXECUTE .

VALUE LABELS d_11_1
 0"0" 
1"1" 
2"2" 
3"3" 
4"4" 
5"5" 
10"De 6 a 10" 
11"Mais de 10".

VARIABLE LABELS
d_11_1	'd_11_1.Quantidade de computadores, em perfeito funcionamento, existentes no CRAS'.
EXECUTE.

RECODE  q_11_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)
(11 thru Highest=11) INTO  d_11_2.
EXECUTE .

VALUE LABELS d_11_2
 0'0' 
1'1' 
2'2' 
3'3' 
4'4' 
5'5' 
10'De 6 a 10' 
11'Mais de 10'.

VARIABLE LABELS
d_11_2	'd_11_2.Quantidade de computadores conectados à internet no CRAS'.
EXECUTE.


*q13 ***********************************************************************************************************
** Fazer a mesma coisa pra PAIF que para a equipe volante

RECODE q_13_A1 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_13_A1.

VALUE LABELS d_13_A1 
0"Nenhuma família" 
1"Entre 1 e 20 famílias"  
2"Entre 21 e 40 famílias"  
3"Entre 41 e 70 famílias" 
4"Entre 71 e 100 famílias" 
5"Mais de 100 famílias".
EXECUTE.

VARIABLE LABELS  d_13_A1  'd_13_A1. Total de famílias em acompanhamento pelo PAIF em Agosto 2018'.
EXECUTE.

RECODE q_13_A2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_13_A2.

VALUE LABELS d_13_A2  
0"Nenhuma família" 
1"Entre 1 e 20 famílias"  
2"Entre 21 e 40 famílias"  
3"Entre 41 e 70 famílias" 
4"Entre 71 e 100 famílias" 
5"Mais de 100 famílias".
EXECUTE.

VARIABLE LABELS  d_13_A2  'd_13_A2. Total de novas famílias inseridas no PAIF em Agosto 2018'.
EXECUTE.


**q14********************************************************************************************************************


RECODE q_14_1  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_14_1.

VALUE LABELS d_14_1  
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_14_1  'd_14_1. Total de pessoas regularmente participam atendimentos coletivos realizados pelo PAIF'.
EXECUTE.

**q25*****************************************************************************************************************
****teste

DO IF (q_25_1 < q_25_2 | q_25_1 < q_25_3).
RECODE q_25_1 (ELSE=SYSMIS).
RECODE q_25_2(ELSE=SYSMIS).
RECODE q_25_3 (ELSE=SYSMIS).
RECODE q_25_4 (ELSE=SYSMIS).
END IF.
EXECUTE.


RECODE q_25_1  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_25_1.

VALUE LABELS d_25_1
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE. 

VARIABLE LABELS  d_25_1  'd_25_1. Total de indivíduos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.

***idosos********************************

RECODE q_25_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_25_2.

VALUE LABELS d_25_2  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_25_2  'd_25_2. Total de idosos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.

***pessoas com deficiencia********************************

RECODE q_25_3  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_25_3.

VALUE LABELS d_25_3  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_25_3  'd_25_3. Total de pessoas com deficiencia atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.

***pessoas com deficiencia de 0 a 6 anos de idade*******************************

RECODE q_25_4 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_25_4.

VALUE LABELS d_25_4  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_25_4  'd_25_4. Total de pessoas com deficiencia de 0 a 6 anos de idade atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas no CRAS'.
EXECUTE.


**q27*****************************************************************************************************************

DO IF (q_27_1  < q_27_2 | q_27_1 < q_27_3).
RECODE q_27_1 (ELSE=SYSMIS).
RECODE q_27_2(ELSE=SYSMIS).
RECODE q_27_3 (ELSE=SYSMIS).
RECODE q_27_4 (ELSE=SYSMIS).
END IF.
EXECUTE.





RECODE q_27_1 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_27_1.

VALUE LABELS d_27_1  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_27_1  'd_27_1. Total de indivíduos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.

***idosos********************************

RECODE q_27_2  (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_27_2.

VALUE LABELS d_27_2  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_27_2  'd_27_2. Total de idosos atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.

***pessoas com deficiencia********************************

RECODE q_27_3 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_27_3.

VALUE LABELS d_27_3  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_27_3  'd_27_3. Total de pessoas com deficiencia atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.

***pessoas com deficiencia de 0 a 6 anos de idade*******************************

RECODE q_27_4 (0=0)  (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_27_4.

VALUE LABELS d_27_4  
0"Nenhuma pessoa" 
1"Entre 1 e 20 pessoas"  
2"Entre 21 e 40 pessoas"  
3"Entre 41 e 70 pessoas" 
4"Entre 71 e 100 pessoas" 
5"Mais de 100 pessoas".
EXECUTE.

VARIABLE LABELS  d_27_4  'd_27_4. Total de pessoas com deficiencia de 0 a 6 anos de idade atendidos pelo Serviço de PSB no Domicílio para Pessoas com deficiência e idosas na rede referenciada'.
EXECUTE.


**q34*******equipe volante**************************************************************************************************************


RECODE q_34 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d_34.

VALUE LABELS d_34
0"Nenhuma família" 
1"Entre 1 e 20 famílias"  
2"Entre 21 e 40 famílias"  
3"Entre 41 e 70 famílias" 
4"Entre 71 e 100 famílias" 
5"Mais de 100 famílias".
EXECUTE.

VARIABLE LABELS  d_34  'd_34. Famílias em acompanhamento pelo PAIF nos territorios atendidos pela equipe volante'.
EXECUTE.


***q55****************************************************************************************************************

compute q_55_1_velha = q_55_1. 
execute. 

VARIABLE LABELS  q_55_1_velha  'q_55_1_v12612_Nesta unidade, algum(a) profissional já participou de algum curso do CAPACITASUAS, nos últimos 12 meses? - Quantos?'.
EXECUTE.

DO IF  (q_55=1).
RECODE q_55_1 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru 
    Highest=5) INTO d_55_1.
END IF.

VALUE LABELS d_55_1
0"Nenhuma família" 
1"Entre 1 e 20 famílias"  
2"Entre 21 e 40 famílias"  
3"Entre 41 e 70 famílias" 
4"Entre 71 e 100 famílias" 
5"Mais de 100 famílias".
EXECUTE.

VARIABLE LABELS  d_55_1  'd_55_1. profissionais que participaram do CAPACITASUAS'.
EXECUTE.









