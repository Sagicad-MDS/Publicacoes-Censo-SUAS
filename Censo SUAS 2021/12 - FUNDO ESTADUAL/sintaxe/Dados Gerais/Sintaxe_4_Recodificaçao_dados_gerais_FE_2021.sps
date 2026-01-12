
*****recodificar


**q4*****************


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

*q9*********************************

compute q10_velha = q10. 
compute q11_velha = q11. 
compute q12_velha = q12. 
execute. 


DO IF (q9=2).
RECODE q10 (ELSE=SYSMIS).
RECODE q11 (ELSE=SYSMIS).
RECODE q12 (ELSE=SYSMIS).
END IF.
EXECUTE.




*******************




VARIABLE LABELS
q5_1_velha	 'q5_1_v12039_5.1. Entidades que prestam serviços de Proteção Social Básica'
q5_2_velha	 'q5_2_v14451_5.2. Entidades que prestam serviços de Proteção Social Especial de Média Complexidade'
q5_3_velha	 'q5_3_v14452_5.3. Entidades que prestam serviços de Proteção Social Especial de Alta Complexidade'
q5_4_velha	 'q5_4_v14453_5.4. Outras'
q5_5_velha	 'q5_5_v14454_5.5. Total de entidades'
q5_5_rec  'q5_5_v14454_5.5. Total de entidades recalculado'
q10_velha	 'q10_v9577_10. Existe Decreto ou Lei estadual que regulamenta o repasse fundo-a-fundo aos municípios? '
q11_velha	 'q11_v12031_11. Em 2019, como foi organizado o cofinanciamento fundo-a-fundo para os serviços socioassistenciais? '
q12_velha	 'q12_v13264_12. Em 2019, com que frequência foi feito o repasse fundo-a-fundo do estado para o município'
.









