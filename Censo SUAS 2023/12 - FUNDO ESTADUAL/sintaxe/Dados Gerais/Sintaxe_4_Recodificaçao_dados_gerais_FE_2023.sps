* Encoding: UTF-8.

*****recodificar


**q4*****************

compute q5_velha = q5. 
execute. 

DO IF (q4=0).
RECODE q5 (ELSE=SYSMIS).
END IF.
EXECUTE.

*q6*********************************

compute q7_velha = q7. 
compute q8_velha = q8. 
compute q9_velha = q9. 
compute q10_1_velha = q10_1. 
compute q10_2_velha = q10_2. 
compute q10_3_velha = q10_3. 
compute q10_4_velha = q10_4. 
compute q10_5_velha = q10_5. 
compute q10_99_velha = q10_99. 
compute q11_velha = q11. 
compute q12_1_velha = q12_1. 
compute q12_2_velha = q12_2. 
compute q12_3_velha = q12_3. 
compute q13_1_velha = q13_1. 
compute q13_2_velha = q13_2. 
compute q13_3_velha = q13_3. 
execute. 

DO IF (q6=2).
RECODE q7 (ELSE=SYSMIS).
RECODE q8 (ELSE=SYSMIS).
RECODE q9 (ELSE=SYSMIS).
END IF.
EXECUTE.



DO IF (q6=0).
RECODE q7 (ELSE=SYSMIS).
RECODE q8 (ELSE=SYSMIS).
RECODE q9 (ELSE=SYSMIS).
RECODE q10_1 (ELSE=SYSMIS).
RECODE q10_2 (ELSE=SYSMIS).
RECODE q10_3  (ELSE=SYSMIS).
RECODE q10_4 (ELSE=SYSMIS).
RECODE q10_5 (ELSE=SYSMIS).
RECODE q10_99  (ELSE=SYSMIS).
RECODE q11 (ELSE=SYSMIS).
RECODE q12_1 (ELSE=SYSMIS).
RECODE q12_2 (ELSE=SYSMIS).
RECODE q12_3  (ELSE=SYSMIS).
RECODE q13_1 (ELSE=SYSMIS).
RECODE q13_2 (ELSE=SYSMIS).
RECODE q13_3  (ELSE=SYSMIS).
END IF.
EXECUTE.









VARIABLE LABELS
q5_velha'q5. Quantas entidades receberam, em 2022, recurso do �rg�o gestor estadual por conv�nio/termo de parceria por bloco?'
q7_velha'q7. Existe Decreto ou Lei estadual que regulamenta o repasse fundo-a-fundo aos munic�pios?'
q8_velha'q8. Em 2022, como foi organizado o cofinanciamento fundo-a-fundo para os servi�os socioassistenciais?'
q9_velha'q9. Em 2022, com que frequ�ncia foi feito o repasse fundo-a-fundo do estado para o munic�pio?'
q10_1_velha'q10_1: Servi�o de Prote��o Social B�sica_cofinanciamento realizado'
q10_2_velha'q10_2: Servi�o de Prote��o Social Especial de M�dia Complexidade_cofinanciamento realizado'
q10_3_velha'q10_3: Servi�o de Prote��o Social Especial de Alta Complexidade_cofinanciamento realizado'
q10_4_velha'q10_4: Benef�cios Eventuais_cofinanciamento realizado'
q10_5_velha'q10_5: Incentivo financeiro para Gest�o do SUAS_cofinanciamento realizado'
q10_99_velha'q10_99: Outros._cofinanciamento realizado'
q11_velha'q11. O cofinanciamento realizado (fundo-a-fundo e conv�nio) permitiu pagamento de pessoal (recursos humanos)?'
q12_1_velha'q12_11. Total de Munic�pios cofinanciados -TOTAL DE MUNIC�PIOS COM COFINANCIAMENTO ESTADUAL (conv�nio e/ou fundo-a-fundo)*'
q12_2_velha'q12_2. Total de Munic�pios cofinanciados - Quantidade de munic�pios que possuem cofinanciamento estadual FUNDO-A-FUNDO'
q12_3_velha'q12_3. Total de Munic�pios cofinanciados - Quantidade de munic�pios que possuem cofinanciamento estadual por meio de CONV�NIO'
q13_1_velha'q13_1. Total de Munic�pios cofinanciados Beneficios eventuais - Quantidade total de munic�pios com cofinanciamento estadual (fundo-a-fundo e/ou conv�nio).'
q13_2_velha'q13_2. Total de Munic�pios cofinanciados Beneficios eventuais - Quantidade de munic�pios com cofinanciamento estadual fundo-a-fundo'
q13_3_velha'q13_3. Total de Munic�pios cofinanciados Beneficios eventuais - Quantidade de munic�pios que possuem cofinanciamento estadual por meio de conv�nio'
.









