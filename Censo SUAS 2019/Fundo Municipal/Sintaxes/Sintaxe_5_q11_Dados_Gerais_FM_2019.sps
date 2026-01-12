* Encoding: UTF-8.

************************************************************************************************************************
Syntax Limpeza de outliers valores numéricos  q11- Questionário Fundo Municipal de Assistência Social
************************************************************************************************************************





RECODE q11_1_1 (ELSE=Copy) INTO  q11_1_1_velha.
RECODE q11_2_1 (ELSE=Copy) INTO  q11_2_1_velha.
RECODE q11_3_1 (ELSE=Copy) INTO  q11_3_1_velha.
RECODE q11_4_1  (ELSE=Copy) INTO  q11_4_1_velha.
RECODE q11_1_2 (ELSE=Copy) INTO  q11_1_2_velha.
RECODE q11_2_2 (ELSE=Copy) INTO  q11_2_2_velha.
RECODE q11_3_2 (ELSE=Copy) INTO  q11_3_2_velha.
RECODE q11_4_2 (ELSE=Copy) INTO  q11_4_2_velha.
RECODE q11_1_3 (ELSE=Copy) INTO  q11_1_3_velha.
RECODE q11_2_3 (ELSE=Copy) INTO  q11_2_3_velha.
RECODE q11_3_3 (ELSE=Copy) INTO  q11_3_3_velha.
RECODE q11_4_3 (ELSE=Copy) INTO  q11_4_3_velha.
RECODE q11_1_4 (ELSE=Copy) INTO  q11_1_4_velha.
RECODE q11_2_4 (ELSE=Copy) INTO  q11_2_4_velha.
RECODE q11_3_4 (ELSE=Copy) INTO  q11_3_4_velha.
RECODE q11_4_4 (ELSE=Copy) INTO  q11_4_4_velha.
RECODE q11_1_5 (ELSE=Copy) INTO  q11_1_5_velha.
RECODE q11_2_6 (ELSE=Copy) INTO  q11_2_6_velha.
RECODE q11_3_5  (ELSE=Copy) INTO  q11_3_5_velha.
RECODE q11_4_5 (ELSE=Copy) INTO  q11_4_5_velha.
RECODE q11_1_6 (ELSE=Copy) INTO  q11_1_6_velha.
RECODE q11_2_5 (ELSE=Copy) INTO  q11_2_5_velha.
RECODE q11_3_6 (ELSE=Copy) INTO  q11_3_6_velha.
RECODE q11_4_6 (ELSE=Copy) INTO  q11_4_6_velha.
EXECUTE.




VARIABLE LABELS
q11_1_1_velha'q11_1_1_v13303_11.1.1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSB'
q11_2_1_velha'q11_2_1_v14542_11.2.1. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSB'
q11_3_1_velha'q11_3_1_v14470_11.3.1. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSB'
q11_4_1_velha'q11_4_1_v14543_11.4.1. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PSB'
q11_1_2_velha'q11_1_2_v14544_11.1.2. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSE'
q11_2_2_velha'q11_2_2_v14545_11.2.2. RECURSOS FINANCEIROS- Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSE'
q11_3_2_velha'q11_3_2_v14546_11.3.2. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSE'
q11_4_2_velha'q11_4_2_v14547_11.4.2. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - PSE'
q11_1_3_velha'q11_1_3_v14548_11.1.3. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - BENEFICIOS'
q11_2_3_velha'q11_2_3_v14549_11.2.3. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - BENEFICIOS'
q11_3_3_velha'q11_3_3_v14550_11.3.3. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - BENEFICIOS'
q11_4_3_velha'q11_4_3_v14551_11.4.3. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - BENEFICIOS'
q11_1_4_velha'q11_1_4_v14552_11.1.4. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - GESTÃO'
q11_2_4_velha'q11_2_4_v14553_11.2.4. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - GESTÃO'
q11_3_4_velha'q11_3_4_v14554_11.3.4. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - GESTÃO'
q11_4_4_velha'q11_4_4_v14555_11.4.4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - GESTÃO'
q11_1_5_velha'q11_1_5_v15078_11.1.5. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PROGRAMAS'
q11_2_6_velha'q11_2_6_v15079_11.2.6. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - OUTROS'
q11_3_5_velha'q11_3_5_v15080_11.3.5. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - PROGRAMAS'
q11_4_5_velha'q11_4_5_v15081_11.4.5. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PROGRAMAS'
q11_1_6_velha'q11_1_6_v14556_11.1.6. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - OUTROS'
q11_2_5_velha'q11_2_5_v14557_11.2.5. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PROGRAMAS'
q11_3_6_velha'q11_3_6_v14558_11.3.6. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - OUTROS'
q11_4_6_velha'q11_4_6_v14559_11.4.6. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - OUTROS'
.






***************************************************************************************************************************************
*Passo 1 - Dividir todas as variáveis de recurso financeiro pela população, para criar um valor per capita.
*Dessa forma, é possível comparar a distribuição para todos os municípios.
***************************************************************************************************************************************

COMPUTE q11_1_1_POP= q11_1_1/Pop_total_2010.
COMPUTE	q11_2_1_POP= q11_2_1/Pop_total_2010.
COMPUTE	q11_3_1_POP= q11_3_1/Pop_total_2010.
COMPUTE	q11_4_1_POP= q11_4_1/Pop_total_2010.
COMPUTE	q11_1_2_POP= q11_1_2/Pop_total_2010.
COMPUTE	q11_2_2_POP= q11_2_2/Pop_total_2010.
COMPUTE	q11_3_2_POP= q11_3_2/Pop_total_2010.
COMPUTE	q11_4_2_POP= q11_4_2/Pop_total_2010.
COMPUTE	q11_1_3_POP= q11_1_3/Pop_total_2010.
COMPUTE	q11_2_3_POP= q11_2_3/Pop_total_2010.
COMPUTE	q11_3_3_POP= q11_3_3/Pop_total_2010.
COMPUTE	q11_4_3_POP= q11_4_3/Pop_total_2010.
COMPUTE	q11_1_4_POP= q11_1_4/Pop_total_2010.
COMPUTE	q11_2_4_POP= q11_2_4/Pop_total_2010.
COMPUTE	q11_3_4_POP= q11_3_4/Pop_total_2010.
COMPUTE	q11_4_4_POP= q11_4_4/Pop_total_2010.
COMPUTE	q11_1_5_POP= q11_1_5/Pop_total_2010.
COMPUTE	q11_2_5_POP= q11_2_5/Pop_total_2010.
COMPUTE	q11_3_5_POP= q11_3_5/Pop_total_2010.
COMPUTE	q11_4_5_POP= q11_4_5/Pop_total_2010.
COMPUTE	q11_1_6_POP= q11_1_6/Pop_total_2010.
COMPUTE	q11_2_6_POP= q11_2_6/Pop_total_2010.
COMPUTE	q11_3_6_POP= q11_3_6/Pop_total_2010.
COMPUTE	q11_4_6_POP= q11_4_6/Pop_total_2010.
COMPUTE	q11_1_7_POP= q11_1_7/Pop_total_2010.
COMPUTE	q11_2_7_POP= q11_2_7/Pop_total_2010.
COMPUTE	q11_3_7_POP= q11_3_7/Pop_total_2010.
COMPUTE	q11_4_7_POP= q11_4_7/Pop_total_2010.
EXECUTE.



VARIABLE LABELS
q11_1_1_POP'q11_1_1_v13303_11.1.1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSB'
q11_2_1_POP'q11_2_1_v14542_11.2.1. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSB'
q11_3_1_POP'q11_3_1_v14470_11.3.1. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSB'
q11_4_1_POP'q11_4_1_v14543_11.4.1. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PSB'
q11_1_2_POP'q11_1_2_v14544_11.1.2. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSE'
q11_2_2_POP'q11_2_2_v14545_11.2.2. RECURSOS FINANCEIROS- Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSE'
q11_3_2_POP'q11_3_2_v14546_11.3.2. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSE'
q11_4_2_POP'q11_4_2_v14547_11.4.2. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - PSE'
q11_1_3_POP'q11_1_3_v14548_11.1.3. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - BENEFICIOS'
q11_2_3_POP'q11_2_3_v14549_11.2.3. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - BENEFICIOS'
q11_3_3_POP'q11_3_3_v14550_11.3.3. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - BENEFICIOS'
q11_4_3_POP'q11_4_3_v14551_11.4.3. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - BENEFICIOS'
q11_1_4_POP'q11_1_4_v14552_11.1.4. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - GESTÃO'
q11_2_4_POP'q11_2_4_v14553_11.2.4. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - GESTÃO'
q11_3_4_POP'q11_3_4_v14554_11.3.4. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - GESTÃO'
q11_4_4_POP'q11_4_4_v14555_11.4.4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - GESTÃO'
q11_1_5_POP'q11_1_5_v15078_11.1.5. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PROGRAMAS'
q11_2_5_POP'q11_2_5_v14557_11.2.5. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PROGRAMAS'
q11_3_5_POP'q11_3_5_v15080_11.3.5. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - PROGRAMAS'
q11_4_5_POP'q11_4_5_v15081_11.4.5. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PROGRAMAS'
q11_1_6_POP'q11_1_6_v14556_11.1.6. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - OUTROS'
q11_2_6_POP'q11_2_6_v15079_11.2.6. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - OUTROS'
q11_3_6_POP'q11_3_6_v14558_11.3.6. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - OUTROS'
q11_4_6_POP'q11_4_6_v14559_11.4.6. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - OUTROS'
.

***************************************************************************************************************************************
*Passo 2 - Analisar a distribuição
***************************************************************************************************************************************


FREQUENCIES VARIABLES= 
q11_1_1_POP
q11_2_1_POP
q11_3_1_POP
q11_4_1_POP
q11_1_2_POP
q11_2_2_POP
q11_3_2_POP
q11_4_2_POP
q11_1_3_POP
q11_2_3_POP
q11_3_3_POP
q11_4_3_POP
q11_1_4_POP
q11_2_4_POP
q11_3_4_POP
q11_4_4_POP
q11_1_5_POP
q11_2_5_POP
q11_3_5_POP
q11_4_5_POP
q11_1_6_POP
q11_2_6_POP
q11_3_6_POP
q11_4_6_POP
  /FORMAT=NOTABLE
  /NTILES=4
  /NTILES=10
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.






*********************************************************************************************************************************************************************************************************************************************
*Passo 3 - Criação de variável de Execução relacionando despesa e orçamento:

* As variáveis q_11_1_1_X (onde X varia de 1 a 6) se referem ao valor dos recursos próprios alocados pelo município no orçamento.
* As variáveis q_11_2_1_X (onde X varia de 1 a 6) se referem ao valor da despesa realizada desses recursos. Assim, se dividirmos a despesa pelo orçamento, temos a execução daquele orçamento.
*Da mesma forma, as variáveis q_11_1_2_X representam o valor repassado pelo Estado e as variáveis q_11_2_2_X o valor despendido.
*Assim, posteriormente será possível aplicar critério de limpeza que elimine valores inconsistentes, como os municípios que executam um valor 10 vezes maior do que o valor orçado, por exemplo.
*********************************************************************************************************************************************************************************************************************************************





COMPUTE	EXECUCAO_1MUN = q11_3_1/q11_1_1.
COMPUTE	EXECUCAO_1EST = q11_4_1/q11_2_1.
COMPUTE	EXECUCAO_2MUN = q11_3_2/q11_1_2.
COMPUTE	EXECUCAO_2EST = q11_4_2/q11_2_2.
COMPUTE	EXECUCAO_3MUN = q11_3_3/q11_1_3.
COMPUTE	EXECUCAO_3EST = q11_4_3/q11_2_3.
COMPUTE	EXECUCAO_4MUN = q11_3_4/q11_2_4.
COMPUTE	EXECUCAO_4EST = q11_4_4/q11_2_4.
COMPUTE	EXECUCAO_5MUN = q11_3_5/q11_1_5.
COMPUTE	EXECUCAO_5EST = q11_4_5/q11_2_5.
COMPUTE	EXECUCAO_6MUN = q11_3_6/q11_1_6.
COMPUTE	EXECUCAO_6EST = q11_4_6/q11_2_6.
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




*** Criação da variável para identificar os municípios que passaram por limpeza nas variáveis de execução financeira
Se A execução ultrapassar 10 vezes ou mais o valor orçado, o valor será limpo.

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
		EXECUCAO_6EST	>=	10 |
  EXECUCAO_7MUN	>=	10	|
		EXECUCAO_7EST	>=	10)	
LIMP_EXECUCAO=1.				
EXECUTE.				




VARIABLE LABELS
LIMP_EXECUCAO  'Limpeza outlier_ para municípios que executam um valor 10 vezes maior do que o valor orçado '.


***************************************************************************************************************************************
*Passo 4 - Identificar as variáveis que superam a linha de 400 reais de orçamento ou de despesa per capita
***************************************************************************************************************************************



IF(	q11_1_1_POP		>=	400	|
	q11_2_1_POP		>=	400	|
	q11_3_1_POP		>=	400	|
	q11_4_1_POP		>=	400	|
	q11_1_2_POP		>=	400	|
	q11_2_2_POP		>=	400	|
	q11_3_2_POP		>=	400	|
	q11_4_2_POP		>=	400	|
	q11_1_3_POP		>=	400	|
	q11_2_3_POP		>=	400	|
	q11_3_3_POP		>=	400	|
	q11_4_3_POP		>=	400	|
	q11_1_4_POP		>=	400	|
	q11_2_4_POP		>=	400	|
	q11_3_4_POP		>=	400	|
	q11_4_4_POP		>=	400	|
	q11_1_5_POP		>=	400	|
	q11_2_5_POP		>=	400	|
	q11_3_5_POP		>=	400	|
	q11_4_5_POP		>=	400	|
	q11_1_6_POP		>=	400	|
	q11_2_6_POP		>=	400	|
	q11_3_6_POP		>=	400	|
	q11_4_6_POP		>=	400 |
q11_1_7_POP		>=	400	|
	q11_2_7_POP		>=	400	|
	q11_3_7_POP		>=	400	|
	q11_4_7_POP		>=	400)	
LIMP_OUT=1.				
	EXECUTE.				




*** Criação da variável para identificar os municípios que passaram por limpeza de outliers. 
*Se qualquer valor orçado ou despesa realizada ultrapassar 400 reais per capita, o valor será limpo.

VARIABLE LABELS
LIMP_OUT  'Limpeza outlier  para variáveis que superam a linha de 400 reais per capita '.



***************************************************************************************************************************************
*Passo 5 - Executar a limpeza dos valores inconsistentes
***************************************************************************************************************************************

*Atribuir o valor 0.777 para os campos que serão limpos 

IF EXECUCAO_1MUN > 10   q11_3_1=0.777.
IF EXECUCAO_1EST > 10   q11_4_1=0.777.
IF EXECUCAO_2MUN > 10   q11_3_2=0.777.
IF EXECUCAO_2EST > 10   q11_4_2=0.777.
IF EXECUCAO_3MUN > 10  q11_3_3=0.777.
IF EXECUCAO_3EST >  10  q11_4_3=0.777.
IF EXECUCAO_4MUN > 10   q11_3_4=0.777.
IF EXECUCAO_4EST > 10   q11_4_4=0.777.
IF EXECUCAO_5MUN > 10  q11_3_5=0.777.
IF EXECUCAO_5EST > 10   q11_4_5=0.777.
IF EXECUCAO_6MUN > 10   q11_3_6=0.777.
IF EXECUCAO_6EST >10    q11_4_6=0.777.
IF EXECUCAO_1MUN > 10   q11_1_1=0.777.
IF EXECUCAO_1EST > 10   q11_2_1=0.777.
IF EXECUCAO_2MUN > 10   q11_1_2=0.777.
IF EXECUCAO_2EST > 10   q11_2_2=0.777.
IF EXECUCAO_3MUN > 10   q11_1_3=0.777.
IF EXECUCAO_3EST > 10   q11_2_3=0.777.
IF EXECUCAO_4MUN > 10   q11_1_4=0.777.
IF EXECUCAO_4EST > 10   q11_2_4=0.777.
IF EXECUCAO_5MUN > 10   q11_1_5=0.777.
IF EXECUCAO_5EST > 10   q11_2_5=0.777.
IF EXECUCAO_6MUN > 10   q11_1_6=0.777.
IF EXECUCAO_6EST >10   q11_2_6=0.777.
execute.


IF	q11_1_1_POP >= 400 	q11_1_1	=	0.777	.
IF	q11_2_1_POP >= 400 	q11_2_1	=	0.777	.
IF	q11_3_1_POP >= 400 	q11_3_1	=	0.777	.
IF	q11_4_1_POP >= 400 	q11_4_1	=	0.777	.
IF	q11_1_2_POP >= 400 	q11_1_2	=	0.777	.
IF	q11_2_2_POP >= 400 	q11_2_2	=	0.777	.
IF	q11_3_2_POP >= 400 	q11_3_2	=	0.777	.
IF	q11_4_2_POP >= 400 	q11_4_2	=	0.777	.
IF	q11_1_3_POP >= 400 	q11_1_3	=	0.777	.
IF	q11_2_3_POP >= 400 	q11_2_3	=	0.777	.
IF	q11_3_3_POP >= 400 	q11_3_3	=	0.777	.
IF	q11_4_3_POP >= 400 	q11_4_3	=	0.777	.
IF	q11_1_4_POP >= 400 	q11_1_4	=	0.777	.
IF	q11_2_4_POP >= 400 	q11_2_4	=	0.777	.
IF	q11_3_4_POP >= 400 	q11_3_4	=	0.777	.
IF	q11_4_4_POP >= 400 	q11_4_4	=	0.777	.
IF	q11_1_5_POP >= 400 	q11_1_5	=	0.777	.
IF	q11_2_5_POP >= 400 	q11_2_5	=	0.777	.
IF	q11_3_5_POP >= 400 	q11_3_5	=	0.777	.
IF	q11_4_5_POP >= 400 	q11_4_5	=	0.777	.
IF	q11_1_6_POP >= 400 	q11_1_6	=	0.777	.
IF	q11_2_6_POP  >= 400 	q11_2_6	=	0.777	.
IF	q11_3_6_POP >= 400 	q11_3_6	=	0.777	.
IF	q11_4_6_POP >=400     q11_4_6	=	0.777	.




*Adicionar um rótulo em que  0.777 = valores inconsistentes.


VALUE LABELS
/q11_1_1	
0.777 'Valores inconsistentes'	
/q11_1_2	
0.777 'Valores inconsistentes'	
/q11_1_3	
	0.777 'Valores inconsistentes'
/q11_1_4	
	0.777 'Valores inconsistentes'
/q11_1_5	
	0.777 'Valores inconsistentes'
/q11_1_6	
	0.777 'Valores inconsistentes'
/q11_2_1	
	0.777 'Valores inconsistentes'
/q11_2_2	
	0.777 'Valores inconsistentes'
/q11_2_3	
	0.777 'Valores inconsistentes'
/q11_2_4	
	0.777 'Valores inconsistentes'
/q11_2_5	
	0.777 'Valores inconsistentes'
/q11_2_6	
	0.777 'Valores inconsistentes'
/q11_3_1	
	0.777 'Valores inconsistentes'
/q11_3_2	
	0.777 'Valores inconsistentes'
/q11_3_3	
	0.777 'Valores inconsistentes'
/q11_3_4	
	0.777 'Valores inconsistentes'
/q11_3_5	
	0.777 'Valores inconsistentes'
/q11_3_6	
	0.777 'Valores inconsistentes'
/q11_4_1	
	0.777 'Valores inconsistentes'
/q11_4_2	
	0.777 'Valores inconsistentes'
/q11_4_3	
	0.777 'Valores inconsistentes'
/q11_4_4	
	0.777 'Valores inconsistentes'
/q11_4_5	
	0.777 'Valores inconsistentes'
/q11_4_6	
	0.777 'Valores inconsistentes'
.
execute.


*Definir o valor 0.777 como "Missing values". Ele continuará a ser mostrado como "0.777", mas não será contabiilizado em nenhuma tabela numérica (soma, média, contagem, e etc.)

MISSING VALUES	q11_1_1	(0.777).
MISSING VALUES	q11_1_2	(0.777).
MISSING VALUES	q11_1_3	(0.777).
MISSING VALUES	q11_1_4	(0.777).
MISSING VALUES	q11_1_5	(0.777).
MISSING VALUES	q11_1_6	(0.777).
MISSING VALUES	q11_2_1	(0.777).
MISSING VALUES	q11_2_2	(0.777).
MISSING VALUES	q11_2_3	(0.777).
MISSING VALUES	q11_2_4	(0.777).
MISSING VALUES	q11_2_5	(0.777).
MISSING VALUES	q11_2_6	(0.777).
MISSING VALUES	q11_3_1	(0.777).
MISSING VALUES	q11_3_2	(0.777).
MISSING VALUES	q11_3_3	(0.777).
MISSING VALUES	q11_3_4	(0.777).
MISSING VALUES	q11_3_5	(0.777).
MISSING VALUES	q11_3_6	(0.777).
MISSING VALUES	q11_4_1	(0.777).
MISSING VALUES	q11_4_2	(0.777).
MISSING VALUES	q11_4_3	(0.777).
MISSING VALUES	q11_4_4	(0.777).
MISSING VALUES	q11_4_5	(0.777).
MISSING VALUES	q11_4_6	(0.777).
EXECUTE.



*Realizar o processo de limpeza dos valores correspondentes aos totais.
Se o municipio teve alguma variável da questão 11 considerada como inconsistente, os totais serão descartados




RECODE q11_1_7 (ELSE=Copy) INTO  q11_1_7_velha.
RECODE q11_2_7 (ELSE=Copy) INTO  q11_2_7_velha.
RECODE q11_3_7 (ELSE=Copy) INTO  q11_3_7_velha.
RECODE q11_4_7 (ELSE=Copy) INTO  q11_4_7_velha.
execute.



IF (LIMP_EXECUCAO=1 | LIMP_OUT=1) q11_1_7 = 0.777.
IF (LIMP_EXECUCAO=1 | LIMP_OUT=1) q11_2_7 = 0.777.
IF (LIMP_EXECUCAO=1 | LIMP_OUT=1) q11_3_7 = 0.777.
IF (LIMP_EXECUCAO=1 | LIMP_OUT=1) q11_4_7 = 0.777.
execute.


VALUE LABELS
/q11_1_7
0.777 'Valores inconsistentes'	
/q11_2_7
0.777 'Valores inconsistentes'	
/q11_3_7
0.777 'Valores inconsistentes'	
/q11_4_7
0.777 'Valores inconsistentes'
.
EXECUTE.


MISSING VALUES	q11_1_7	(0.777).
MISSING VALUES	q11_2_7	(0.777).
MISSING VALUES	q11_3_7	(0.777).
MISSING VALUES	q11_4_7	(0.777).
EXECUTE.



*************************************************************************************************************************************************

CRIAÇÃO DE VARIÁVEIS DERIVADAS

*************************************************************************************************************************************************



COMPUTE	D11_Gasto_proprio_percapita	=	(	q11_3_7	/	Pop_total_2010	)	.
COMPUTE	D11_Cofinanc_estad_percapita	=	(	q11_2_7	/	Pop_total_2011	)	.
COMPUTE	D11_Execucao_recursos_proprios	=	(	q11_3_7	/	q11_1_7	)	.
COMPUTE	D11_Execucao_recursos_recebidos_estado	=	(	q11_4_7	/	q11_2_7	)	.
execute.



VARIABLE LABELS
D11_Gasto_proprio_percapita	 '	Valor total do gasto próprio dividido pela população (Censo IBGE 2010)	'	
D11_Cofinanc_estad_percapita	 '	Valor total do recurso recebido do estado dividido pela população (Censo IBGE 2010)	'	
D11_Execucao_recursos_proprios	 '	Taxa de execução despesa/orçamento -  referente ao total dos recursos próprios do município	'	
D11_Execucao_recursos_recebidos_estado	 '	Taxa de execução despesa/orçamento -  referente ao total dos recursos recebidos do estado	'	
execute.


*Criação dos valores missing: inconsistentes, informou zero e não sabe/não respondeu


DO IF (q11_3_7_98 = 1).
RECODE D11_Gasto_proprio_percapita (MISSING=9999).
END IF.
EXECUTE.


DO IF (q11_3_7 = 0.777).
RECODE D11_Gasto_proprio_percapita (MISSING=7777).
END IF.
EXECUTE.

DO IF (q11_3_7 = 0).
RECODE D11_Gasto_proprio_percapita (0=8888).
END IF.
EXECUTE.


VALUE LABELS
/D11_Gasto_proprio_percapita
7777 'Valores inconsistentes'	
8888 'Informou zero'	
9999 'Não sabe/não respondeu'
.
EXECUTE.


MISSING VALUES	D11_Gasto_proprio_percapita	(7777).
MISSING VALUES	D11_Gasto_proprio_percapita	(8888).
MISSING VALUES	D11_Gasto_proprio_percapita	(9999).

EXECUTE.



DO IF (q11_2_7_98 = 1).
RECODE D11_Cofinanc_estad_percapita (MISSING=9999).
END IF.
EXECUTE.


DO IF (q11_2_7 = 0.777).
RECODE D11_Cofinanc_estad_percapita (MISSING=7777).
END IF.
EXECUTE.

DO IF (q11_2_7 = 0).
RECODE D11_Cofinanc_estad_percapita (0=8888).
END IF.
EXECUTE.


VALUE LABELS
/D11_Cofinanc_estad_percapita 
7777 'Valores inconsistentes'	
8888 'Informou que recebeu zero'	
9999 'Não sabe/não respondeu'
.
EXECUTE.


MISSING VALUES	D11_Cofinanc_estad_percapita (7777).
MISSING VALUES	D11_Cofinanc_estad_percapita (8888).
MISSING VALUES	D11_Cofinanc_estad_percapita	(9999).

EXECUTE.





DO IF (q11_3_7_98 = 1 | q11_1_7_98 = 1).
RECODE D11_Execucao_recursos_proprios (ELSE=9999).
END IF.
EXECUTE.


DO IF (q11_3_7 = 0.777 | q11_1_7=0.777).
RECODE D11_Execucao_recursos_proprios (ELSE=7777).
END IF.
EXECUTE.

DO IF (q11_3_7 = 0).
RECODE D11_Execucao_recursos_proprios (0=8888).
END IF.
EXECUTE.


VALUE LABELS
/D11_Execucao_recursos_proprios
7777 'Valores inconsistentes'	
8888 'Informou orçamento zero'
9999 'Não sabe/não respondeu'
.
EXECUTE.


MISSING VALUES	D11_Execucao_recursos_proprios	(7777).
MISSING VALUES	D11_Execucao_recursos_proprios	(8888).
MISSING VALUES	D11_Execucao_recursos_proprios	(9999).

EXECUTE.







DO IF (q11_4_7_98 = 1 | q11_2_7_98 = 1).
RECODE D11_Execucao_recursos_recebidos_estado (ELSE=9999).
END IF.
EXECUTE.


DO IF (q11_2_7 = 0.777 | q11_4_7=0.777).
RECODE D11_Execucao_recursos_recebidos_estado (ELSE=7777).
END IF.
EXECUTE.

DO IF (q11_2_7 = 0).
RECODE D11_Execucao_recursos_recebidos_estado (0=8888).
END IF.
EXECUTE.


VALUE LABELS
/D11_Execucao_recursos_recebidos_estado
7777 'Valores inconsistentes'	
8888 'Informou ter recebido zero'
9999 'Não sabe/não respondeu'
.
EXECUTE.


MISSING VALUES	D11_Execucao_recursos_recebidos_estado	(7777).
MISSING VALUES	D11_Execucao_recursos_recebidos_estado	(8888).
MISSING VALUES	D11_Execucao_recursos_recebidos_estado	(9999).

EXECUTE.




