* Encoding: UTF-8.

**CENSO SUAS 2023 - CRAS**


FREQUENCIES VARIABLES=Regiao Porte_pop2022  UF
  /ORDER=ANALYSIS.

**BLOCO 2 - ESTRUTURA FÍSICA DO CRAS**

FREQUENCIES VARIABLES=q1  q2_1  q2_2   d2   q3  q4  q5  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.6 'Tipo de unidade com a qual o CRAS compartilha seu imóvel'
(q6_1  q6_2  q6_3  q6_4  q6_5 q6_6  q6_7  q6_8  q6_9  q6_10  q6_11  q6_12  q6_13  q6_99 (1))
/FREQUENCIES=$mr.6.

MULT RESPONSE GROUPS=$mr.7 'Espaços do imóvel que são compartilhados entre o CRAS e a outra unidade'
(q7_1  q7_2 q7_3  q7_4  q7_5  q7_6  q7_7  q7_8 q7_9  q7_10  q7_11 q7_12  (1))
/FREQUENCIES=$mr.7.

FREQUENCIES VARIABLES=   d8_atend_categoria  d8_adm_atend_categoria  d8_6_banheiros  q8_7  q8_8 q8_9 q8_10  q8_11 
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q9_1 q9_2 q9_3 q9_4 DISPLAY=LABEL
  /TABLE q9_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q9_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q9_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q9.Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.



MULT RESPONSE GROUPS=$mr.10 'q10.Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CRAS'
(q10_1 q10_2  q10_3  q10_4  q10_5  q10_6  q10_7  q10_8  q10_9  q10_10  q10_11  q10_12  q10_13 q10_14  q10_15 (1))
/FREQUENCIES=$mr.10.


FREQUENCIES VARIABLES=  d11_1  d11_2
  /ORDER=ANALYSIS. 


**BLOCO 3 - SERVIÇO DE PROTEÇÃO E ATENDIMENTO INTEGRAL À FAMÍLIA***


MULT RESPONSE GROUPS=$mr.12 'q12.Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção e Atendimento Integral à Família (PAIF)'
(q12_1  q12_2  q12_3  q12_4  q12_5   q12_6  q12_7  q12_8  q12_9 q12_10  q12_11   q12_12  q12_13  q12_14  q12_15  q12_16  q12_17   q12_18  q12_19  q12_99 (1))
/FREQUENCIES=$mr.12.


FREQUENCIES q13_categoria   q13_98
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.14 'q_14.Principais tematicas abordadas no atendimento coletivo realizado pelo PAIF'
(q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 q14_10 q14_11 q14_12 q14_13 q14_14 q14_15 q14_16 q14_17 q14_18 q14_19 q14_20 q14_21 q14_22 q14_23 
q14_24 q14_25 q14_26  q14_27 q14_99 (1))
/FREQUENCIES=$mr.14.


**BLOCO 4 - SCFV

FREQUENCIES q15
  /ORDER=ANALYSIS. 


CTABLES
  /VLABELS VARIABLES=q16_1 q16_2 q16_3 q16_4 q16_5 q16_6 DISPLAY=LABEL
  /TABLE q16_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q16_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] +
    q16_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q16_4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q16_5
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q16_6 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES= q16_1 q16_2 q16_3 q16_4 q16_5 q16_6  ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q16. Esta unidade oferta diretamente o Serviço de Convivência e Fortalecimento de Vínculos  '.



MULT RESPONSE GROUPS=$mr.17 'q17. Este CRAS possui rede referenciada para a oferta Serviço de Convivência e Fortalecimento de Vínculos?'
(q17_1  q17_2 q17_3  q17_0 (1))
/FREQUENCIES=$mr.17.


CTABLES
  /VLABELS VARIABLES=q18_1 q18_2 q18_3 q18_4 q18_5 q18_6 DISPLAY=LABEL
  /TABLE q18_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q18_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] +
    q18_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q18_4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q18_5
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q18_6 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES= q18_1 q18_2 q18_3 q18_4 q18_5 q18_6   ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q18. A rede referenciada a este CRAS oferta Serviço de Convivência e Fortalecimento de Vínculos  '.


FREQUENCIES q19  q20 q21  
  /ORDER=ANALYSIS. 


**BLOCO 5 - PSB NO DOMICILIO**

FREQUENCIES  q22   d23_1  d23_2 d23_3 d23_4
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.24 'q24. Este CRAS possui rede referenciada para oferta do Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas?'
(q24_1 q24_2 q24_3  q24_0 (1))
/FREQUENCIES=$mr.24.


FREQUENCIES q25
  /ORDER=ANALYSIS. 


**BLOCO 6 - EQUIPE VOLANTE**


FREQUENCIES q26  q27
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.28 'q28. Quais os territórios atendidos pela equipe volante deste CRAS'
(q28_1 q28_2 q28_3  q28_4  q28_5  q28_6  q28_7  q28_99  (1)) 
/FREQUENCIES=$mr.28.


FREQUENCIES q29
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.30 'q30.Como ocorre  o deslocamento  da equipe  volante '
(q30_1 q30_2  q30_3 q30_4  q30_5  q30_6 q30_7 q30_8 q30_99  (1))
/FREQUENCIES=$mr.30.




**BLOCO 7 - BENEFÍCIOS SOCIOASSISTENCIAIS **

FREQUENCIES q31
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.32 'q32.Quais são os Benefícios Eventuais ofertados (concedido/entregue) neste CRAS?  '
(q32_1 q32_2  q32_3  q32_4  (1))
/FREQUENCIES=$mr.32.


MULT RESPONSE GROUPS=$mr.33 'q33. informe caso o município conceda/entrega Beneficio Eventual em situação de calamidade  '
(q33_1 q33_2 q33_3 q33_4 q33_5  q33_6 q33_7  q33_8 q33_9 q33_99  (1))
/FREQUENCIES=$mr.33.

MULT RESPONSE GROUPS=$mr.34 'q34. Com relação ao Benefício de Prestação Continuada, este CRAS faz  '
(q34_1 q34_2 q34_3 q34_4  q34_5  q34_6  q34_99 q34_0 (1))
/FREQUENCIES=$mr.34.


**BLOCO 8 -CADASTRO ÚNICO**

FREQUENCIES q35
  /ORDER=ANALYSIS. 


FREQUENCIES  d36_1 d36_2  d36_3
  /ORDER=ANALYSIS. 


FREQUENCIES  d37_1  d37_2
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.38 'q38- Ações específicas são feitas para atender demandas de averiguação e revisão cadastral  '
(q38_1  q38_2  q38_3  q38_99 q38_0 (1))
/FREQUENCIES=$mr.38.



CTABLES
  /VLABELS VARIABLES=q39_1 q39_2 q39_3 q39_4 q39_5  q39_99 DISPLAY=LABEL
  /TABLE q39_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q39_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q39_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q39_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]  + q39_5 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]  + q39_99 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q39_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q39_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q39_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q39_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q39_5 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q39_99 [1, 2, 0 OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q39. Indique em quais situações e com qual frequência  a equipe faz entrevistas domiciliares'.


**BLOCO 9 - PROGRAMA BOLSA FAMÍLIA  **

MULT RESPONSE GROUPS=$mr.40 'q40.Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família  '
( q40_0 q40_1 q40_2  q40_3  q40_4  q40_5  q40_6  q40_7  q40_8  q40_9  q40_10  q40_11 (1)) 
/FREQUENCIES=$mr.40.


MULT RESPONSE GROUPS=$mr.41 'q41. Ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias em descumprimento de condicionalidades '
(q41_0 q41_1 q41_2  q41_3 q41_4  q41_5  q41_6  q41_7  q41_8  q41_9  q41_10 q41_99 (1)) 
/FREQUENCIES=$mr.41.


FREQUENCIES q42
  /ORDER=ANALYSIS. 





**BLOCO 10 - GESTÃO E TERRITÓRIO***

FREQUENCIES q43
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.44 'q44. Quais mecanismos de participação são utilizados nesta unidade '
(q44_0  q44_1  q44_2  q44_3  q44_4  q44_99 (1)) 
/FREQUENCIES=$mr.44.


FREQUENCIES q45
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.46 'q46. Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência deste CRAS '
(q46_1  q46_2  q46_3 q46_4  q46_5  q46_6  q46_99 (1)) 
/FREQUENCIES=$mr.46.

MULT RESPONSE GROUPS=$mr.47 'q47. Em 2022, este CRAS atendeu algum dos povos e comunidades tradicionais abaixo listados '
(q47_0  q47_1 q47_2  q47_3  q47_4  q47_5  q47_6 (1)) 
/FREQUENCIES=$mr.47.


MULT RESPONSE GROUPS=$mr.48 'q48. Como foi realizado o atendimento a esses povos '
(q48_1  q48_2  q48_3  q48_99 (1)) 
/FREQUENCIES=$mr.48.




CTABLES
  /VLABELS VARIABLES= q49_1 q49_2 q49_3 q49_4 q49_5  q49_6  q49_7  DISPLAY=LABEL
  /TABLE q49_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q49_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q49_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q49_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]  + q49_5 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]  + q49_6 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q49_7 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q49_1 [0, 1,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q49_2 [0, 1,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q49_3 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q49_4 [0, 1,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q49_5 [0, 1,  OTHERNM]  EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q49_6 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q49_7 [0, 1, OTHERNM]  EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q49.  Para o atendimento a comunidades tradicionais a equipe de referência deste CRAS possui'.






MULT RESPONSE GROUPS=$mr.50_1 'q50.1 Articulação deste CRAS com  Unidades Públicas da Rede de Proteção Social Básica'
(q50_1_1 q50_1_2  q50_1_3  q50_1_4  q50_1_5  q50_1_6  q50_1_7  q50_1_8  q50_1_0  q50_1_9  (1)) 
 /FREQUENCIES=$mr.50_1.

MULT RESPONSE GROUPS=$mr.50_2 'q50.2Articulação deste CRAS com Unidades Conveniadas da Rede de Proteção Social Básica'
(q50_2_1 q50_2_2 q50_2_3   q50_2_4  q50_2_5  q50_2_6  q50_2_7  q50_2_8  q50_2_0 q50_2_9 (1))
/FREQUENCIES=$mr.50_2.

MULT RESPONSE GROUPS=$mr.50_3 'q50.3Articulação deste CRAS com Centro de Referência Especializado em Assistência Social - CREAS'
(q50_3_1 q50_3_2  q50_3_3  q50_3_4  q50_3_5  q50_3_6  q50_3_7  q50_3_8  q50_3_0 q50_3_9 (1)) 
/FREQUENCIES=$mr.50_3.

MULT RESPONSE GROUPS=$mr.50_4 'q50.4Articulação deste CRAS com Outras Unidades da rede de proteção social especial '
(q50_4_1  q50_4_2  q50_4_3  q50_4_4  q50_4_5 q50_4_6 q50_4_7  q50_4_8 q50_4_0  q50_4_9 (1))
/FREQUENCIES=$mr.50_4.

MULT RESPONSE GROUPS=$mr.50_5 'q50.5 Articulação deste CRAS com  Serviços de saúde '
(q50_5_1  q50_5_2  q50_5_3  q50_5_4  q50_5_5 q50_5_6 q50_5_7 q50_5_8 q50_5_0 q50_5_9 (1))
/FREQUENCIES=$mr.50_5.


MULT RESPONSE GROUPS=$mr.50_6 'q50.6  Articulação deste CRAS com  Serviços de educação '
(q50_6_1  q50_6_2  q50_6_3  q50_6_4 q50_6_5  q50_6_6  q50_6_7  q50_6_8  q50_6_0 q50_6_9 (1))
/FREQUENCIES=$mr.50_6.


MULT RESPONSE GROUPS=$mr.50_7 'q50.7  Articulação deste CRAS com  Órgãos/Serviços relacionados a trabalho e emprego  '
(q50_7_1  q50_7_2  q50_7_3  q50_7_4  q50_7_5  q50_7_6  q50_7_7  q50_7_8  q50_7_0 q50_7_9 (1))
/FREQUENCIES=$mr.50_7.

MULT RESPONSE GROUPS=$mr.50_8 'q50.8 Articulação deste CRAS com  Movimentos sociais locais/Associações comunitárias'
(q50_8_1  q50_8_2  q50_8_3  q50_8_4  q50_8_5  q50_8_6  q50_8_7 q50_8_8 q50_8_0 q50_8_9 (1))
/FREQUENCIES=$mr.50_8.


MULT RESPONSE GROUPS=$mr.50_9 'q50.9  Articulação deste CRAS com  Conselho Tutelar  '
(q50_9_1  q50_9_2  q50_9_3  q50_9_4  q50_9_5  q50_9_6 q50_9_7 q50_9_8 q50_9_0 q50_9_9 (1))
/FREQUENCIES=$mr.50_9.


MULT RESPONSE GROUPS=$mr.50_10 'q50.10 Articulação deste CRAS com  Judiciário '
(q50_10_1  q50_10_2  q50_10_3  q50_10_4  q50_10_5  q50_10_6 q50_10_7 q50_10_8 q50_10_0 q50_10_9 (1))
/FREQUENCIES=$mr.50_10.




**BLOCO 11 - GESTÃO DE PESSOAS**


FREQUENCIES q51
  /ORDER=ANALYSIS.   

