
*****Variável q35


RECODE q35 (ELSE=Copy) INTO q35_velha.
VARIABLE LABELS  q35_velha 'Variável Original_q35_Por quanto tempo, em média, o usuário é '+
    'acompanhado após seu desligamento?'.
EXECUTE.


DO IF (q34_1 = 0 &  q34_2 = 0 & q34_3 = 0 & q34_99 = 0).
RECODE q35 (ELSE=SYSMIS).
END IF.
EXECUTE.



******Questão 36 - Opções "Não tem nenhuma articulação" e "Serviço ou instituição não existente no Município".

**Backup das variáveis originais


RECODE q36_1_0 q36_1_9 q36_2_0 q36_2_9 q36_3_0 q36_3_9 q36_4_0 q36_4_9 q36_5_0 q36_5_9 q36_6_0 
    q36_6_9 (ELSE=Copy) INTO q36_1_0_velha q_36_1_9_velha q36_2_0_velha q36_2_9_velha q36_3_0_velha 
    q36_3_9_velha q36_4_0_velha q36_4_9_velha q36_5_0_velha q36_5_9_velha q36_6_0_velha q36_6_9_velha.
EXECUTE.


** q36_1

IF (q36_1_1 = 1 |  q36_1_2 = 1 | q36_1_3 = 1 | q36_1_4=1 | q36_1_5 = 1 | q36_1_6 = 1 | q36_1_7 = 1 | q36_1_8 = 1) q36_1_9 =0.
EXECUTE.


IF (q36_1_1 = 1 |  q36_1_2 = 1 | q36_1_3 = 1 | q36_1_4=1 | q36_1_5 = 1 | q36_1_6 = 1 | q36_1_7 = 1 | q36_1_8 = 1) q36_1_0 =0.
EXECUTE.


IF (q36_1_9 = 1) q36_1_0 =0.
EXECUTE.



** q36_2

IF (q36_2_1 = 1 |  q36_2_2 = 1 | q36_2_3 = 1 | q36_2_4=1 | q36_2_5 = 1 | q36_2_6 = 1 | q36_2_7 = 1 | q36_2_8 = 1) q36_2_9 =0.
EXECUTE.


IF (q36_2_1 = 1 |  q36_2_2 = 1 | q36_2_3 = 1 | q36_2_4=1 | q36_2_5 = 1 | q36_2_6 = 1 | q36_2_7 = 1 | q36_2_8 = 1) q36_2_0 =0.
EXECUTE.


IF (q36_2_9 = 1) q36_2_0 =0.
EXECUTE.



** q36_3

IF (q36_3_1 = 1 |  q36_3_2 = 1 | q36_3_3 = 1 | q36_3_4=1 | q36_3_5 = 1 | q36_3_6 = 1 | q36_3_7 = 1 | q36_3_8 = 1) q36_3_9 =0.
EXECUTE.


IF (q36_3_1 = 1 |  q36_3_2 = 1 | q36_3_3 = 1 | q36_3_4=1 | q36_3_5 = 1 | q36_3_6 = 1 | q36_3_7 = 1 | q36_3_8 = 1) q36_3_0 =0.
EXECUTE.


IF (q36_3_9 = 1) q36_3_0 =0.
EXECUTE.



** q36_4


IF (q36_4_1	=	1	|
q36_4_2	=	1	|
q36_4_3	=	1	|
q36_4_4	=	1	|
q36_4_5	=	1	|
q36_4_6	=	1	|
q36_4_7	=	1	|
q36_4_8	=	1) q36_4_9 =0.
execute.

	
IF (q36_4_1	=	1	|
q36_4_2	=	1	|
q36_4_3	=	1	|
q36_4_4	=	1	|
q36_4_5	=	1	|
q36_4_6	=	1	|
q36_4_7	=	1	|
q36_4_8	=	1) q36_4_0 =0.
execute.


IF (q36_4_9 = 1) q36_4_0 =0.
EXECUTE.


** q36_5

IF (q36_5_1	=	1	|
q36_5_2	=	1	|
q36_5_3	=	1	|
q36_5_4	=	1	|
q36_5_5	=	1	|
q36_5_6	=	1	|
q36_5_7	=	1	|
q36_5_8	=	1	) q36_5_0 = 0.
execute.


IF (q36_5_1	=	1	|
q36_5_2	=	1	|
q36_5_3	=	1	|
q36_5_4	=	1	|
q36_5_5	=	1	|
q36_5_6	=	1	|
q36_5_7	=	1	|
q36_5_8	=	1	) q36_5_9 = 0.
execute.


IF (q36_5_9 = 1) q36_5_0 =0.
EXECUTE.



** q36_6


IF (q36_6_1	=	1	|
q36_6_2	=	1	|
q36_6_3	=	1	|
q36_6_4	=	1	|
q36_6_5	=	1	|
q36_6_6	=	1	|
q36_6_7	=	1	|
q36_6_8	=	1	) q36_6_9 = 0.


IF (q36_6_1	=	1	|
q36_6_2	=	1	|
q36_6_3	=	1	|
q36_6_4	=	1	|
q36_6_5	=	1	|
q36_6_6	=	1	|
q36_6_7	=	1	|
q36_6_8	=	1	) q36_6_0 = 0.


IF (q36_6_9 = 1) q36_6_0 =0.
EXECUTE.






