
*****recodificar

*q5*********************************

compute q_5_1_velha = q_5_1. 
compute q_5_2_velha = q_5_2. 
compute q_5_3_velha = q_5_3. 
compute q_5_4_velha = q_5_4. 
compute q_5_5_velha = q_5_5. 
execute. 

DO IF (q_4=0).
RECODE q_5_1 (0=SYSMIS).
RECODE q_5_2 (0=SYSMIS).
RECODE q_5_3 (0=SYSMIS).
RECODE q_5_4 (0=SYSMIS).
RECODE q_5_5 (0=SYSMIS).
END IF.
EXECUTE.


**q6*****************

compute q_6_1_velha = q_6_1. 
compute q_6_2_velha = q_6_2. 
compute q_6_3_velha = q_6_3. 
compute q_6_4_velha = q_6_4. 
compute q_6_5_velha = q_6_5. 
compute q_6_6_velha = q_6_6. 
compute q_6_99_velha = q_6_99. 
compute q_7_velha = q_7. 
execute. 



DO IF (q_6=1).
RECODE q_6_1 (ELSE=SYSMIS).
RECODE q_6_2 (ELSE=SYSMIS).
RECODE q_6_3 (ELSE=SYSMIS).
RECODE q_6_4 (ELSE=SYSMIS).
RECODE q_6_5 (ELSE=SYSMIS).
RECODE q_6_6 (ELSE=SYSMIS).
RECODE q_6_99 (ELSE=SYSMIS).
RECODE q_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q_6_1=0 & q_6_2=0 & q_6_3=0 &  q_6_4=0  &  q_6_5=0 & q_6_6=0 ).
RECODE q_7 (ELSE=SYSMIS).
END IF.
EXECUTE.


*******************




VARIABLE LABELS
q_5_1_velha	 'q_5_1_v12039_Entidades que prestam serviços de Proteção Social Básica'
q_5_2_velha	 'q_5_2_v14451_Entidades que prestam serviços de Proteção Social Especial de Média Complexidade'
q_5_3_velha	 'q_5_3_v14452_Entidades que prestam serviços de Proteção Social Especial de Alta Complexidade'
q_5_4_velha	 'q_5_4_v14453_Outras'
q_5_5_velha	 'q_5_5_v14454_Total de entidades'
q_6_1_velha	 'q_6_1_v11588_Proteção Social Básica'
q_6_2_velha	 'q_6_2_v14534_Proteção Social Especial de Média Complexidade'
q_6_3_velha	 'q_6_3_v14535_Proteção Social Especial de Alta Complexidade'
q_6_4_velha 'q_6_4_v14536_Benefícios Eventuais'
q_6_5_velha	 'q_6_5_v14537_Incentivo à Gestão'	
q_6_6_velha	 'q_6_6_v14538_Outros.'
q_6_99_velha 'q_6_99_v14541_Qual?'
q_7_velha 'q_7_v9577_Caso o município receba recursos ESTADUAIS, informe se estes recursos são alocados na unidade Orçamentária do Fundo Municipal de Assistência Social?'
.



************************************************************************************************************
*q5 recodificação

COMPUTE q_5_5_rec=SUM(q_5_1,q_5_2,q_5_3,q_5_4).
EXECUTE.




COMMENT BOOKMARK;LINE_NUM=49;ID=7.
