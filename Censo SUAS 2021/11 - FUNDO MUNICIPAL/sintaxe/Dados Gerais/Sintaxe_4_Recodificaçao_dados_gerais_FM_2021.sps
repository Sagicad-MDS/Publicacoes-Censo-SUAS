
*****recodificar

*q4*********************************

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
q5_1_velha	 'q5_1_v12039_5.1. Entidades que prestam serviços de Proteção Social Básica'
q5_2_velha	 'q5_2_v14451_5.2. Entidades que prestam serviços de Proteção Social Especial de Média Complexidade'
q5_3_velha	 'q5_3_v14452_5.3. Entidades que prestam serviços de Proteção Social Especial de Alta Complexidade'
q5_4_velha	 'q5_4_v14453_5.4. Outras'
q5_5_velha	 'q5_5_v14454_5.5. Total de entidades'
q5_5_rec	 'q5_5_v14454_Total de entidades recodificada'
q6_1_velha	 'q6_1_v11588_6.1. Proteção Social Básica_6. Em 2019 o município recebeu recursos estaduais para o cofinanciamento da Assistência Social? '
q6_2_velha	 'q6_2_v14534_6.2. Proteção Social Especial de Média Complexidade_6. Em 2019 o município recebeu recursos estaduais para o cofinanciamento da Assistência Social? '
q6_3_velha	 'q6_3_v14535_6.3. Proteção Social Especial de Alta Complexidade_6. Em 2019 o município recebeu recursos estaduais para o cofinanciamento da Assistência Social? '
q6_4_velha 'q6_4_v14536_6.4. Benefícios Eventuais_6. Em 2019 o município recebeu recursos estaduais para o cofinanciamento da Assistência Social? '
q6_5_velha	 'q6_5_v14537_6.5. Incentivo à Gestão_6. Em 2019 o município recebeu recursos estaduais para o cofinanciamento da Assistência Social? '
q6_6_velha	 'q6_6_v14538_6.6. Outros_6. Em 2019 o município recebeu recursos estaduais para o cofinanciamento da Assistência Social? '
q7_velha 'q7_v9577_7. Caso o município tenha recebido em 2019 recursos ESTADUAIS, informe se estes recursos são alocados na Unidade Orçamentária do Fundo Municipal de Assistência Social?'
.









COMMENT BOOKMARK;LINE_NUM=50;ID=7.
