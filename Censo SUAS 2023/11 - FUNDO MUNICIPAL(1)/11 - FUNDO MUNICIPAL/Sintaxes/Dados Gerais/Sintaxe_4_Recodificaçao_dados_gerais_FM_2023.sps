
*****recodificar


**q6*****************

compute q6_0_velha = q6_0. 
compute q6_1_velha = q6_1. 
compute q6_2_velha = q6_2. 
compute q6_3_velha = q6_3. 
compute q6_4_velha = q6_4. 
compute q6_5_velha = q6_5. 
compute q6_6_velha = q6_6. 
compute q7_velha = q7. 
compute q8_velha = q8. 
compute q9_velha = q9. 
execute. 



DO IF (q6_0=1).
RECODE q6_1 (ELSE=SYSMIS).
RECODE q6_2 (ELSE=SYSMIS).
RECODE q6_3 (ELSE=SYSMIS).
RECODE q6_4 (ELSE=SYSMIS).
RECODE q6_5 (ELSE=SYSMIS).
RECODE q6_6 (ELSE=SYSMIS).
RECODE q7 (ELSE=SYSMIS).
RECODE q8 (ELSE=SYSMIS).
RECODE q9 (ELSE=SYSMIS).
END IF.
EXECUTE.





*******************




VARIABLE LABELS
q6_0_velha ' q6.0_v14568_6.0. Não recebeu recursos estaduais para o cofinanciamento da Assistência Social'
q6_1_velha 'q6.1_v16450_6.1. Proteção Social Básica'
q6_2_velha 'q6.2_v14534_6.2. Proteção Social Especial de Média Complexidade'
q6_3_velha 'q6.3_v14535_6.3. Proteção Social Especial de Alta Complexidade'
q6_4_velha 'q6.4_v14536_6.4. Benefícios Eventuais'
q6_5_velha 'q6.5_v14537_6.5. Incentivo à Gestão'
q6_6_velha 'q6.6_v14538_6.6. Outros'
q7_velha 'q7_v9577_7. Caso o município tenha recebido em 2022 recursos ESTADUAIS, informe se estes recursos são alocados na Unidade Orçamentária do Fundo Municipal de Assistência Social?'
q8_velha 'q8_v15071_8. O recurso para financiamento municipal dos Benefícios Eventuais foi previsto na Lei Orçamentária Anual (LOA) do ano de 2023?'
q9_velha 'q9_v15072_9. O recurso para financiamento municipal dos Benefícios Eventuais foi alocado no FMAS?'
.









