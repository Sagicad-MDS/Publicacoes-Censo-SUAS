
************************************************************************************************************************
Syntax Limpeza de outliers valores numéricos  q14- Questionário Fundo Municipal de Assistência Social
************************************************************************************************************************





RECODE q14_1_1 (ELSE=Copy) INTO  q14_1_1_velha.
RECODE q14_1_2 (ELSE=Copy) INTO  q14_1_2_velha.
RECODE q14_1_3 (ELSE=Copy) INTO  q14_1_3_velha.
RECODE q14_1_4  (ELSE=Copy) INTO  q14_1_4_velha.
RECODE q14_2_1 (ELSE=Copy) INTO  q14_2_1_velha.
RECODE q14_2_2 (ELSE=Copy) INTO  q14_2_2_velha.
RECODE q14_2_3 (ELSE=Copy) INTO  q14_2_3_velha.
RECODE q14_2_4 (ELSE=Copy) INTO  q14_2_4_velha.
RECODE q14_3_1 (ELSE=Copy) INTO  q14_3_1_velha.
RECODE q14_3_2 (ELSE=Copy) INTO  q14_3_2_velha.
RECODE q14_3_3 (ELSE=Copy) INTO  q14_3_3_velha.
RECODE q14_3_4 (ELSE=Copy) INTO  q14_3_4_velha.
RECODE q14_4_1 (ELSE=Copy) INTO  q14_4_1_velha.
RECODE q14_4_2 (ELSE=Copy) INTO  q14_4_2_velha.
RECODE q14_4_3 (ELSE=Copy) INTO  q14_4_3_velha.
RECODE q14_4_4 (ELSE=Copy) INTO  q14_4_4_velha.
RECODE q14_5_1 (ELSE=Copy) INTO  q14_5_1_velha.
RECODE q14_5_2 (ELSE=Copy) INTO  q14_5_2_velha.
RECODE q14_5_3  (ELSE=Copy) INTO  q14_5_3_velha.
RECODE q14_5_4 (ELSE=Copy) INTO  q14_5_4_velha.
RECODE q14_6_1 (ELSE=Copy) INTO  q14_6_1_velha.
RECODE q14_6_2 (ELSE=Copy) INTO  q14_6_2_velha.
RECODE q14_6_3 (ELSE=Copy) INTO  q14_6_3_velha.
RECODE q14_6_4 (ELSE=Copy) INTO  q14_6_4_velha.
RECODE q14_7_1 (ELSE=Copy) INTO  q14_7_1_velha.
RECODE q14_7_2 (ELSE=Copy) INTO  q14_7_2_velha.
RECODE q14_7_3 (ELSE=Copy) INTO  q14_7_3_velha.
RECODE q14_7_4 (ELSE=Copy) INTO  q14_7_4_velha.
EXECUTE.







VARIABLE LABELS
q14_1_1_velha'q14_1_1_v13303_14.1.1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSB'
q14_1_2_velha'q14_1_2_v14542_14.2.1. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSB'
q14_1_3_velha'q14_1_3_v14470_14.3.1. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSB'
q14_1_4_velha'q14_1_4_v14543_14.4.1. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PSB'
q14_2_1_velha'q14_2_1_v14544_14.1.2. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSE'
q14_2_2_velha'q14_2_2_v14545_14.2.2. RECURSOS FINANCEIROS- Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSE'
q14_2_3_velha'q14_2_3_v14546_14.3.2. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSE'
q14_2_4_velha'q14_2_4_v14547_14.4.2. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - PSE'
q14_3_1_velha'q14_3_1_v14548_14.1.3. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - BENEFICIOS'
q14_3_2_velha'q14_3_2_v14549_14.2.3. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - BENEFICIOS'
q14_3_3_velha'q14_3_3_v14550_14.3.3. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - BENEFICIOS'
q14_3_4_velha'q14_3_4_v14551_14.4.3. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - BENEFICIOS'
q14_4_1_velha'q14_4_1_v14552_14.1.4. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - GESTÃO'
q14_4_2_velha'q14_4_2_v14553_14.2.4. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - GESTÃO'
q14_4_3_velha'q14_4_3_v14554_14.3.4. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - GESTÃO'
q14_4_4_velha'q14_4_4_v14555_14.4.4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - GESTÃO'
q14_5_1_velha'q14_5_1_v15078_14.1.5. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PROGRAMAS'
q14_5_2_velha'q14_5_2_v14557_14.2.5. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PROGRAMAS'
q14_5_3_velha'q14_5_3_v15080_14.3.5. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - PROGRAMAS'
q14_5_4_velha'q14_5_4_v15081_14.4.5. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PROGRAMAS'
q14_6_1_velha'q14_6_1_v14556_14.1.6. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - OUTROS'
q14_6_2_velha'q14_6_2_v15079_14.2.6. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - OUTROS'
q14_6_3_velha'q14_6_3_v14558_14.3.6. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - OUTROS'
q14_6_4_velha'q14_6_4_v14559_14.4.6. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - OUTROS'
q14_7_1_velha'q14_7_1_v14560_14.1.7. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - TOTAL'
q14_7_2_velha'q14_7_2_v14561_14.2.7. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - TOTAL'
q14_7_3_velha'q14_7_3_v14562_14.3.7. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - TOTAL'
q14_7_4_velha'q14_7_4_v14563_14.4.7. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - TOTAL'
.






***************************************************************************************************************************************
*Passo 1 - Dividir todas as variáveis de recurso financeiro pela população, para criar um valor per capita.
*Dessa forma, é possível comparar a distribuição para todos os municípios.
***************************************************************************************************************************************

COMPUTE q14_1_1_POP= q14_1_1/Pop_total_2010.
COMPUTE	q14_1_2_POP= q14_1_2/Pop_total_2010.
COMPUTE	q14_1_3_POP= q14_1_3/Pop_total_2010.
COMPUTE	q14_1_4_POP= q14_1_4/Pop_total_2010.
COMPUTE	q14_2_1_POP= q14_2_1/Pop_total_2010.
COMPUTE	q14_2_2_POP= q14_2_2/Pop_total_2010.
COMPUTE	q14_2_3_POP= q14_2_3/Pop_total_2010.
COMPUTE	q14_2_4_POP= q14_2_4/Pop_total_2010.
COMPUTE	q14_3_1_POP= q14_3_1/Pop_total_2010.
COMPUTE	q14_3_2_POP= q14_3_2/Pop_total_2010.
COMPUTE	q14_3_3_POP= q14_3_3/Pop_total_2010.
COMPUTE	q14_3_4_POP= q14_3_4/Pop_total_2010.
COMPUTE	q14_4_1_POP= q14_4_1/Pop_total_2010.
COMPUTE	q14_4_2_POP= q14_4_2/Pop_total_2010.
COMPUTE	q14_4_3_POP= q14_4_3/Pop_total_2010.
COMPUTE	q14_4_4_POP= q14_4_4/Pop_total_2010.
COMPUTE	q14_5_1_POP= q14_5_1/Pop_total_2010.
COMPUTE	q14_5_2_POP= q14_5_2/Pop_total_2010.
COMPUTE	q14_5_3_POP= q14_5_3/Pop_total_2010.
COMPUTE	q14_5_4_POP= q14_5_4/Pop_total_2010.
COMPUTE	q14_6_1_POP= q14_6_1/Pop_total_2010.
COMPUTE	q14_6_2_POP= q14_6_2/Pop_total_2010.
COMPUTE	q14_6_3_POP= q14_6_3/Pop_total_2010.
COMPUTE	q14_6_4_POP= q14_6_4/Pop_total_2010.
COMPUTE	q14_7_1_POP= q14_7_1/Pop_Total2010.
COMPUTE	q14_7_2_POP= q14_7_2/Pop_Total2010.
COMPUTE	q14_7_3_POP= q14_7_3/Pop_Total2010.
COMPUTE	q14_7_4_POP= q14_7_4/Pop_Total2010.
EXECUTE.



VARIABLE LABELS
q14_1_1_POP'q14_1_1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSB'
q14_1_2_POP'q14_1_2. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSB'
q14_1_3_POP'q14_1_3. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSB'
q14_1_4_POP'q14_1_4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PSB'
q14_2_1_POP'q14_2_1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSE'
q14_2_2_POP'q14_2_2. RECURSOS FINANCEIROS- Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSE'
q14_2_3_POP'q14_2_3. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSE'
q14_2_4_POP'q14_2_4. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - PSE'
q14_3_1_POP'q14_3_1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - BENEFICIOS'
q14_3_2_POP'q14_3_2. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - BENEFICIOS'
q14_3_3_POP'q14_3_3. DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - BENEFICIOS'
q14_3_4_POP'q14_3_4. DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - BENEFICIOS'
q14_4_1_POP'q14_4_1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - GESTÃO'
q14_4_2_POP'q14_4_2. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - GESTÃO'
q14_4_3_POP'q14_4_3. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - GESTÃO'
q14_4_4_POP'q14_4_4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - GESTÃO'
q14_5_1_POP'q14_5_1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PROGRAMAS'
q14_5_2_POP'q14_5_2. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PROGRAMAS'
q14_5_3_POP'q14_5_3. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - PROGRAMAS'
q14_5_4_POP'q14_5_4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PROGRAMAS'
q14_6_1_POP'q14_6_1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - OUTROS'
q14_6_2_POP'q14_6_2. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - OUTROS'
q14_6_3_POP'q14_6_3. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - OUTROS'
q14_6_4_POP'q14_6_4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - OUTROS'
q14_7_1_POP'q14_7_1. RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - OUTROS'
q14_7_2_POP'q14_7_2. RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - OUTROS'
q14_7_3_POP'q14_7_3. DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - OUTROS'
q14_7_4_POP'q14_7_4. DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - OUTROS'
.
.

***************************************************************************************************************************************
*Passo 2 - Analisar a distribuição
***************************************************************************************************************************************


FREQUENCIES VARIABLES= 
q14_1_1_POP
q14_1_2_POP
q14_1_3_POP
q14_1_4_POP
q14_2_1_POP
q14_2_2_POP
q14_2_3_POP
q14_2_4_POP
q14_3_1_POP
q14_3_2_POP
q14_3_3_POP
q14_3_4_POP
q14_4_1_POP
q14_4_2_POP
q14_4_3_POP
q14_4_4_POP
q14_5_1_POP
q14_5_2_POP
q14_5_3_POP
q14_5_4_POP
q14_6_1_POP
q14_6_2_POP
q14_6_3_POP
q14_6_4_POP
q14_7_1_POP
q14_7_2_POP
q14_7_3_POP
q14_7_4_POP
  /FORMAT=NOTABLE
  /NTILES=4
  /NTILES=10
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.






*********************************************************************************************************************************************************************************************************************************************
*Passo 3 - Criação de variável de Execução relacionando despesa e orçamento:

* As variáveis q14_X_1 (onde X varia de 1 a 7) se referem ao valor dos recursos próprios alocados pelo município no orçamento.
* As variáveis q14_X_2 (onde X varia de 1 a 7) se referem ao valor da despesa realizada desses recursos. Assim, se dividirmos a despesa pelo orçamento, temos a execução daquele orçamento.
*Da mesma forma, as variáveis q14_X_3 representam o valor repassado pelo Estado e as variáveis q14_X_4 o valor despendido.
*Assim, posteriormente será possível aplicar critério de limpeza que elimine valores inconsistentes, como os municípios que executam um valor 10 vezes maior do que o valor orçado, por exemplo.
*********************************************************************************************************************************************************************************************************************************************





COMPUTE	EXECUCAO_1MUN = q14_1_3/q14_1_1.
COMPUTE	EXECUCAO_1EST = q14_1_4/q14_1_2.

COMPUTE	EXECUCAO_2MUN = q14_2_3/q14_2_1.
COMPUTE	EXECUCAO_2EST = q14_2_4/q14_2_2.

COMPUTE	EXECUCAO_3MUN = q14_3_3/q14_3_1.
COMPUTE	EXECUCAO_3EST = q14_3_4/q14_3_2.

COMPUTE	EXECUCAO_4MUN = q14_4_3/q14_4_1.
COMPUTE	EXECUCAO_4EST = q14_4_4/q14_4_2.

COMPUTE	EXECUCAO_5MUN = q14_5_3/q14_5_1.
COMPUTE	EXECUCAO_5EST = q14_5_4/q14_5_2.

COMPUTE	EXECUCAO_6MUN = q14_6_3/q14_6_1.
COMPUTE	EXECUCAO_6EST = q14_6_4/q14_6_2.

COMPUTE	EXECUCAO_7MUN = q14_7_3/q14_7_1.
COMPUTE	EXECUCAO_7EST = q14_7_4/q14_7_2.
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
EXECUCAO_7MUN 'Total -  Execução relacionando despesa e orçamento -  valor alocado referente aos recursos próprios do município '
EXECUCAO_7EST 'Total -  Execução relacionando despesa e orçamento -  Valor recebido do governo estadual (Fundo a Fundo e Convênios)'
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
		EXECUCAO_6EST	>=	10	|
                             EXECUCAO_7MUN	>=	10	|
		EXECUCAO_7EST	>=	10)	
LIMP_EXECUCAO=1.				
EXECUTE.				




VARIABLE LABELS
LIMP_EXECUCAO  'Limpeza outlier_ para municípios que executam um valor 10 vezes maior do que o valor orçado '.


***************************************************************************************************************************************
*Passo 4 - Identificar as variáveis que superam a linha de 400 reais per capita;
***************************************************************************************************************************************



IF(	q14_1_1_POP		>=	400	|
	q14_1_2_POP		>=	400	|
	q14_1_3_POP		>=	400	|
	q14_1_4_POP		>=	400	|
	q14_2_1_POP		>=	400	|
	q14_2_2_POP		>=	400	|
	q14_2_3_POP		>=	400	|
	q14_2_4_POP		>=	400	|
	q14_3_1_POP		>=	400	|
	q14_3_2_POP		>=	400	|
	q14_3_3_POP		>=	400	|
	q14_3_4_POP		>=	400	|
	q14_4_1_POP		>=	400	|
	q14_4_2_POP		>=	400	|
	q14_4_3_POP		>=	400	|
	q14_4_4_POP		>=	400	|
	q14_5_1_POP		>=	400	|
	q14_5_2_POP		>=	400	|
	q14_5_3_POP		>=	400	|
	q14_5_4_POP		>=	400	|
	q14_6_1_POP		>=	400	|
	q14_6_2_POP		>=	400	|
	q14_6_3_POP		>=	400	|
	q14_6_4_POP		>=	400	|
	q14_7_1_POP		>=	500	|
	q14_7_2_POP		>=	500	|
	q14_7_3_POP		>=	500	|
	q14_7_4_POP		>=	500)
LIMP_OUT=1.				
	EXECUTE.				



VARIABLE LABELS
LIMP_OUT  'Limpeza outlier  para variáveis que superam a linha de 400 reais per capita '.



***************************************************************************************************************************************
*Passo 5 - Executar a limpeza dos valores inconsistentes
***************************************************************************************************************************************


*Passo 1 - Limpeza de valores outliers para municípios que executam um valor 10 vezes maior do que o valor orçado


*Transformar em missing as variáveis identificadas onde a execução é > 10 vezes o valor orçado.
*Quando for identificada a execução >10 vezes, a limpeza acontece nas duas variáveis, tanto a de orçamento quanto a de despesa.

DO IF (EXECUCAO_1MUN>10).		
RECODE	q14_1_1	 (ELSE=SYSMIS).
RECODE	q14_1_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_1EST>10).		
RECODE	q14_1_3	 (ELSE=SYSMIS).
RECODE	q14_1_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_2MUN>10).		
RECODE	q14_2_1	 (ELSE=SYSMIS).
RECODE	q14_2_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_2EST>10).		
RECODE	q14_2_3	 (ELSE=SYSMIS).
RECODE	q14_2_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_3MUN>10).		
RECODE	q14_3_1	 (ELSE=SYSMIS).
RECODE	q14_3_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_3EST>10).		
RECODE	q14_3_3	 (ELSE=SYSMIS).
RECODE	q14_3_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_4MUN>10).		
RECODE	q14_4_1	 (ELSE=SYSMIS).
RECODE	q14_4_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_4EST>10).		
RECODE	q14_4_3	 (ELSE=SYSMIS).
RECODE	q14_4_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_5MUN>10).		
RECODE	q14_5_1	 (ELSE=SYSMIS).
RECODE	q14_5_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_5EST>10).		
RECODE	q14_5_3	 (ELSE=SYSMIS).
RECODE	q14_5_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_6MUN>10).		
RECODE	q14_6_1	 (ELSE=SYSMIS).
RECODE	q14_6_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_6EST>10).		
RECODE	q14_6_3	 (ELSE=SYSMIS).
RECODE	q14_6_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_7MUN>10).		
RECODE	q14_7_1	 (ELSE=SYSMIS).
RECODE	q14_7_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_7EST>10).		
RECODE	q14_7_3	 (ELSE=SYSMIS).
RECODE	q14_7_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		

*Passo 2 - Limpeza outlier_ para municípios que superam o valor de 400 reais per capita para qualquer dos indicadores até o item 6 e maior do que 500 reais para as variáveis referentes ao total (q14_7_1 a (q14_7_4)

DO IF (q14_1_1_POP>=400).			
RECODE	q14_1_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_1_2_POP>=400).			
RECODE	q14_1_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_1_3_POP>=400).			
RECODE	q14_1_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_1_4_POP>=400).			
RECODE	q14_1_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_2_1_POP>=400).			
RECODE	q14_2_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_2_2_POP>=400).			
RECODE	q14_2_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_2_3_POP>=400).			
RECODE	q14_2_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_2_4_POP>=400).			
RECODE	q14_2_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_3_1_POP>=400).			
RECODE	q14_3_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_3_2_POP>=400).			
RECODE	q14_3_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_3_3_POP>=400).			
RECODE	q14_3_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_3_4_POP>=400).			
RECODE	q14_3_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_4_1_POP>=400).			
RECODE	q14_4_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_4_2_POP>=400).			
RECODE	q14_4_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_4_3_POP>=400).			
RECODE	q14_4_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_4_4_POP>=400).			
RECODE	q14_4_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_5_1_POP>=400).			
RECODE	q14_5_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_5_2_POP>=400).			
RECODE	q14_5_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_5_3_POP>=400).			
RECODE	q14_5_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_5_4_POP>=400).			
RECODE	q14_5_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_6_1_POP>=400).			
RECODE	q14_6_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_6_2_POP>=400).			
RECODE	q14_6_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_6_3_POP>=400).			
RECODE	q14_6_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_6_4_POP>=400).			
RECODE	q14_6_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_7_1_POP>=500).			
RECODE	 q14_7_1	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_7_2_POP>=500).			
RECODE	 q14_7_2	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_7_3_POP>=500).			
RECODE	 q14_7_3	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q14_7_4_POP>=500).			
RECODE q14_7_4	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			




