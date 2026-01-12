***************************************************************************************************
                                         CENSO SUAS CREAS 2018
***************************************************************************************************
Syntax de Limpeza de inconsistências


*Se o CREAS marcou que é municipal, limpar as questões referentes aos CREAS Regionais
(O erro ocorreu apenas para os questionários incompletos, 6 casos)




DO IF (q1 = 1).
RECODE q1_3_1_1 q1_3_1_2 q1_3_1_3 q1_3_1_0 q1_3_2_1 q1_3_2_2 q1_3_2_3 q1_3_2_0 q1_3_3_1 q1_3_3_2 
    q1_3_3_3 q1_3_3_0 q1_3_4_1 q1_3_4_2 q1_3_4_3 q1_3_4_0 q1_4 q1_5_1 q1_5_2 q1_5_3_1 q1_5_3_2 q1_5_3_3 
    q1_5_3_4 q1_5_3_5 q1_5_3_6 q1_5_3_7 q1_5_3_99 q1_6 q1_7 (ELSE=SYSMIS).
END IF.
EXECUTE.



*(Erro nas questões de compartilhamento de espaço, para os questionários incompletos, 5 casos)

DO IF (Questionario_incompleto = 1).
RECODE q4_1 q4_2 q4_3 q4_4 q4_5 q4_6 q4_7 q4_8 q4_9 q4_10 q4_11 q4_12 q4_13 q4_14 q4_15 q4_99 
q5_1
q5_2
q5_3
q5_4
q5_5
q5_6
q5_7
q5_8
q5_9
q5_10
q5_11
q5_12 (ELSE=SYSMIS).
END IF.
EXECUTE.
