
************************************************************************************************************************
Syntax Limpeza de outliers valores numéricos  q8- Questionário Fundo Municipal de Assistência Social
************************************************************************************************************************





RECODE q_8_1_1_1 (ELSE=Copy) INTO  q_8_1_1_1_velha.
RECODE q_8_1_2_1 (ELSE=Copy) INTO  q_8_1_2_1_velha.
RECODE q_8_2_1_1 (ELSE=Copy) INTO  q_8_2_1_1_velha.
RECODE q_8_2_2_1 (ELSE=Copy) INTO  q_8_2_2_1_velha.
RECODE q_8_1_1_2 (ELSE=Copy) INTO  q_8_1_1_2_velha.
RECODE q_8_1_2_2 (ELSE=Copy) INTO  q_8_1_2_2_velha.
RECODE q_8_2_1_2 (ELSE=Copy) INTO  q_8_2_1_2_velha.
RECODE q_8_2_2_2 (ELSE=Copy) INTO  q_8_2_2_2_velha.
RECODE q_8_1_1_3 (ELSE=Copy) INTO  q_8_1_1_3_velha.
RECODE q_8_1_2_3 (ELSE=Copy) INTO  q_8_1_2_3_velha.
RECODE q_8_2_1_3 (ELSE=Copy) INTO  q_8_2_1_3_velha.
RECODE q_8_2_2_3 (ELSE=Copy) INTO  q_8_2_2_3_velha.
RECODE q_8_1_1_4 (ELSE=Copy) INTO  q_8_1_1_4_velha.
RECODE q_8_1_2_4 (ELSE=Copy) INTO  q_8_1_2_4_velha.
RECODE q_8_2_1_4 (ELSE=Copy) INTO  q_8_2_1_4_velha.
RECODE q_8_2_2_4 (ELSE=Copy) INTO  q_8_2_2_4_velha.
RECODE q_8_1_1_5 (ELSE=Copy) INTO  q_8_1_1_5_velha.
RECODE q_8_1_2_5 (ELSE=Copy) INTO  q_8_1_2_5_velha.
RECODE q_8_2_1_5 (ELSE=Copy) INTO  q_8_2_1_5_velha.
RECODE q_8_2_2_5 (ELSE=Copy) INTO  q_8_2_2_5_velha.
RECODE q_8_1_1_6 (ELSE=Copy) INTO  q_8_1_1_6_velha.
RECODE q_8_1_2_6 (ELSE=Copy) INTO  q_8_1_2_6_velha.
RECODE q_8_2_1_6 (ELSE=Copy) INTO  q_8_2_1_6_velha.
RECODE q_8_2_2_6 (ELSE=Copy) INTO  q_8_2_2_6_velha.
EXECUTE.




VARIABLE LABELS
q_8_1_1_1_velha  'q_8_1_1_1_v13303_Proteção Social Básica - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município'
q_8_1_1_2_velha  'q_8_1_1_2_v14544_Proteção Social Especial - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município'
q_8_1_1_3_velha  'q_8_1_1_3_v14548_Benefícios - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município'
q_8_1_1_4_velha  'q_8_1_1_4_v14552_Gestão - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município'
q_8_1_1_5_velha  'q_8_1_1_5_v14556_Outros - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município'
q_8_1_1_6_velha  'q_8_1_1_6_v14560_Total - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município'
q_8_1_2_1_velha  'q_8_1_2_1_v14542_Proteção Social Básica - RECURSOS FINANCEIROS -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
q_8_1_2_2_velha  'q_8_1_2_2_v14545_Proteção Social Especial - RECURSOS FINANCEIROS- Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
q_8_1_2_3_velha  'q_8_1_2_3_v14549_Benefícios - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
q_8_1_2_4_velha  'q_8_1_2_4_v14553_Gestão - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
q_8_1_2_5_velha  'q_8_1_2_5_v14557_Outros - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
q_8_1_2_6_velha  'q_8_1_2_6_v14561_Total - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
q_8_2_1_1_velha  'q_8_2_1_1_v14470_Proteção Social Básica - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município'
q_8_2_1_2_velha  'q_8_2_1_2_v14546_Proteção Social Especial - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município'
q_8_2_1_3_velha  'q_8_2_1_3_v14550_Benefícios - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município'
q_8_2_1_4_velha  'q_8_2_1_4_v14554_Gestão - DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município'
q_8_2_1_5_velha  'q_8_2_1_5_v14558_Outros - DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município'
q_8_2_1_6_velha  'q_8_2_1_6_v14562_Total - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município'
q_8_2_2_1_velha  'q_8_2_2_1_v14543_Proteção Social Básica - DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual'
q_8_2_2_2_velha  'q_8_2_2_2_v14547_Proteção Social Especial - DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual'
q_8_2_2_3_velha  'q_8_2_2_3_v14551_Benefícios - DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual'
q_8_2_2_4_velha  'q_8_2_2_4_v14555_Gestão - DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual'
q_8_2_2_5_velha  'q_8_2_2_5_v14559_Outros - DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual'
q_8_2_2_6_velha  'q_8_2_2_6_v14563_Total - DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual'
.






***************************************************************************************************************************************
*Passo 1 - Dividir todas as variáveis de recurso financeiro pela população, para criar um valor per capita.
*Dessa forma, é possível comparar a distribuição para todos os municípios.
***************************************************************************************************************************************

COMPUTE	q_8_1_1_1_POP= q_8_1_1_1/Pop_total_2010.
COMPUTE	q_8_1_2_1_POP= q_8_1_2_1/Pop_total_2010.
COMPUTE	q_8_2_1_1_POP= q_8_2_1_1/Pop_total_2010.
COMPUTE	q_8_2_2_1_POP= q_8_2_2_1/Pop_total_2010.
COMPUTE	q_8_1_1_2_POP= q_8_1_1_2/Pop_total_2010.
COMPUTE	q_8_1_2_2_POP= q_8_1_2_2/Pop_total_2010.
COMPUTE	q_8_2_1_2_POP= q_8_2_1_2/Pop_total_2010.
COMPUTE	q_8_2_2_2_POP= q_8_2_2_2/Pop_total_2010.
COMPUTE	q_8_1_1_3_POP= q_8_1_1_3/Pop_total_2010.
COMPUTE	q_8_1_2_3_POP= q_8_1_2_3/Pop_total_2010.
COMPUTE	q_8_2_1_3_POP= q_8_2_1_3/Pop_total_2010.
COMPUTE	q_8_2_2_3_POP= q_8_2_2_3/Pop_total_2010.
COMPUTE	q_8_1_1_4_POP= q_8_1_1_4/Pop_total_2010.
COMPUTE	q_8_1_2_4_POP= q_8_1_2_4/Pop_total_2010.
COMPUTE	q_8_2_1_4_POP= q_8_2_1_4/Pop_total_2010.
COMPUTE	q_8_2_2_4_POP= q_8_2_2_4/Pop_total_2010.
COMPUTE	q_8_1_1_5_POP= q_8_1_1_5/Pop_total_2010.
COMPUTE	q_8_1_2_5_POP= q_8_1_2_5/Pop_total_2010.
COMPUTE	q_8_2_1_5_POP= q_8_2_1_5/Pop_total_2010.
COMPUTE	q_8_2_2_5_POP= q_8_2_2_5/Pop_total_2010.
COMPUTE	q_8_1_1_6_POP= q_8_1_1_6/Pop_total_2010.
COMPUTE	q_8_1_2_6_POP= q_8_1_2_6/Pop_total_2010.
COMPUTE	q_8_2_1_6_POP= q_8_2_1_6/Pop_total_2010.
COMPUTE	q_8_2_2_6_POP= q_8_2_2_6/Pop_total_2010.
EXECUTE.




VARIABLE LABELS
q_8_1_1_1_POP  'q_8_1_1_1_v13303_Proteção Social Básica - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município em relação a sua população total'
q_8_1_1_2_POP  'q_8_1_1_2_v14544_Proteção Social Especial - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município em relação a sua população total'
q_8_1_1_3_POP  'q_8_1_1_3_v14548_Benefícios - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município em relação a sua população total'
q_8_1_1_4_POP  'q_8_1_1_4_v14552_Gestão - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município em relação a sua população total'
q_8_1_1_5_POP  'q_8_1_1_5_v14556_Outros - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município em relação a sua população total'
q_8_1_1_6_POP  'q_8_1_1_6_v14560_Total - RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município em relação a sua população total'
q_8_1_2_1_POP  'q_8_1_2_1_v14542_Proteção Social Básica - RECURSOS FINANCEIROS -  Valor recebido do governo estadual (Fundo a Fundo e Convênios) em relação a sua população total'
q_8_1_2_2_POP  'q_8_1_2_2_v14545_Proteção Social Especial - RECURSOS FINANCEIROS- Valor recebido do governo estadual (Fundo a Fundo e Convênios) em relação a sua população total'
q_8_1_2_3_POP  'q_8_1_2_3_v14549_Benefícios - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios em relação a sua população total)'
q_8_1_2_4_POP  'q_8_1_2_4_v14553_Gestão - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) em relação a sua população total'
q_8_1_2_5_POP  'q_8_1_2_5_v14557_Outros - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) em relação a sua população total'
q_8_1_2_6_POP  'q_8_1_2_6_v14561_Total - RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) em relação a sua população total'
q_8_2_1_1_POP  'q_8_2_1_1_v14470_Proteção Social Básica - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município em relação a sua população total'
q_8_2_1_2_POP  'q_8_2_1_2_v14546_Proteção Social Especial - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município em relação a sua população total'
q_8_2_1_3_POP  'q_8_2_1_3_v14550_Benefícios - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município em relação a sua população total'
q_8_2_1_4_POP  'q_8_2_1_4_v14554_Gestão - DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município em relação a sua população total'
q_8_2_1_5_POP  'q_8_2_1_5_v14558_Outros - DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município em relação a sua população total'
q_8_2_1_6_POP  'q_8_2_1_6_v14562_Total - DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município em relação a sua população total'
q_8_2_2_1_POP  'q_8_2_2_1_v14543_Proteção Social Básica - DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual em relação a sua população total'
q_8_2_2_2_POP  'q_8_2_2_2_v14547_Proteção Social Especial - DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual em relação a sua população total'
q_8_2_2_3_POP  'q_8_2_2_3_v14551_Benefícios - DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual em relação a sua população total'
q_8_2_2_4_POP  'q_8_2_2_4_v14555_Gestão - DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual em relação a sua população total'
q_8_2_2_5_POP  'q_8_2_2_5_v14559_Outros - DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual em relação a sua população total'
q_8_2_2_6_POP  'q_8_2_2_6_v14563_Total - DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual em relação a sua população total'
.

***************************************************************************************************************************************
*Passo 2 - Analisar a distribuição
***************************************************************************************************************************************


FREQUENCIES VARIABLES= 
q_8_1_1_1_POP
q_8_1_2_1_POP
q_8_2_1_1_POP
q_8_2_2_1_POP
q_8_1_1_2_POP
q_8_1_2_2_POP
q_8_2_1_2_POP
q_8_2_2_2_POP
q_8_1_1_3_POP
q_8_1_2_3_POP
q_8_2_1_3_POP
q_8_2_2_3_POP
q_8_1_1_4_POP
q_8_1_2_4_POP
q_8_2_1_4_POP
q_8_2_2_4_POP
q_8_1_1_5_POP
q_8_1_2_5_POP
q_8_2_1_5_POP
q_8_2_2_5_POP
q_8_1_1_6_POP
q_8_1_2_6_POP
q_8_2_1_6_POP
q_8_2_2_6_POP
  /FORMAT=NOTABLE
  /NTILES=4
  /NTILES=10
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.






*********************************************************************************************************************************************************************************************************************************************
*Passo 3 - Criação de variável de Execução relacionando despesa e orçamento:

* As variáveis q_8_1_1_X (onde X varia de 1 a 6) se referem ao valor dos recursos próprios alocados pelo município no orçamento.
* As variáveis q_8_2_1_X (onde X varia de 1 a 6) se referem ao valor da despesa realizada desses recursos. Assim, se dividirmos a despesa pelo orçamento, temos a execução daquele orçamento.
*Da mesma forma, as variáveis q_8_1_2_X representam o valor repassado pelo Estado e as variáveis q_8_2_2_X o valor despendido.
*Assim, posteriormente será possível aplicar critério de limpeza que elimine valores inconsistentes, como os municípios que executam um valor 10 vezes maior do que o valor orçado, por exemplo.
*********************************************************************************************************************************************************************************************************************************************





COMPUTE	EXECUCAO_1MUN = q_8_2_1_1/q_8_1_1_1.
COMPUTE	EXECUCAO_1EST = q_8_2_2_1/q_8_1_2_1.
COMPUTE	EXECUCAO_2MUN = q_8_2_1_2/q_8_1_1_2.
COMPUTE	EXECUCAO_2EST = q_8_2_2_2/q_8_1_2_2.
COMPUTE	EXECUCAO_3MUN = q_8_2_1_3/q_8_1_1_3.
COMPUTE	EXECUCAO_3EST = q_8_2_2_3/q_8_1_2_3.
COMPUTE	EXECUCAO_4MUN = q_8_2_1_4/q_8_1_1_4.
COMPUTE	EXECUCAO_4EST = q_8_2_2_4/q_8_1_2_4.
COMPUTE	EXECUCAO_5MUN = q_8_2_1_5/q_8_1_1_5.
COMPUTE	EXECUCAO_5EST = q_8_2_2_5/q_8_1_2_5.
COMPUTE	EXECUCAO_6MUN = q_8_2_1_6/q_8_1_1_6.
COMPUTE	EXECUCAO_6EST = q_8_2_2_6/q_8_1_2_6.
EXECUTE.




VARIABLE LABELS
EXECUCAO_1MUN  'Proteção Social Básica -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do município '
EXECUCAO_1EST 'Proteção Social Básica -  Execução relacionando despesa e orçamento -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
EXECUCAO_2MUN 'Proteção Social Especial -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do município '
EXECUCAO_2EST 'Proteção Social Especial  -  Execução relacionando despesa e orçamento -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
EXECUCAO_3MUN 'Benefícios -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do município '
EXECUCAO_3EST 'Benefícios -  Execução relacionando despesa e orçamento -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
EXECUCAO_4MUN 'Gestão -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do município '
EXECUCAO_4EST 'Gestão -  Execução relacionando despesa e orçamento -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
EXECUCAO_5MUN 'Outros -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do município '
EXECUCAO_5EST 'Outros -  Execução relacionando despesa e orçamento -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
EXECUCAO_6MUN 'Total -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do município '
EXECUCAO_6EST 'Total -  Execução relacionando despesa e orçamento -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
.



IF(		EXECUCAO_1MUN	>=	10	|
		EXECUCAO_1EST	>=	10	|
		EXECUCAO_2MUN	>=	10	|
		EXECUCAO_2EST	>=	10	|
		EXECUCAO_3MUN	>=	10	|
		EXECUCAO_3EST	>=	10	|
		EXECUCAO_4MUN	>=	10	|
		EXECUCAO_4EST	>=	10	|
		EXECUCAO_5MUN	>=	10	|
		EXECUCAO_5EST	>=	10	|
		EXECUCAO_6MUN	>=	10	|
		EXECUCAO_6EST	>=	10)	
LIMP_EXECUCAO=1.				
EXECUTE.				




VARIABLE LABELS
LIMP_EXECUCAO  'Limpeza outlier_ para municípios que executam um valor 10 vezes maior do que o valor orçado '.


***************************************************************************************************************************************
*Passo 4 - Identificar as variáveis que superam a linha de 400 reais per capita
***************************************************************************************************************************************



IF(	q_8_1_1_1_POP		>=	400	|
	q_8_1_2_1_POP		>=	400	|
	q_8_2_1_1_POP		>=	400	|
	q_8_2_2_1_POP		>=	400	|
	q_8_1_1_2_POP		>=	400	|
	q_8_1_2_2_POP		>=	400	|
	q_8_2_1_2_POP		>=	400	|
	q_8_2_2_2_POP		>=	400	|
	q_8_1_1_3_POP		>=	400	|
	q_8_1_2_3_POP		>=	400	|
	q_8_2_1_3_POP		>=	400	|
	q_8_2_2_3_POP		>=	400	|
	q_8_1_1_4_POP		>=	400	|
	q_8_1_2_4_POP		>=	400	|
	q_8_2_1_4_POP		>=	400	|
	q_8_2_2_4_POP		>=	400	|
	q_8_1_1_5_POP		>=	400	|
	q_8_1_2_5_POP		>=	400	|
	q_8_2_1_5_POP		>=	400	|
	q_8_2_2_5_POP		>=	400	|
	q_8_1_1_6_POP		>=	400	|
	q_8_1_2_6_POP		>=	400	|
	q_8_2_1_6_POP		>=	400	|
	q_8_2_2_6_POP		>=	400)	
LIMP_OUT=1.				
	EXECUTE.				



VARIABLE LABELS
LIMP_OUT  'Limpeza outlier  para variáveis que superam a linha de 400 reais per capita '.



***************************************************************************************************************************************
*Passo 5 - Executar a limpeza dos valores inconsistentes
***************************************************************************************************************************************

IF EXECUCAO_1MUN > 10 q_8_2_1_1=0.777.
IF EXECUCAO_1EST > 10 q_8_2_2_1=0.777.
IF EXECUCAO_2MUN > 10 q_8_2_1_2=0.777.
IF EXECUCAO_2EST > 10 q_8_2_2_2=0.777.
IF EXECUCAO_3MUN > 10 q_8_2_1_3=0.777.
IF EXECUCAO_3EST > 10 q_8_2_2_3=0.777.
IF EXECUCAO_4MUN > 10 q_8_2_1_4=0.777.
IF EXECUCAO_4EST > 10 q_8_2_2_4=0.777.
IF EXECUCAO_5MUN > 10 q_8_2_1_5=0.777.
IF EXECUCAO_5EST > 10 q_8_2_2_5=0.777.
IF EXECUCAO_6MUN > 10 q_8_2_1_6=0.777.
IF EXECUCAO_6EST >10 q_8_2_2_6=0.777.
IF EXECUCAO_1MUN > 10 q_8_1_1_1=0.777.
IF EXECUCAO_1EST > 10 q_8_1_2_1=0.777.
IF EXECUCAO_2MUN > 10 q_8_1_1_2=0.777.
IF EXECUCAO_2EST > 10 q_8_1_2_2=0.777.
IF EXECUCAO_3MUN > 10 q_8_1_1_3=0.777.
IF EXECUCAO_3EST > 10 q_8_1_2_3=0.777.
IF EXECUCAO_4MUN > 10 q_8_1_1_4=0.777.
IF EXECUCAO_4EST > 10 q_8_1_2_4=0.777.
IF EXECUCAO_5MUN > 10 q_8_1_1_5=0.777.
IF EXECUCAO_5EST > 10 q_8_1_2_5=0.777.
IF EXECUCAO_6MUN > 10 q_8_1_1_6=0.777.
IF EXECUCAO_6EST >10q_8_1_2_6=0.777.
execute.

*Alterar o rótulo dos valores para 0.777 = valores inconsistentes

IF	q_8_1_1_1_POP >= 400 	q_8_1_1_1	=	0.777	.
IF	q_8_1_2_1_POP >= 400 	q_8_1_2_1	=	0.777	.
IF	q_8_2_1_1_POP >= 400 	q_8_2_1_1	=	0.777	.
IF	q_8_2_2_1_POP >= 400 	q_8_2_2_1	=	0.777	.
IF	q_8_1_1_2_POP >= 400 	q_8_1_1_2	=	0.777	.
IF	q_8_1_2_2_POP >= 400 	q_8_1_2_2	=	0.777	.
IF	q_8_2_1_2_POP >= 400 	q_8_2_1_2	=	0.777	.
IF	q_8_2_2_2_POP >= 400 	q_8_2_2_2	=	0.777	.
IF	q_8_1_1_3_POP >= 400 	q_8_1_1_3	=	0.777	.
IF	q_8_1_2_3_POP >= 400 	q_8_1_2_3	=	0.777	.
IF	q_8_2_1_3_POP >= 400 	q_8_2_1_3	=	0.777	.
IF	q_8_2_2_3_POP >= 400 	q_8_2_2_3	=	0.777	.
IF	q_8_1_1_4_POP >= 400 	q_8_1_1_4	=	0.777	.
IF	q_8_1_2_4_POP >= 400 	q_8_1_2_4	=	0.777	.
IF	q_8_2_1_4_POP >= 400 	q_8_2_1_4	=	0.777	.
IF	q_8_2_2_4_POP >= 400 	q_8_2_2_4	=	0.777	.
IF	q_8_1_1_5_POP >= 400 	q_8_1_1_5	=	0.777	.
IF	q_8_1_2_5_POP >= 400 	q_8_1_2_5	=	0.777	.
IF	q_8_2_1_5_POP >= 400 	q_8_2_1_5	=	0.777	.
IF	q_8_2_2_5_POP >= 400 	q_8_2_2_5	=	0.777	.
IF	q_8_1_1_6_POP >= 400 	q_8_1_1_6	=	0.777	.
IF	q_8_1_2_6_POP >= 400 	q_8_1_2_6	=	0.777	.
IF	q_8_2_1_6_POP >= 400 	q_8_2_1_6	=	0.777	.
IF	q_8_2_2_6_POP>=400	q_8_2_2_6	=	0.777	.

