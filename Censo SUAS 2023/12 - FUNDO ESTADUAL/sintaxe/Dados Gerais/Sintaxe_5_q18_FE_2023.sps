* Encoding: UTF-8.

************************************************************************************************************************
Syntax Limpeza de outliers valores numéricos  q18- Questionário Fundo Estadual de Assistência Social
************************************************************************************************************************


RECODE q18_1_1 (ELSE=Copy) INTO  q18_1_1_velha.
RECODE q18_2_1 (ELSE=Copy) INTO  q18_2_1_velha.
RECODE q18_3_1 (ELSE=Copy) INTO  q18_3_1_velha.
RECODE q18_1_2 (ELSE=Copy) INTO  q18_1_2_velha.
RECODE q18_2_2 (ELSE=Copy) INTO  q18_2_2_velha.
RECODE q18_3_2 (ELSE=Copy) INTO  q18_3_2_velha.
RECODE q18_1_3 (ELSE=Copy) INTO  q18_1_3_velha.
RECODE q18_2_3 (ELSE=Copy) INTO  q18_2_3_velha.
RECODE q18_3_3  (ELSE=Copy) INTO  q18_3_3_velha.
RECODE q18_1_4 (ELSE=Copy) INTO  q18_1_4_velha.
RECODE q18_2_4  (ELSE=Copy) INTO  q18_2_4_velha.
RECODE q18_3_4 (ELSE=Copy) INTO  q18_3_4_velha.
RECODE q18_1_5 (ELSE=Copy) INTO  q18_1_5_velha.
RECODE q18_2_5  (ELSE=Copy) INTO  q18_2_5_velha.
RECODE q18_3_5 (ELSE=Copy) INTO  q18_3_5_velha.
RECODE q18_1_6  (ELSE=Copy) INTO  q18_1_6_velha.
RECODE q18_2_6  (ELSE=Copy) INTO  q18_2_6_velha.
RECODE q18_3_6  (ELSE=Copy) INTO  q18_3_6_velha.
EXECUTE.



VARIABLE LABELS
q18_1_1_velha  'q18_1_1_v13303_Proteção Social Básica - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do Estado'
q18_2_1_velha  'q18_2_1_v14470_Proteção Social Básica - DESPESAS - Valor da despesa realizada com recursos próprios do Estado'
q18_3_1_velha  'q18_3_1_v14471_Proteção Social Básica - COFINANCIAMENTO - Valor total repassado aos municípios'
q18_1_2_velha  'q18_1_2_v14472_Proteção Social Especial - RECURSOS FINANCEIROS- Valor alocado referente aos recursos próprios do Estado'
q18_2_2_velha  'q18_2_2_v14473_Proteção Social Especial - DESPESAS - Valor da despesa realizada com recursos próprios do Estado'
q18_3_2_velha  'q18_3_2_v14474_Proteção Social Especial - COFINANCIAMENTO - Valor total repassado aos municípios'
q18_1_3_velha  'q18_1_3_v14476_Benefícios - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do Estado'
q18_2_3_velha  'q18_2_3_v14477_Benefícios - DESPESAS - Valor da despesa realizada com recursos próprios do Estado'
q18_3_3_velha  'q18_3_3_v14475_Benefícios - COFINANCIAMENTO - Valor total repassado aos municípios'
q18_1_4_velha  'q18_1_4_v14478_Gestão - RECURSOS FINANCEIROS- Valor alocado referente aos recursos próprios do Estado'
q18_2_4_velha  'q18_2_4_v14479_Gestão - DESPESAS - Valor da despesa realizada com recursos próprios do Estado'
q18_3_4_velha  'q18_3_4_v14480_Gestão - COFINANCIAMENTO - Valor total repassado aos municípios'
q18_1_5_velha  'q18_1_5_v14481_Outros - RECURSOS FINACEIROS - Valor alocado referente aos recursos próprios do Estado'
q18_2_5_velha  'q18_2_5_v14482_Outros - DESPESAS - Valor da despesa realizada com recursos próprios do Estado'
q18_3_5_velha  'q18_3_5_v14483_Outros - COFINANCIAMENTO - Valor total repassado aos municípios'
q18_1_6_velha  'q18_1_6_v14484_TOTAL - RECURSOS - Valor alocado referente aos recursos próprios do Estado'
q18_2_6_velha  'q18_2_6_v14485_TOTAL - DESPESAS - Valor da despesa realizada com recursos próprios do Estado'
q18_3_6_velha  'q18_3_6_v14486_TOTAL - COFINANCIAMENTO - Valor total repassado aos municípios'
.



*********************************************************************************************************************************************************************************************************************************************
*Passo 1 - Criação de variável de Execução relacionando despesa e orçamento:

* As variáveis q18_1_1_X (onde X varia de 1 a 6) se referem ao valor dos recursos próprios alocados pelo município no orçamento.
* As variáveis q18_2_1_X (onde X varia de 1 a 6) se referem ao valor da despesa realizada desses recursos. Assim, se dividirmos a despesa pelo orçamento, temos a execução daquele orçamento.
*Da mesma forma, as variáveis q18_1_2_X representam o valor repassado pelo Estado e as variáveis q18_2_2_X o valor despendido.
*Assim, posteriormente será possível aplicar critério de limpeza que elimine valores inconsistentes, como os municípios que executam um valor 10 vezes maior do que o valor orçado, por exemplo.
*********************************************************************************************************************************************************************************************************************************************


COMPUTE	EXECUCAO_1MUN = q18_2_1/q18_1_1.
COMPUTE	EXECUCAO_2MUN = q18_2_2/q18_1_2.
COMPUTE	EXECUCAO_3MUN = q18_2_3/q18_1_3.
COMPUTE	EXECUCAO_4MUN = q18_2_4/q18_1_4.
COMPUTE	EXECUCAO_5MUN = q18_2_5/q18_1_5.
COMPUTE	EXECUCAO_6MUN = q18_2_6/q18_1_6.
EXECUTE.



VARIABLE LABELS
EXECUCAO_1MUN  'Proteção Social Básica -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do Estado '
EXECUCAO_2MUN 'Proteção Social Especial -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do Estado '
EXECUCAO_3MUN 'Benefícios -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do Estado '
EXECUCAO_4MUN 'Gestão -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do Estado '
EXECUCAO_5MUN 'Outros -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do Estado '
EXECUCAO_6MUN 'Total -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do Estado '
.


IF(		EXECUCAO_1MUN	>=	10	|
		EXECUCAO_2MUN	>=	10	|
		EXECUCAO_3MUN	>=	10	|
		EXECUCAO_4MUN	>=	10	|
		EXECUCAO_5MUN	>=	10	|
		EXECUCAO_6MUN	>=	10)	
		LIMP_EXECUCAO=1.				
EXECUTE.				



VARIABLE LABELS
LIMP_EXECUCAO  'Limpeza outlier_ para Estados que executam um valor 10 vezes maior do que o valor alocado '.




***************************************************************************************************************************************
*Passo 2 - Executar a limpeza dos valores inconsistentes
***************************************************************************************************************************************
*Alterar o rótulo dos valores para 0.777 = valores inconsistentes

IF EXECUCAO_1MUN > 10 q18_1_1=0.777.
IF EXECUCAO_1MUN > 10 q18_2_1=0.777.
IF EXECUCAO_2MUN > 10 q18_1_2=0.777.
IF EXECUCAO_2MUN > 10 q18_2_2=0.777.
IF EXECUCAO_3MUN > 10 q18_1_3=0.777.
IF EXECUCAO_3MUN > 10 q18_2_3=0.777.
IF EXECUCAO_4MUN > 10 q18_1_4=0.777.
IF EXECUCAO_4MUN > 10 q18_2_4=0.777.
IF EXECUCAO_5MUN > 10 q18_1_5=0.777.
IF EXECUCAO_5MUN > 10 q18_2_5=0.777.
IF EXECUCAO_6MUN > 10 q18_1_6=0.777.
IF EXECUCAO_6MUN > 10 q18_2_6=0.777.
execute.



