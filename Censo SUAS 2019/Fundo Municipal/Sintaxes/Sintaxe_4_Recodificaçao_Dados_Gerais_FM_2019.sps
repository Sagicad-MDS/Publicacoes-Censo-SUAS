
*****recodificar

*q5*********************************

compute q5_1_velha = q5_1. 
compute q5_2_velha = q5_2. 
compute q5_3_velha = q5_3. 
compute q5_4_velha = q5_4. 
compute q5_5_velha = q5_5. 
execute. 

DO IF (q4=0).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_4 (ELSE=SYSMIS).
RECODE q5_5 (ELSE=SYSMIS).
END IF.
EXECUTE.


COMPUTE q5_5_rec=SUM(q5_1,q5_2,q5_3,q5_4).
EXECUTE.

**q6*****************

compute q6_1_velha = q6_1. 
compute q6_2_velha = q6_2. 
compute q6_3_velha = q6_3. 
compute q6_4_velha = q6_4. 
compute q6_5_velha = q6_5. 
compute q6_6_velha = q6_6. 
compute q7_velha = q7. 
execute. 



DO IF (q6_0=1).
RECODE q6_1 (ELSE=SYSMIS).
RECODE q6_2 (ELSE=SYSMIS).
RECODE q6_3 (ELSE=SYSMIS).
RECODE q6_4 (ELSE=SYSMIS).
RECODE q6_5 (ELSE=SYSMIS).
RECODE q6_6 (ELSE=SYSMIS).
RECODE q7 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q6_1=0 & q6_2=0 & q6_3=0 &  q6_4=0  &  q6_5=0 & q6_6=0 ).
RECODE q7 (ELSE=SYSMIS).
END IF.
EXECUTE.


*******************




VARIABLE LABELS
q5_1_velha	 'q5_1_v12039_Entidades que prestam serviços de Proteção Social Básica'
q5_2_velha	 'q5_2_v14451_Entidades que prestam serviços de Proteção Social Especial de Média Complexidade'
q5_3_velha	 'q5_3_v14452_Entidades que prestam serviços de Proteção Social Especial de Alta Complexidade'
q5_4_velha	 'q5_4_v14453_Outras'
q5_5_velha	 'q5_5_v14454_Total de entidades'
q5_5_rec	 'q5_5_v14454_Total de entidades recodificada'
q6_1_velha	 'q6_1_v11588_Proteção Social Básica'
q6_2_velha	 'q6_2_v14534_Proteção Social Especial de Média Complexidade'
q6_3_velha	 'q6_3_v14535_Proteção Social Especial de Alta Complexidade'
q6_4_velha 'q6_4_v14536_Benefícios Eventuais'
q6_5_velha	 'q6_5_v14537_Incentivo à Gestão'	
q6_6_velha	 'q6_6_v14538_Outros.'
q7_velha 'q7_v9577_Caso o município receba recursos ESTADUAIS, informe se estes recursos são alocados na unidade Orçamentária do Fundo Municipal de Assistência Social?'
.








COMMENT BOOKMARK;LINE_NUM=50;ID=7.
