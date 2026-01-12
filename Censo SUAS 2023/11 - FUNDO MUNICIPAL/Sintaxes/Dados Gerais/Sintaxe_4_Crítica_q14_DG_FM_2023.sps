
************************************************************************************************************************
Syntax Limpeza de outliers valores numéricos  q12- Questionário Fundo Municipal de Assistência Social
************************************************************************************************************************


RECODE q12_1_1 (ELSE=Copy) INTO q12_1_1_velha.
RECODE q12_2_1 (ELSE=Copy) INTO q12_2_1_velha.
RECODE q12_3_1 (ELSE=Copy) INTO q12_3_1_velha.
RECODE q12_4_1 (ELSE=Copy) INTO q12_4_1_velha.
RECODE q12_1_2 (ELSE=Copy) INTO q12_1_2_velha.
RECODE q12_2_2  (ELSE=Copy) INTO q12_2_2_velha.
RECODE q12_3_2 (ELSE=Copy) INTO q12_3_2_velha.
RECODE q12_4_2 (ELSE=Copy) INTO q12_4_2_velha.
RECODE q12_1_3 (ELSE=Copy) INTO q12_1_3_velha.
RECODE q12_2_3 (ELSE=Copy) INTO q12_2_3_velha.
RECODE q12_3_3 (ELSE=Copy) INTO q12_3_3_velha.
RECODE q12_4_3 (ELSE=Copy) INTO q12_4_3_velha.
RECODE q12_1_4 (ELSE=Copy) INTO q12_1_4_velha.
RECODE q12_2_4 (ELSE=Copy) INTO q12_2_4_velha.
RECODE q12_3_4 (ELSE=Copy) INTO q12_3_4_velha.
RECODE q12_4_4 (ELSE=Copy) INTO q12_4_4_velha.
RECODE q12_1_5 (ELSE=Copy) INTO q12_1_5_velha.
RECODE q12_2_5 (ELSE=Copy) INTO q12_2_5_velha.
RECODE q12_3_5 (ELSE=Copy) INTO q12_3_5_velha. 
RECODE q12_4_5 (ELSE=Copy) INTO q12_4_5_velha.
RECODE q12_1_6 (ELSE=Copy) INTO q12_1_6_velha.
RECODE q12_2_6 (ELSE=Copy) INTO q12_2_6_velha.
RECODE q12_3_6 (ELSE=Copy) INTO q12_3_6_velha.
RECODE q12_4_6 (ELSE=Copy) INTO q12_4_6_velha.
RECODE q12_1_7 (ELSE=Copy) INTO q12_1_7_velha.
RECODE q12_2_7 (ELSE=Copy) INTO q12_2_7_velha.
RECODE q12_3_7 (ELSE=Copy) INTO q12_3_7_velha.
RECODE q12_4_7 (ELSE=Copy) INTO q12_4_7_velha.
EXECUTE.


VARIABLE LABELS
q12_1_1_velha'q12_1_1 RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSB'
q12_2_1_velha'q12_2_1 RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSB'
q12_3_1_velha'q12_3_1 DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSB'
q12_4_1_velha'q12_4_1 DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PSB'
q12_1_2_velha'q12_1_2 RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PSE'
q12_2_2_velha'q12_2_2 RECURSOS FINANCEIROS- Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PSE'
q12_3_2_velha'q12_3_2 DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - PSE'
q12_4_2_velha'q12_4_2 DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - PSE'
q12_1_3_velha'q12_1_3 RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - BENEFICIOS'
q12_2_3_velha'q12_2_3 RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - BENEFICIOS'
q12_3_3_velha'q12_3_3 DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - BENEFICIOS'
q12_4_3_velha'q12_4_3 DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - BENEFICIOS'
q12_1_4_velha'q12_1_4 RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - GESTÃO'
q12_2_4_velha'q12_2_4 RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - GESTÃO'
q12_3_4_velha'q12_3_4 DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - GESTÃO'
q12_4_4_velha'q12_4_4 DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - GESTÃO'
q12_1_5_velha'q12_1_5 RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - PROGRAMAS'
q12_2_5_velha'q12_2_5 RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - PROGRAMAS'
q12_3_5_velha'q12_3_5 DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - PROGRAMAS'
q12_4_5_velha'q12_4_5 DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - PROGRAMAS'
q12_1_6_velha'q12_1_6 RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - OUTROS'
q12_2_6_velha'q12_2_6 RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - OUTROS'
q12_3_6_velha'q12_3_6 DESPESAS PAGAS- Valor da despesa realizada com recursos próprios do município - OUTROS'
q12_4_6_velha'q12_4_6 DESPESAS PAGAS - Valor da despesa realizada com recursos repassados pelo governo estadual - OUTROS'
q12_1_7_velha'q12_1_7 RECURSOS FINANCEIROS - Valor alocado referente aos recursos próprios do município - TOTAL'
q12_2_7_velha'q12_2_7 RECURSOS FINANCEIROS - Valor recebido do governo estadual (Fundo a Fundo e Convênios) - TOTAL'
q12_3_7_velha'q12_3_7 DESPESAS PAGAS - Valor da despesa realizada com recursos próprios do município - TOTAL'
q12_4_7_velha'q12_4_7 DESPESAS PAGAS- Valor da despesa realizada com recursos repassados pelo governo estadual - TOTAL'
.


RECODE q12_1_1_98  q12_2_1_98  q12_3_1_98  q12_4_1_98  q12_1_2_98  q12_2_2_98  q12_3_2_98 q12_4_2_98  q12_1_3_98  q12_2_3_98  q12_3_3_98  q12_4_3_98  q12_1_4_98  q12_2_4_98  q12_3_4_98
q12_4_4_98  q12_1_5_98  q12_2_5_98  q12_3_5_98  q12_4_5_98  q12_1_6_98  q12_2_6_98  q12_3_6_98  q12_4_6_98 q12_1_7_98  q12_2_7_98 q12_3_7_98  q12_4_7_98 (0=SYSMIS).
EXECUTE.



***************************************************************************************************************************************
*Passo 1 - Dividir todas as variáveis de recurso financeiro pela população, para criar um valor per capita.
*Dessa forma, é possível comparar a distribuição para todos os municípios.
***************************************************************************************************************************************

COMPUTE q12_1_1_POP= q12_1_1/Pop_total_2022.
COMPUTE	q12_2_1_POP= q12_2_1/Pop_total_2022.
COMPUTE	q12_3_1_POP= q12_3_1/Pop_total_2022.
COMPUTE	q12_4_1_POP= q12_4_1/Pop_total_2022.
COMPUTE	q12_1_2_POP= q12_1_2/Pop_total_2022.
COMPUTE	q12_2_2_POP= q12_2_2/Pop_total_2022.
COMPUTE	q12_3_2_POP= q12_3_2/Pop_total_2022.
COMPUTE	q12_4_2_POP= q12_4_2/Pop_total_2022.
COMPUTE	q12_1_3_POP= q12_1_3/Pop_total_2022.
COMPUTE	q12_2_3_POP= q12_2_3/Pop_total_2022.
COMPUTE	q12_3_3_POP= q12_3_3/Pop_total_2022.
COMPUTE	q12_4_3_POP= q12_4_3/Pop_total_2022.
COMPUTE	q12_1_4_POP= q12_1_4/Pop_total_2022.
COMPUTE	q12_2_4_POP= q12_2_4/Pop_total_2022.
COMPUTE	q12_3_4_POP= q12_3_4/Pop_total_2022.
COMPUTE	q12_4_4_POP= q12_4_4/Pop_total_2022.
COMPUTE	q12_1_5_POP= q12_1_5/Pop_total_2022.
COMPUTE	q12_2_5_POP= q12_1_5/Pop_total_2022.
COMPUTE	q12_3_5_POP= q12_1_5/Pop_total_2022.
COMPUTE	q12_4_5_POP= q12_1_5/Pop_total_2022.
COMPUTE	q12_1_6_POP= q12_1_6/Pop_total_2022.
COMPUTE	q12_2_6_POP= q12_1_6/Pop_total_2022.
COMPUTE	q12_3_6_POP= q12_1_6/Pop_total_2022.
COMPUTE	q12_4_6_POP= q12_1_6/Pop_total_2022.
COMPUTE	q12_1_7_POP= q12_1_7/Pop_total_2022.
COMPUTE	q12_2_7_POP= q12_2_7/Pop_total_2022.
COMPUTE	q12_3_7_POP= q12_3_7/Pop_total_2022.
COMPUTE	q12_4_7_POP= q12_4_7/Pop_total_2022.
EXECUTE.





***************************************************************************************************************************************
*Passo 2 - Analisar a distribuição
***************************************************************************************************************************************


FREQUENCIES VARIABLES= 
q12_1_1_POP
q12_2_1_POP
q12_3_1_POP
q12_4_1_POP
q12_1_2_POP
q12_2_2_POP
q12_3_2_POP
q12_4_2_POP
q12_1_3_POP
q12_2_3_POP
q12_3_3_POP
q12_4_3_POP
q12_1_4_POP
q12_2_4_POP
q12_3_4_POP
q12_4_4_POP
q12_1_5_POP
q12_2_5_POP
q12_3_5_POP
q12_4_5_POP
q12_1_6_POP
q12_2_6_POP
q12_3_6_POP
q12_4_6_POP
q12_1_7_POP
q12_2_7_POP
q12_3_7_POP
q12_4_7_POP
  /FORMAT=NOTABLE
  /NTILES=4
  /NTILES=10
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN
  /ORDER=ANALYSIS.






*********************************************************************************************************************************************************************************************************************************************
*Passo 3 - Criação de variável de Execução relacionando despesa e orçamento:

* As variáveis q12_1_X (onde X varia de 1 a 7) se referem ao valor dos recursos próprios alocados pelo município no orçamento.
* As variáveis q12_3_X (onde X varia de 1 a 7) se referem ao valor da despesa realizada desses recursos. Assim, se dividirmos a despesa pelo orçamento, temos a execução daquele orçamento.
*Da mesma forma, as variáveis q12_2_X representam o valor repassado pelo Estado e as variáveis q12_4_X  o valor despendido.
*Assim, posteriormente será possível aplicar critério de limpeza que elimine valores inconsistentes, como os municípios que executam um valor 10 vezes maior do que o valor orçado, por exemplo.
*********************************************************************************************************************************************************************************************************************************************


COMPUTE	EXECUCAO_1MUN = q12_3_1/q12_1_1.
COMPUTE	EXECUCAO_1EST = q12_4_1/q12_2_1.

COMPUTE	EXECUCAO_2MUN = q12_3_2/q12_1_2.
COMPUTE	EXECUCAO_2EST = q12_4_2/q12_2_2.

COMPUTE	EXECUCAO_3MUN = q12_3_3/q12_1_3.
COMPUTE	EXECUCAO_3EST = q12_4_3/q12_2_3.

COMPUTE	EXECUCAO_4MUN = q12_3_4/q12_1_4.
COMPUTE	EXECUCAO_4EST = q12_4_4/q12_2_4.

COMPUTE	EXECUCAO_5MUN = q12_3_5/q12_1_5.
COMPUTE	EXECUCAO_5EST = q12_4_5/q12_2_5.

COMPUTE	EXECUCAO_6MUN = q12_3_6/q12_1_6.
COMPUTE	EXECUCAO_6EST = q12_4_6/q12_2_6.

COMPUTE	EXECUCAO_7MUN = q12_3_7/q12_1_7.
COMPUTE	EXECUCAO_7EST = q12_4_7/q12_2_7.
EXECUTE.



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
                                    EXECUCAO_7MUN	>=	10         	|
		EXECUCAO_7EST	>=	10)	
LIMP_EXECUCAO=1.				
EXECUTE.				




VARIABLE LABELS
LIMP_EXECUCAO  'Limpeza outlier_ para municípios que executam um valor 10 vezes maior do que o valor orçado '.


***************************************************************************************************************************************
*Passo 4 - Identificar as variáveis que superam a linha de 400 reais per capita;
***************************************************************************************************************************************



IF(	q12_1_1_POP		>=	400	|
	q12_2_1_POP		>=	400	|
	q12_3_1_POP		>=	400	|
	q12_4_1_POP		>=	400	|
	q12_1_2_POP		>=	400	|
	q12_2_2_POP		>=	400	|
	q12_3_2_POP		>=	400	|
	q12_4_2_POP		>=	400	|
	q12_1_3_POP		>=	400	|
	q12_2_3_POP		>=	400	|
	q12_3_3_POP		>=	400	|
	q12_4_3_POP		>=	400	|
	q12_1_4_POP		>=	400	|
	q12_2_4_POP		>=	400	|
	q12_3_4_POP		>=	400	|
	q12_4_4_POP		>=	400	|
	q12_1_5_POP		>=	400	|
	q12_2_5_POP		>=	400	|
	q12_3_5_POP		>=	400	|
	q12_4_5_POP		>=	400	|
	q12_1_6_POP		>=	400	|
	q12_2_6_POP		>=	400	|
	q12_3_6_POP		>=	400	|
	q12_4_6_POP		>=	400	|
	q12_1_7_POP		>=	400	|
	q12_2_7_POP		>=	400	|
	q12_3_7_POP		>=	400	|
	q12_4_7_POP		>=	400)
LIMP_OUT=1.				
	EXECUTE.				



VARIABLE LABELS
LIMP_OUT  'Limpeza outlier  para variáveis que superam a linha de 400 reais per capita '.


IF  (LIMP_EXECUCAO = 1 | LIMP_OUT = 1) Limp_q12=1.
EXECUTE.


***************************************************************************************************************************************
*Passo 5 - Executar a limpeza dos valores inconsistentes
***************************************************************************************************************************************


*Passo 1 - Limpeza de valores outliers para municípios que executam um valor 10 vezes maior do que o valor orçado


*Transformar em missing as variáveis identificadas onde a execução é > 10 vezes o valor orçado.
*Quando for identificada a execução >10 vezes, a limpeza acontece nas duas variáveis, tanto a de orçamento quanto a de despesa.

DO IF (EXECUCAO_1MUN>10).		
RECODE	q12_1_1	 (ELSE=SYSMIS).
RECODE	q12_2_1	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_1EST>10).		
RECODE	q12_3_1	 (ELSE=SYSMIS).
RECODE	q12_4_1	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_2MUN>10).		
RECODE	q12_1_2	 (ELSE=SYSMIS).
RECODE	q12_2_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_2EST>10).		
RECODE	q12_3_2	 (ELSE=SYSMIS).
RECODE	q12_4_2	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_3MUN>10).		
RECODE	q12_1_3	 (ELSE=SYSMIS).
RECODE	q12_2_3	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_3EST>10).		
RECODE	q12_3_3	 (ELSE=SYSMIS).
RECODE	q12_4_3	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_4MUN>10).		
RECODE	q12_1_4	 (ELSE=SYSMIS).
RECODE	q12_2_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_4EST>10).		
RECODE	q12_3_4	 (ELSE=SYSMIS).
RECODE	q12_4_4	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_5MUN>10).		
RECODE	q12_1_5	 (ELSE=SYSMIS).
RECODE	q12_2_5	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_5EST>10).		
RECODE	q12_3_5	 (ELSE=SYSMIS).
RECODE	q12_4_5	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_6MUN>10).		
RECODE	q12_1_6	 (ELSE=SYSMIS).
RECODE	q12_2_6	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_6EST>10).		
RECODE	q12_3_6	 (ELSE=SYSMIS).
RECODE	q12_4_6	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_7MUN>10).		
RECODE	q12_1_7	 (ELSE=SYSMIS).
RECODE	q12_2_7	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		
		
DO IF (EXECUCAO_7EST>10).		
RECODE	q12_3_7	 (ELSE=SYSMIS).
RECODE	q12_4_7	 (ELSE=SYSMIS).
END IF.		
EXECUTE.		

*Passo 2 - Limpeza outlier_ para municípios que superam o valor de 400 reais per capita para qualquer dos indicadores até o item 6 e maior do que 500 reais para as variáveis referentes ao total (q12_1_7 a (q12_4_7)

DO IF (q12_1_1_POP>=400).			
RECODE	q12_1_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_2_1_POP>=400).			
RECODE	q12_2_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_3_1_POP>=400).			
RECODE	q12_3_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_4_1_POP>=400).			
RECODE	q12_4_1	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_1_2_POP>=400).			
RECODE	q12_1_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_2_2_POP>=400).			
RECODE	q12_2_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_3_2_POP>=400).			
RECODE	q12_3_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_4_2_POP>=400).			
RECODE	q12_4_2	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_1_3_POP>=400).			
RECODE	q12_1_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_2_3_POP>=400).			
RECODE	q12_2_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_3_3_POP>=400).			
RECODE	q12_3_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_4_3_POP>=400).			
RECODE	q12_4_3	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_1_4_POP>=400).			
RECODE	q12_1_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_2_4_POP>=400).			
RECODE	q12_2_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_3_4_POP>=400).			
RECODE	q12_3_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_4_4_POP>=400).			
RECODE	q12_4_4	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_1_5_POP>=400).			
RECODE	q12_1_5	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_2_5_POP>=400).			
RECODE	q12_2_5	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_3_5_POP>=400).			
RECODE	q12_3_5	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_4_5_POP>=400).			
RECODE	q12_4_5	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_1_6_POP>=400).			
RECODE	q12_1_6	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_2_6_POP>=400).			
RECODE	q12_2_6	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_3_6_POP>=400).			
RECODE	q12_3_6	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_4_6_POP>=400).			
RECODE	q12_4_6	 (ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_1_7_POP>=400).			
RECODE	 q12_1_7	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_2_7_POP>=400).			
RECODE	 q12_2_7	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_3_7_POP>=400).			
RECODE	 q12_3_7	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			
			
DO IF (q12_4_7_POP>=400).			
RECODE q12_4_7	(ELSE=SYSMIS).	
END IF.			
EXECUTE.			


****************************

DELETE VARIABLES
q12_1_1_POP
q12_2_1_POP
q12_3_1_POP
q12_4_1_POP
q12_1_2_POP
q12_2_2_POP
q12_3_2_POP
q12_4_2_POP
q12_1_3_POP
q12_2_3_POP
q12_3_3_POP
q12_4_3_POP
q12_1_4_POP
q12_2_4_POP
q12_3_4_POP
q12_4_4_POP
q12_1_5_POP
q12_2_5_POP
q12_3_5_POP
q12_4_5_POP
q12_1_6_POP
q12_2_6_POP
q12_3_6_POP
q12_4_6_POP
q12_1_7_POP
q12_2_7_POP
q12_3_7_POP
q12_4_7_POP
EXECUCAO_1MUN
EXECUCAO_1EST
EXECUCAO_2MUN
EXECUCAO_2EST
EXECUCAO_3MUN
EXECUCAO_3EST
EXECUCAO_4MUN
EXECUCAO_4EST
EXECUCAO_5MUN
EXECUCAO_5EST
EXECUCAO_6MUN
EXECUCAO_6EST
EXECUCAO_7MUN
EXECUCAO_7EST
LIMP_EXECUCAO
LIMP_OUT.

