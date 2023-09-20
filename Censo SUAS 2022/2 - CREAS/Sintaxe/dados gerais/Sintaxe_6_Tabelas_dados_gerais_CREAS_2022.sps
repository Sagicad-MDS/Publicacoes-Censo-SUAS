* Encoding: UTF-8.

**CENSO SUAS 2022 - CREAS**

****Filtrar Regional /municipal



FREQUENCIES VARIABLES=Região  Porte_pop2010  UF
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q1  
  /ORDER=ANALYSIS.


CTABLES 
  /VLABELS VARIABLES=q1_1_1_1  q1_1_1_2  q1_1_1_3   q1_1_1_0  DISPLAY=LABEL 
  /TABLE q1_1_1_1  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q1_1_1_2  [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q1_1_1_3   [COUNT F40.0, COLPCT.COUNT PCT40.1] + q1_1_1_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q1_1_1_1  q1_1_1_2  q1_1_1_3   q1_1_1_0    ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q1_1.como está organizada a gestão administrativa deste CREAS - Provisão da estrutura física do CREAS (imóvel)'.



CTABLES 
  /VLABELS VARIABLES=q1_1_2_1  q1_1_2_2  q1_1_2_3  q1_1_2_0   DISPLAY=LABEL 
  /TABLE q1_1_2_1  [COUNT F40.0, COLPCT.COUNT PCT40.1] +  q1_1_2_2  [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q1_1_2_3  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q1_1_2_0[COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q1_1_2_1  q1_1_2_2  q1_1_2_3  q1_1_2_0    ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q1_2.como está organizada a gestão administrativa deste CREAS - Provisão de equipamentos e materiais'.



CTABLES 
  /VLABELS VARIABLES=q1_1_3_1  q1_1_3_2 q1_1_3_3  q1_1_3_0  DISPLAY=LABEL 
  /TABLE q1_1_3_1  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q1_1_3_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q1_1_3_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q1_1_3_0 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q1_1_3_1  q1_1_3_2 q1_1_3_3  q1_1_3_0    ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q1_3.como está organizada a gestão administrativa deste CREAS - Provisão de recursos humanos - equipe de referência'.



CTABLES 
  /VLABELS VARIABLES=q1_1_4_1  q1_1_4_2  q1_1_4_3  q1_1_4_0  DISPLAY=LABEL 
  /TABLE q1_1_4_1   [COUNT F40.0, COLPCT.COUNT PCT40.1] + q1_1_4_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q1_1_4_3   [COUNT F40.0, COLPCT.COUNT PCT40.1] + q1_1_4_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q1_1_4_1  q1_1_4_2  q1_1_4_3  q1_1_4_0    ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q1_4.como está organizada a gestão administrativa deste CREAS - Provisão de veículo'.


FREQUENCIES VARIABLES=q1_2  q1_3_1   q1_3_2
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.1_4 'Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados'
(q1_4_1  q1_4_2   q1_4_3  q1_4_4  q1_4_5  q1_4_6  q1_4_7 q1_4_99 (1))
/FREQUENCIES=$mr.1_4.


FREQUENCIES VARIABLES=q1_5 
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q2  q3    d_4 q5 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.6 ' tipo de unidade com a qual este CREAS compartilha o imóvel'
(q6_1  q6_2  q6_3  q6_4 q6_5  q6_6  q6_7  q6_8  q6_9  q6_10  q6_11  q6_12  q6_13  q6_14  q6_15  q6_99 (1)) 
/FREQUENCIES=$mr.6.


MULT RESPONSE GROUPS=$mr.7 ' Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s) '
(q7_1  q7_2  q7_3  q7_4  q7_5  q7_6  q7_7  q7_8  q7_9  q7_10  q7_11  q7_12 (1)) 
/FREQUENCIES=$mr.7.

FREQUENCIES VARIABLES= d_8_atend_categoria    d_8_adm_atend_categoria    d_8_6_banheiros  q8_7  q8_8  q8_9  q8_10
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q9_1 q9_2 q9_3 q9_4 DISPLAY=LABEL
  /TABLE q9_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9_2 [C][COUNT F40.0, ROWPCT.VALIDN  PCT40.1] 
            + q9_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q9_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q9.Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.


MULT RESPONSE GROUPS=$mr.10 'Outras adaptações para assegurar acessibilidade'
(q10_1  q10_2  q10_3  q10_4  q10_5  q10_6  q10_7  q10_0 (1))
/FREQUENCIES=$mr.10.


MULT RESPONSE GROUPS=$mr.11 'q11.Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CREAS'
(q11_1  q11_2  q11_3 q11_4   q11_5  q11_6  q11_7  q11_8  q11_9  q11_10  q11_11  q11_12  q11_13  q11_14  (1)) 
/FREQUENCIES=$mr.11.

FREQUENCIES VARIABLES=d_12_1  d_12_2 q13
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.14 'q14.Ações e atividades desenvolvidas no âmbito do PAEFI'
(q14_1  q14_2 q14_3  q14_4  q14_5 q14_6  q14_7  q14_8  q14_9  q14_10  q14_11  q14_12  q14_13  q14_14  q14_15 q14_16  q14_17  q14_18  q14_19  q14_20  q14_21  q14_22   q14_23 q14_24  q14_25  q14_99 (1))
/FREQUENCIES=$mr.14.


FREQUENCIES VARIABLES=d_15_1  d_15_2
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.16_1 'q12.1 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Violência física'
(q16_1_1 q16_1_2 q16_1_3 q16_1_4 q16_1_0 (1))
/FREQUENCIES=$mr.16_1.

MULT RESPONSE GROUPS=$mr.16_2 'q12.2 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Violência psicológica'
(q16_2_1  q16_2_2 q16_2_3 q16_2_4  q16_2_0(1))  
/FREQUENCIES=$mr.16_2.

MULT RESPONSE GROUPS=$mr.16_3 'q12.3 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Abuso sexual/ Violência Sexual'
(q16_3_1  q16_3_2 q16_3_3 q16_3_4  q16_3_0 (1))
/FREQUENCIES=$mr.16_3.

MULT RESPONSE GROUPS=$mr.16_4 'q16.4 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Exploração sexual'
(q16_4_1  q16_4_2 q16_4_3  q16_4_4  q16_4_0 (1)) 
/FREQUENCIES=$mr.16_4.

MULT RESPONSE GROUPS=$mr.16_5 'q16.5 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Negligência ou abandono'
(q16_5_1 q16_5_2 q16_5_3  q16_5_4  q16_5_0 (1)) 
/FREQUENCIES=$mr.16_5.

MULT RESPONSE GROUPS=$mr.16_6 'q16.6 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Violência patrimonial'
(q16_6_1  q16_6_2 q16_6_3  q16_6_4 q16_6_0(1))
/FREQUENCIES=$mr.16_6.

MULT RESPONSE GROUPS=$mr.16_7 'q16.7 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Tráfico de pessoas'
( q16_7_1 q16_7_2 q16_7_3 q16_7_4 q16_7_0 (1))
/FREQUENCIES=$mr.16_7.

MULT RESPONSE GROUPS=$mr.16_8 'q16.8 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Trabalho em condição análoga à escravidão '
(q16_8_1  q16_8_2  q16_8_3  q16_8_4  q16_8_0 (1))
/FREQUENCIES=$mr.16_8.

MULT RESPONSE GROUPS=$mr.16_9 'q16.9 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Trabalho infantil '
(q16_9_1  q16_9_2  q16_9_3 q16_9_4 q16_9_0 (1))
/FREQUENCIES=$mr.16_9.


MULT RESPONSE GROUPS=$mr.16_10 'q16.10 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Situação de rua '
(q16_10_1  q16_10_2  q16_10_3  q16_10_4  q16_10_0 (1)) 
/FREQUENCIES=$mr.16_10.


MULT RESPONSE GROUPS=$mr.16_11 'q16.11 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Discriminação em decorrência da orientação sexual e/ou da identidade de gênero'
(q16_11_1 q16_11_2 q16_11_3  q16_11_4 q16_11_0 (1)) 
/FREQUENCIES=$mr.16_11.

MULT RESPONSE GROUPS=$mr.16_12 'q16.12 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Discriminação em decorrência da raça/etnia '
(q16_12_1  q16_12_2 q16_12_3  q16_12_4 q16_12_0 (1))
/FREQUENCIES=$mr.16_12.

MULT RESPONSE GROUPS=$mr.16_13 'q16.13 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Pessoas com deficiência vítimas de violência/violação de direitos '
(q16_13_1  q16_13_2  q16_13_3  q16_13_4  q16_13_0 (1))
/FREQUENCIES=$mr.16_13.

MULT RESPONSE GROUPS=$mr.16_14 'q16.14 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Pessoas em situação de imigração (internacional) e/ou refúgio '
(q16_14_1 q16_14_2 q16_14_3 q16_14_4 q16_14_0 (1))
/FREQUENCIES=$mr.16_14.


MULT RESPONSE GROUPS=$mr.17_1 'q17_1  ações e atividades realizadas pelas(os) profissionais deste CREAS: Consultas à comunidade/povo/lideranças '
(q17_1_1 q17_1_2 q17_1_3 q17_1_4  q17_1_5 q17_1_0  (1))
/FREQUENCIES=$mr.17_1.


MULT RESPONSE GROUPS=$mr.17_2 'q17_1  ações e atividades realizadas pelas(os) profissionais deste CREAS: Deslocamento para os territórios desses povos  '
(q17_2_1  q17_2_2  q17_2_3  q17_2_4  q17_2_5  q17_2_0  (1))
/FREQUENCIES=$mr.17_2.


MULT RESPONSE GROUPS=$mr.17_3 'q17_3  ações e atividades realizadas pelas(os) profissionais deste CREAS: Metodologia específica de acompanhamento  '
(q17_3_1  q17_3_2 q17_3_3  q17_3_4  q17_3_5  q17_3_0  (1))
/FREQUENCIES=$mr.17_3.


MULT RESPONSE GROUPS=$mr.17_4 'q17_4  ações e atividades realizadas pelas(os) profissionais deste CREAS: Articulação com Organizações/Movimentos Sociais de promoção e defesa dos direitos desse público '
(q17_4_1  q17_4_2  q17_4_3  q17_4_4  q17_4_5 q17_4_0  (1)) 
/FREQUENCIES=$mr.17_4.


MULT RESPONSE GROUPS=$mr.17_5 'q17_5  ações e atividades realizadas pelas(os) profissionais deste CREAS: Articulação local com órgãos governamentais com atuação junto a esse público (ex. FUNAI, INCRA, Direitos Humanos, DSEI)  '
(q17_5_1  q17_5_2  q17_5_3  q17_5_4  q17_5_5 q17_5_0  (1))
/FREQUENCIES=$mr.17_5.

MULT RESPONSE GROUPS=$mr.17_6 'q17_6  ações e atividades realizadas pelas(os) profissionais deste CREAS: Articulação com Conselho Tutelar para questões específicas desse público  '
(q17_6_1 q17_6_2  q17_6_3  q17_6_4  q17_6_5 q17_6_0  (1)) 
/FREQUENCIES=$mr.17_6.


MULT RESPONSE GROUPS=$mr.17_7 'q17_7  ações e atividades realizadas pelas(os) profissionais deste CREAS: Articulação com o conselho de direitos para questões específicas desse público e outros movimentos sociais  '
(q17_7_1 q17_7_2 q17_7_3  q17_7_4 q17_7_5  q17_7_0  (1))
/FREQUENCIES=$mr.17_7.


MULT RESPONSE GROUPS=$mr.17_8 'q17_8  ações e atividades realizadas pelas(os) profissionais deste CREAS: Ações de mobilização e sensibilização para o enfrentamento das situações de violação de direitos específicas desse público  '
(q17_8_1  q17_8_2 q17_8_3  q17_8_4  q17_8_5  q17_8_0  (1))
/FREQUENCIES=$mr.17_8.


MULT RESPONSE GROUPS=$mr.17_9 'q17_9  ações e atividades realizadas pelas(os) profissionais deste CREAS: Atividades que envolvam a comunidade (mutirões, campanhas, oficinas, seminários etc.)  '
(q17_9_1  q17_9_2 q17_9_3  q17_9_4  q17_9_5 q17_9_0  (1))
/FREQUENCIES=$mr.17_9.


MULT RESPONSE GROUPS=$mr.17_10 'q17_10  ações e atividades realizadas pelas(os) profissionais deste CREAS: Ações específicas com grupo de mulheres para o enfrentamento das situações de violência familiar/doméstica e outras violações de direitos  '
(q17_10_1  q17_10_2  q17_10_3  q17_10_4  q17_10_5 q17_10_0 (1))
/FREQUENCIES=$mr.17_10.

MULT RESPONSE GROUPS=$mr.17_11 'q17_11  ações e atividades realizadas pelas(os) profissionais deste CREAS: Utilização do Nome Social para pessoas travestis e transexuais  '
(q17_11_1  q17_11_2  q17_11_3  q17_11_4  q17_11_5  q17_11_0 (1))
/FREQUENCIES=$mr.17_11.


MULT RESPONSE GROUPS=$mr.18_1 'q18_1  atividades realizadas de atendimento ou acompanhamento para os públicos específicos: Autores (as) de agressão intrafamiliar   '
(q18_1_1 q18_1_2 q18_1_3  q18_1_99 q18_1_0 (1))
/FREQUENCIES=$mr.18_1.


MULT RESPONSE GROUPS=$mr.18_2 'q18_2  atividades realizadas de atendimento ou acompanhamento para os públicos específicos: Egressas(os) do sistema prisional   '
(q18_2_1 q18_2_2  q18_2_3  q18_2_99 q18_2_0 (1))
/FREQUENCIES=$mr.18_2.


MULT RESPONSE GROUPS=$mr.18_3 'q18_3  atividades realizadas de atendimento ou acompanhamento para os públicos específicos: Famílias com pessoas em situação de violação de direito em decorrência do uso de álcool e outras drogas    '
(q18_3_1  q18_3_2  q18_3_3  q18_3_99 q18_3_0 (1))
/FREQUENCIES=$mr.18_3.



MULT RESPONSE GROUPS=$mr.19 'q19  Em relação ao atendimento/acompanhamento de crianças e adolescentes vítimas ou testemunhas de violência e suas famílias, quais ações e atividades são previstas e realizadas pela equipe do PAEFI   '
(q19_1  q19_2  q19_3    q19_4  q19_5  q19_6  q19_7 q19_8  q19_9 q19_10  q19_11  q19_12   q19_13  q19_14  q19_99  q19_0 (1))
/FREQUENCIES=$mr.19.


FREQUENCIES VARIABLES=q20
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.21 'q21   Quando as famílias dos adolescentes em Serviço de Medida Socioeducativa (MSE) são acompanhados pelo Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos (PAEFI)   '
(q21_1  q21_2   q21_3  q21_4  q21_5  q21_6  q21_99 (1))
/FREQUENCIES=$mr.21.


FREQUENCIES VARIABLES=d_22_1  d_22_2  q23
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.24 'q24  Indique as ações e atividades realizadas pelos profissionais deste CREAS no âmbito da Liberdade Assistida (LA)   '
(q24_1 q24_2  q24_3  q24_4  q24_5  q24_6  q24_7  q24_8  q24_9  q24_10  q24_11  q24_12  q24_13  q24_14  q24_15  q24_16 q24_17  q24_18 q24_19 q24_20 (1)) 
/FREQUENCIES=$mr.24.


FREQUENCIES VARIABLES=q25
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.26 'q26 . Indique os principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade   '
(q26_1 q26_2  q26_3  q26_4  q26_5  q26_6  q26_7  q26_8  q26_9  q26_10  q26_11    q26_12  q26_13  q26_99 (1)) 
/FREQUENCIES=$mr.26.


FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.28 'q28 .Quais atividades são realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)  '
(q28_1  q28_2  q28_3  q28_4 q28_5  q28_99 (1)) 
/FREQUENCIES=$mr.28.

MULT RESPONSE GROUPS=$mr.29 'q29 . Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)   '
(q29_1  q29_2  q29_3  q29_4  q29_5 q29_6  q29_7  q29_8  q29_9  q29_10  q29_11  q29_12  q29_13  q29_14  q29_15  q29_16  q29_17  q29_18  q29_19  q29_20  q29_21 (1)) 
/FREQUENCIES=$mr.29.

FREQUENCIES VARIABLES=q30
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.31 'q31 . No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS   '
(q31_1  q31_2  q31_3  q31_4  q31_5  q31_6  q31_7  q31_8  q31_9  q31_10  q31_11  q31_12  q31_13  q31_14  q31_0 (1)) 
/FREQUENCIES=$mr.31.



MULT RESPONSE GROUPS=$mr.32 'q32 . Quais as atividades realizadas pelo Serviço Especializado em Abordagem Social?    '
(q32_1  q32_2  q32_3  q32_4  q32_5  q32_6  q32_7  q32_8  q32_9  q32_10  q32_11  q32_12  q32_13 (1)) 
/FREQUENCIES=$mr.32.


FREQUENCIES VARIABLES=  q33  q34
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.35 'q35 . A Abordagem Social é realizada em parceria com    '
(q35_1  q35_2 q35_3 q35_4  q35_5  q35_6  q35_7  q35_8  q35_9  q35_10  q35_11  q35_12 q35_13  q35_99(1)) 
/FREQUENCIES=$mr.35.


MULT RESPONSE GROUPS=$mr.36 'q36 . A Abordagem Social é realizada em parceria com    '
(q36_1  q36_2  q36_3  q36_4 q36_5 q36_99 (1)) 
/FREQUENCIES=$mr.36.

MULT RESPONSE GROUPS=$mr.37 'q37 . A Abordagem Social é realizada em parceria com    '
(q37_1  q37_2  q37_3 q37_4  q37_5  q37_6 q37_7 q37_0 q37_99  (1)) 
/FREQUENCIES=$mr.37.

FREQUENCIES VARIABLES=  q38  q39  d_40  d_41  q42  q43
  /ORDER=ANALYSIS.   

MULT RESPONSE GROUPS=$mr.44 'q44.  Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias    '
(q44_1  q44_2 q44_3  q44_4  q44_5 q44_6 q44_7  q44_8  q44_9  q44_10  q44_11  q44_12  q44_13 q44_14  q44_15  q44_16  q44_17  q44_18  q44_19  q44_20 q44_21  q44_22  q44_23  q44_24  q44_25  q44_99  (1)) 
/FREQUENCIES=$mr.44.


FREQUENCIES VARIABLES=  q45
  /ORDER=ANALYSIS.   



MULT RESPONSE GROUPS=$mr.46 'q46.  Quais são os Benefícios Eventuais ofertados neste CREAS?    '
(q46_1  q46_2  q46_3  q46_4  (1)) 
/FREQUENCIES=$mr.46.


FREQUENCIES VARIABLES=  q47  q48
  /ORDER=ANALYSIS.   

MULT RESPONSE GROUPS=$mr.49 'q49.  Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação à gestão de benefícios do Programa Bolsa Família:    '
(q49_1  q49_2  q49_3  q49_4 q49_5 q49_6  q49_7  q49_8  q49_9  q49_10  q49_11  q49_12  q49_13  q49_14 q49_99 (1))  
/FREQUENCIES=$mr.49.

MULT RESPONSE GROUPS=$mr.50 'q50.  Indique as ações e atividades desenvolvidas pela equipe desta Unidade em relação às famílias beneficiárias do PBF em descumprimento de condicionalidades:    '
(q50_1  q50_2  q50_3  q50_4  q50_5  q50_6  q50_7  q50_8  q50_9  q50_10 q50_11  q50_12  q50_13  q50_14  q50_15  q50_16  (1))  
/FREQUENCIES=$mr.50.

FREQUENCIES VARIABLES=  q51
  /ORDER=ANALYSIS.   

MULT RESPONSE GROUPS=$mr.52 'q52.  Em 2021 este CREAS atendeu povos e comunidades tradicionais    '
(q52_1  q52_2  q52_3  q52_4  q52_5  q52_6  q52_99  q52_0  (1)) 
/FREQUENCIES=$mr.52.

FREQUENCIES VARIABLES=  q53
  /ORDER=ANALYSIS.   


MULT RESPONSE GROUPS=$mr.54 'q54. Quais mecanismos de participação são utilizados nesta unidade    '
(q54_1 q54_2  q54_3  q54_4  q54_99  (1)) 
/FREQUENCIES=$mr.54.


MULT RESPONSE GROUPS=$mr.55 'q55. Quais os itens compõem o Projeto Técnico-Político da Unidade    '
(q55_1  q55_2  q55_3  q55_4  q55_5  q55_6  q55_7 q55_0  (1)) 
/FREQUENCIES=$mr.55.



FREQUENCIES VARIABLES=   q56_0  q56_1  q56_2  q56_3 q56_4  q56_5  q56_6  q56_7  q56_8  q56_9  q56_10  q56_99  
  /ORDER=ANALYSIS.   


CTABLES
  /VLABELS VARIABLES= q56_1  q56_2  q56_3 q56_4  q56_5  q56_6  q56_7  q56_8  q56_9  q56_10  q56_99     DISPLAY=LABEL
  /TABLE q56_1  [C][COUNT F40.0, ROWPCT.VALIDN  PCT40.1] + q56_2 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q56_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]   
            + q56_4  [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q56_5  [C][COUNT F40.0, ROWPCT.VALIDN  PCT40.1]  + q56_6  [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q56_7   [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
            + q56_8  [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q56_9  [C][COUNT F40.0, ROWPCT.VALIDN  PCT40.1]  + q56_10  [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q56_99   [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q56_1 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_2 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_3 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_4 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_5 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_6 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_7 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_8 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_9 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_10 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56_99 [1, 2, 3, 4, 5,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q561. Como se deu o funcionamento deste CREAS durante a pandemia do Coronavírus e a frequência com isto ocorreu?'.



FREQUENCIES VARIABLES=  q57  q58
  /ORDER=ANALYSIS.   


MULT RESPONSE GROUPS=$mr.59_1 'q59.1 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Acolhimento (abrigos e outros)'
(q59_1_1  q59_1_2  q59_1_3  q59_1_4  q59_1_5  q59_1_6  q59_1_7  q59_1_8 q59_1_0  q59_1_97 (1))
/FREQUENCIES=$mr.59_1.

MULT RESPONSE GROUPS=$mr.59_2 'q59.2 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Centro POP'
(q59_2_1 q59_2_2  q59_2_3  q59_2_4  q59_2_5  q59_2_6  q59_2_7  q59_2_8  q59_2_0 q59_2_97 (1))
/FREQUENCIES=$mr.59_2.

MULT RESPONSE GROUPS=$mr.59_3 'q59.3 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - CRAS'
(q59_3_1  q59_3_2  q59_3_3  q59_3_4  q59_3_5  q59_3_6  q59_3_7  q59_3_8 q59_3_0 q59_3_97 (1))
/FREQUENCIES=$mr.59_3.

MULT RESPONSE GROUPS=$mr.59_4 'q59.4Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Programa de Erradicação do Trabalho Infantil - PETI'
(q59_4_1  q59_4_2  q59_4_3  q59_4_4 q59_4_5  q59_4_6  q59_4_7  q59_4_8  q59_4_0  q59_4_97 (1))
/FREQUENCIES=$mr.59_4.

MULT RESPONSE GROUPS=$mr.59_5 'q59.5  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Política de cultura'
(q59_5_1  q59_5_2  q59_5_3  q59_5_4  q59_5_5  q59_5_6  q59_5_7  q59_5_8  q59_5_0  q59_5_97 (1))
/FREQUENCIES=$mr.59_5.


MULT RESPONSE GROUPS=$mr.59_6 'q59.6  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias'
(q59_6_1 q59_6_2 q59_6_3   q59_6_4 q59_6_5  q59_6_6  q59_6_7  q59_6_8  q59_6_0  q59_6_97 (1))
/FREQUENCIES=$mr.59_6.


MULT RESPONSE GROUPS=$mr.59_7 'q59.7  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Saúde Mental'
(q59_7_1  q59_7_2 q59_7_3  q59_7_4  q59_7_5  q59_7_6  q59_7_7  q59_7_8  q59_7_0  q59_7_97 (1))
/FREQUENCIES=$mr.59_7.

MULT RESPONSE GROUPS=$mr.59_8 'q59.8 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Demais Serviços da rede de Saúde'
(q59_8_1  q59_8_2  q59_8_3  q59_8_4  q59_8_5  q59_8_6  q59_8_7  q59_8_8 q59_8_0  q59_8_97 (1))  
/FREQUENCIES=$mr.59_8.


MULT RESPONSE GROUPS=$mr.59_9 'q59.9  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Educação'
(q59_9_1  q59_9_2  q59_9_3 q59_9_4   q59_9_5  q59_9_6  q59_9_7  q59_9_8  q59_9_0  q59_9_97 (1)) 
/FREQUENCIES=$mr.59_9.

MULT RESPONSE GROUPS=$mr.59_10 'q59.10  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município -  Órgãos responsáveis pela emissão de documentação civil básica'
(q59_10_1  q59_10_2 q59_10_3  q59_10_4  q59_10_5  q59_10_6  q59_10_7  q59_10_8  q59_10_0  q59_10_97 (1))
/FREQUENCIES=$mr.59_10.


MULT RESPONSE GROUPS=$mr.59_11 'q59.11  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços/Programas de Segurança Alimentar'
(q59_11_1  q59_11_2  q59_11_3  q59_11_4  q59_11_5  q59_11_6   q59_11_7 q59_11_8   q59_11_0  q59_11_97 (1))
/FREQUENCIES=$mr.59_11.

MULT RESPONSE GROUPS=$mr.59_12 'q59.12 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Poder Judiciário, Ministério Público, Defensoria Pública'
(q59_12_1  q59_12_2  q59_12_3  q59_12_4  q59_12_5  q59_12_6  q59_12_7 q59_12_8   q59_12_0   q59_12_97  (1))
/FREQUENCIES=$mr.59_12.

MULT RESPONSE GROUPS=$mr.59_13 'q59.13 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Delegacias/ Delegacias Especializadas'
(q59_13_1 q59_13_2  q59_13_3  q59_13_4  q59_13_5  q59_13_6  q59_13_7  q59_13_8  q59_13_0  q59_13_97  (1))
/FREQUENCIES=$mr.59_13.


MULT RESPONSE GROUPS=$mr.59_14 'q59.14 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - OSCs que atuam com defesa de direitos ou que realizam projetos sociais'
(q59_14_1  q59_14_2  q59_14_3  q59_14_4  q59_14_5  q59_14_6 q59_14_7  q59_14_8  q59_14_0  q59_14_97  (1))
/FREQUENCIES=$mr.59_14.

MULT RESPONSE GROUPS=$mr.59_15 'q59.15 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Unidades / Serviços de outros municípios'
(q59_15_1  q59_15_2 q59_15_3  q59_15_4  q59_15_5  q59_15_6  q59_15_7 q59_15_8 q59_15_0  q59_15_97 (1)) 
/FREQUENCIES=$mr.59_15.

MULT RESPONSE GROUPS=$mr.59_16 'q59.16 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Conselho tutelar'
(q59_16_1  q59_16_2  q59_16_3 q59_16_4  q59_16_5  q59_16_6  q59_16_7  q59_16_8  q59_16_0  q59_16_97  (1))  
/FREQUENCIES=$mr.59_16.



FREQUENCIES q60  q61
  /ORDER=ANALYSIS.   









