
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

compute q_6_velha = q_6. 
compute q_7_velha = q_7. 
compute q_8_velha = q_8.
compute q_9_velha = q_9.
compute q_10_1_velha = q_10_1.
compute q_10_2_velha = q_10_2. 
compute q_10_3_velha = q_10_3. 
compute q_10_4_velha = q_10_4. 
compute q_10_5_velha = q_10_5. 
compute q_10_99_velha = q_10_99. 
compute q_11_velha = q_11. 
compute q_12_velha = q_12. 
compute q_13_1_1_velha = q_13_1_1. 
compute q_13_1_2_velha = q_13_1_2. 
compute q_13_1_3_velha = q_13_1_3. 
compute q_13_2_1_velha = q_13_2_1. 
compute q_13_2_2_velha = q_13_2_2. 
compute q_13_2_3_velha = q_13_2_3. 
compute q_13_3_1_velha = q_13_3_1. 
compute q_13_3_2_velha = q_13_3_2. 
compute q_13_3_3_velha = q_13_3_3. 
compute q_13_4_1_velha = q_13_4_1. 
compute q_13_4_2_velha = q_13_4_2. 
compute q_13_4_3_velha = q_13_4_3. 
compute q_14_1_velha = q_14_1.
compute q_14_2_velha = q_14_2. 
compute q_14_3_velha = q_14_3 .
execute. 


DO IF (q_6=2).
RECODE q_7 (ELSE=SYSMIS).
RECODE q_8 (ELSE=SYSMIS).
RECODE q_9 (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q_6=0).
RECODE q_7 (ELSE=SYSMIS).
RECODE q_8 (ELSE=SYSMIS).
RECODE q_9 (ELSE=SYSMIS).
RECODE q_10_1 (ELSE=SYSMIS).
RECODE q_10_28 (ELSE=SYSMIS).
RECODE q_10_3 (ELSE=SYSMIS).
RECODE q_10_4 (ELSE=SYSMIS).
RECODE q_10_5 (ELSE=SYSMIS).
RECODE q_10_99 (ELSE=SYSMIS).
RECODE q_11 (ELSE=SYSMIS).
RECODE q_12 (ELSE=SYSMIS).
RECODE q_10_3 (ELSE=SYSMIS).
RECODE q_13_1_1 (ELSE=SYSMIS).
RECODE q_13_1_2 (ELSE=SYSMIS).
RECODE q_13_1_3 (ELSE=SYSMIS).
RECODE q_13_2_1 (ELSE=SYSMIS).
RECODE q_13_2_2 (ELSE=SYSMIS).
RECODE q_13_2_3 (ELSE=SYSMIS).
RECODE q_13_3_1 (ELSE=SYSMIS).
RECODE q_13_3_2 (ELSE=SYSMIS).
RECODE q_13_3_3 (ELSE=SYSMIS).
RECODE q_13_4_1 (ELSE=SYSMIS).
RECODE q_13_4_2 (ELSE=SYSMIS).
RECODE q_13_4_3 (ELSE=SYSMIS).
RECODE q_14_1 (ELSE=SYSMIS).
RECODE q_14_2 (ELSE=SYSMIS).
RECODE q_14_3 (ELSE=SYSMIS).
END IF.
EXECUTE.





*******************

VARIABLE LABELS
q_5_1_velha		'q_5_1_v12039_Entidades que prestam serviços de Proteção Social Básica'
q_5_2_velha		'q_5_2_v14451_Entidades que prestam serviços de Proteção Social Especial de Média Complexidade'
q_5_3_velha		'q_5_3_v14452_Entidades que prestam serviços de Proteção Social Especial de Alta Complexidade	'
q_5_4_velha		'q_5_4_v14453_Outras'
q_5_5_velha		'q_5_5_v14454_Total de entidades'
q_6_velha		'q_6_v11588_O estado realiza algum cofinanciamento aos municípios?'
q_7_velha		'q_7_v9577_Existe Decreto ou Lei estadual que regulamenta o repasse fundo-a-fundo aos municípios?'
q_8_velha		'q_8_v12031_Como é organizado o cofinanciamento fundo-a-fundo para os serviços socioassistenciais?'
q_8_99	'q_8_99_v14455_Outra organização. Qual?'
q_9_velha		'q_9_v13264_Com que frequência, geralmente, é feito o repasse fundo-a-fundo do estado para o município?'
q_10_1_velha		'q_10_1_v13265_1_O cofinanciamento realizado (fundo-a-fundo e convênio) é destinado a: Serviço de Proteção Social Básica'
q_10_2_velha		'q_10_2_v13265_2_O cofinanciamento realizado (fundo-a-fundo e convênio) é destinado a: Serviço de Proteção Social Especial de Média Complexidade'
q_10_3_velha		'q_10_3_v13265_3_O cofinanciamento realizado (fundo-a-fundo e convênio) é destinado a: Serviço de Proteção Social Especial de Alta Complexidade'
q_10_4_velha		'q_10_4_v13265_4_O cofinanciamento realizado (fundo-a-fundo e convênio) é destinado a: Benefícios Eventuais'
q_10_5_velha		'q_10_5_v13265_5_O cofinanciamento realizado (fundo-a-fundo e convênio) é destinado a: ncentivo financeiro para Gestão do SUAS'
q_10_99_velha		'q_10_99_v13265_99_O cofinanciamento realizado (fundo-a-fundo e convênio) é destinado a: Outros'
q_11_velha		'q_11_v8571_O cofinanciamento realizado (fundo-a-fundo e convênio) permite pagamento de pessoal (recursos humanos)?'
q_12_velha		'q_12_v14456_No ano de 2017 o estado construiu ou financiou a construção e/ou reforma de unidades municipais da Assistência Social (CRAS/CREAS/etc.)?'
q_13_1_1_velha		'q_13_1_1_v13300_Total de Municípios cofinanciados -TOTAL DE MUNICÍPIOS COM COFINANCIAMENTO ESTADUAL  (convênio e/ou fundo'
q_13_1_2_velha 'q_13_1_2_v14457_Total de Municípios cofinanciados - Quantidade de municípios que possuem cofinanciamento estadual FUNDO-A-FUNDO'
q_13_1_3_velha		'q_13_1_3_v14458_Total de Municípios cofinanciados - Quantidade de municípios que possuem cofinanciamento estadual por meio de CONVÊNIO'
q_13_2_1_velha		'q_13_2_1_v14459_a) Cofinanciamento para Proteção Social Básica - TOTAL DE MUNICÍPIOS COM COFINANCIAMENTO ESTADUAL  (convênio e/ou fundo-a-fundo'
q_13_2_2_velha 'q_13_2_2_v14460_a) Cofinanciamento para Proteção Social Básica - Quantidade de municípios que possuem cofinanciamento estadual FUNDO-A-FUNDO'
q_13_2_3_velha 'q_13_2_3_v14461_a) Cofinanciamento para Proteção Social Básica - Quantidade de municípios que possuem cofinanciamento estadual por meio de CONVÊNIO'
q_13_3_1_velha		'q_13_3_1_v14462_b) Cofinanciamento para Proteção Social Especial de Média Complexidade - TOTAL DE MUNICÍPIOS COM COFINANCIAMENTO ESTADUAL  (convênio e/ou fundo-a-fundo)'
q_13_3_2_velha		'q_13_3_2_v14463_b) Cofinanciamento para Proteção Social Especial de Média Complexidade - Quantidade de municípios que possuem cofinanciamento estadual FUNDO-A-FUNDO'
q_13_3_3_velha		'q_13_3_3_v14464_b) Cofinanciamento para Proteção Social Especial de Média Complexidade - Quantidade de municípios que possuem cofinanciamento estadual por meio de CONVÊNIO'
q_13_4_1_velha		'q_13_4_1_v14465_c) Cofinanciamento para Proteção Social  Especial de Alta Complexidade - TOTAL DE MUNICÍPIOS COM COFINANCIAMENTO ESTADUAL  (convênio e/ou fundo-a-fundo)'
q_13_4_2_velha		'q_13_4_2_v14468_c) Cofinanciamento para Proteção Social  Especial de Alta Complexidade - Quantidade de municípios que possuem cofinanciamento estadual FUNDO-A-FUNDO'
q_13_4_3_velha		'q_13_4_3_v14469_c) Cofinanciamento para Proteção Social  Especial de Alta Complexidade - Quantidade de municípios que possuem cofinanciamento estadual por meio de CONVÊNIO'
q_14_1_velha		'q_14_1_v13301_Total de Municípios cofinanciados - Quantidade total de municípios com cofinanciamento estadual (fundo-a-fundo'
q_14_2_velha 'q_14_2_v14466_Total de Municípios cofinanciados - Quantidade de municípios com cofinanciamento estadual fundo-a-fundo'
q_14_3_velha		'q_14_3_v14467_Total de Municípios cofinanciados - Quantidade de municípios que possuem cofinanciamento estadual por meio de convênio'
.


************************************************************************************************************
*q5 recodificação

COMPUTE q_5_5_rec=SUM(q_5_1,q_5_2,q_5_3,q_5_4).
EXECUTE.




