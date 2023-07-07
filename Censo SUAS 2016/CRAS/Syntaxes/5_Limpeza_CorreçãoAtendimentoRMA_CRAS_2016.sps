
**Limpeza da quantidade de acompanhamento conforme RMA

COMPUTE Q6_COMP=q6_1 + q6_2 + q6_3 + q6_4 + q6_5 + q6_6 + q6_7 + q6_8 + q6_9 + q6_10 + q6_11 + q6_12 +q6_99.
EXECUTE.

Imputando o corte no q14_1 e q14_2.

compute q14_1_VELHA = q14_1. 
execute. 
compute q14_2_VELHA = q14_2. 
execute. 

do if (Porte_pop2010 = 1 & q14_1_VELHA > 750 | Porte_pop2010 = 2 & q14_1_VELHA > 1000 | 
Porte_pop2010 = 3 & q14_1_VELHA > 2000 | Porte_pop2010 = 4 & q14_1_VELHA > 2000 | 
Porte_pop2010 = 5 & q14_1_VELHA > 2000).
recode q14_1 (ELSE=SYSMIS).
end if.
execute.

do if (Porte_pop2010 = 1 & q14_2_VELHA > 375 | Porte_pop2010 = 2 & q14_2_VELHA > 500 |
 Porte_pop2010 = 3 & q14_2_VELHA > 1000 | Porte_pop2010 = 4 & q14_2_VELHA > 1000 |
 Porte_pop2010 = 5 & q14_2_VELHA > 1000).
recode q14_2 (ELSE=SYSMIS).
end if.
execute.

IF  (q14_2 >= q14_1) q14_2=$SYSMIS.
EXECUTE.
