* Encoding: UTF-8.

**CENSO SUAS 2023- CREAS**

****Filtrar Regional /municipal

FREQUENCIES VARIABLES=Regiao  Porte_pop2022  UF
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

FREQUENCIES VARIABLES=q1_2  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.1_3 'Em qual(is) local(is) a equipe deste CREAS realiza o atendimento às famílias e indivíduos nos municípios vinculados'
(q1_3_1  q1_3_2   q1_3_3  q1_3_4  q1_3_5  q1_3_6  q1_3_7 q1_3_99 (1))
/FREQUENCIES=$mr.1_3.

FREQUENCIES VARIABLES=q1_4
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2  q3    d_4 q5 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.6 ' tipo de unidade com a qual este CREAS compartilha o imóvel'
(q6_1  q6_2  q6_3  q6_4 q6_5  q6_6  q6_7  q6_8  q6_9  q6_10  q6_11  q6_12  q6_13  q6_14  q6_15  q6_99 (1)) 
/FREQUENCIES=$mr.6.


MULT RESPONSE GROUPS=$mr.6_1 ' Especifique quais espaços do imóvel são compartilhados entre o CREAS e a(s) outra(s) Unidade(s) '
(q6_1_1 q6_1_2  q6_1_3  q6_1_4  q6_1_5  q6_1_6  q6_1_7  q6_1_8  q6_1_9  q6_1_10  q6_1_11  q6_1_12 (1))   
/FREQUENCIES=$mr.6_1.

FREQUENCIES VARIABLES= d_7_atend  d_7_atend_categoria  d_7_adm_atend  d_7_adm_atend_categoria   d_7_6_banheiros q7_7  q7_8  q7_9 q7_10
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q8_1 q8_2 q8_3 q8_4 DISPLAY=LABEL
  /TABLE q8_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q8_2 [C][COUNT F40.0, ROWPCT.VALIDN  PCT40.1] 
            + q8_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q8_4 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q8_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q8_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q8_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q8_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q8.Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.


MULT RESPONSE GROUPS=$mr.9 'q9.Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CREAS'
(q9_1  q9_2  q9_3 q9_4   q9_5  q9_6  q9_7  q9_8  q9_9  q9_10  q9_11  q9_12  q9_13  q9_14  (1)) 
/FREQUENCIES=$mr.9.


CTABLES
  /VLABELS VARIABLES=q10_1   q10_2     DISPLAY=DEFAULT
  /TABLE  q10_1 [S][SUM, MEAN, MINIMUM, MAXIMUM] + q10_2 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q10_1   q10_2  [1] EMPTY=INCLUDE.


MULT RESPONSE GROUPS=$mr.11 'q11.Ações e atividades desenvolvidas no âmbito do PAEFI'
(q11_1  q11_2 q11_3  q11_4 q11_5  q11_6   q11_7  q11_8  q11_9  q11_10  q11_11  q11_12  q11_13  q11_14 q11_15  q11_16 q11_17  q11_18  q11_19   q11_20 q11_21     (1))
/FREQUENCIES=$mr.11.


MULT RESPONSE GROUPS=$mr.12_1 'q12.1 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Violência física'
(q12_1_1  q12_1_2  q12_1_3  q12_1_4  q12_1_0 (1))  
/FREQUENCIES=$mr.12_1.

MULT RESPONSE GROUPS=$mr.12_2 'q12.2 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Violência psicológica'
(q12_2_1  q12_2_2  q12_2_3  q12_2_4  q12_2_0  (1))  
/FREQUENCIES=$mr.12_2.

MULT RESPONSE GROUPS=$mr.12_3 'q12.3 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Abuso sexual/ Violência Sexual'
(q12_3_1  q12_3_2  q12_3_3  q12_3_4  q12_3_0 (1))
/FREQUENCIES=$mr.12_3.

MULT RESPONSE GROUPS=$mr.12_4 'q12.4 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Exploração sexual'
(q12_4_1  q12_4_2    q12_4_3  q12_4_4  q12_4_0 (1)) 
/FREQUENCIES=$mr.12_4.

MULT RESPONSE GROUPS=$mr.12_5 'q12.5 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Negligência ou abandono'
(q12_5_1  q12_5_4  q12_5_0  (1)) 
/FREQUENCIES=$mr.12_5.

MULT RESPONSE GROUPS=$mr.12_6 'q12.6 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Violência patrimonial'
(q12_6_2  q12_6_3  q12_6_4  q12_6_0  (1))
/FREQUENCIES=$mr.12_6.

MULT RESPONSE GROUPS=$mr.12_7 'q12.7 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Tráfico de pessoas'
( q12_7_1  q12_7_2  q12_7_3  q12_7_4 q12_7_0  (1))
/FREQUENCIES=$mr.12_7.

MULT RESPONSE GROUPS=$mr.12_8 'q12.8 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Trabalho em condição análoga à escravidão '
(q12_8_1 q12_8_2  q12_8_3  q12_8_4  q12_8_0  (1))
/FREQUENCIES=$mr.12_8.

MULT RESPONSE GROUPS=$mr.16_9 'q16.9 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Trabalho infantil '
(q12_9_1  q12_9_0 (1))
/FREQUENCIES=$mr.16_9.


MULT RESPONSE GROUPS=$mr.12_10 'q12.10 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Situação de rua '
q12_10_1  q12_10_2  q12_10_3  q12_10_4  q12_10_0 (1)
/FREQUENCIES=$mr.12_10.


MULT RESPONSE GROUPS=$mr.12_11 'q12.11 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Discriminação em decorrência da orientação sexual e/ou da identidade de gênero'
(q12_11_1  q12_11_2  q12_11_3  q12_11_4  q12_11_0  (1)) 
/FREQUENCIES=$mr.12_11.

MULT RESPONSE GROUPS=$mr.12_12 'q12.11 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Discriminação em decorrência da identidade de gênero de travestis, mulhertrans, homem trans ou outras'
(q12_12_1  q12_12_2  q12_12_3  q12_12_4  q12_12_0 (1)) 
/FREQUENCIES=$mr.12_12. 

MULT RESPONSE GROUPS=$mr.12_13 'q12.12 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Discriminação em decorrência da raça/etnia '
(q12_13_1  q12_13_2  q12_13_3  q12_13_4  q12_13_0  (1))
/FREQUENCIES=$mr.12_13.

MULT RESPONSE GROUPS=$mr.12_14 'q12.13 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Pessoas com deficiência vítimas de violência/violação de direitos '
(q12_14_1  q12_14_2  q12_14_3  q12_14_4  q12_14_0 (1))
/FREQUENCIES=$mr.12_14.

MULT RESPONSE GROUPS=$mr.12_15 'q12.14 O CREAS oferta atendimento, pelo PAEFI, para as seguintes situações e ciclos de vida - Pessoas em situação de imigração (internacional) e/ou refúgio '
(q12_15_1 q12_15_2  q12_15_3  q12_15_4  q12_15_0 (1))
/FREQUENCIES=$mr.12_15.


FREQUENCIES VARIABLES=q13
  /ORDER=ANALYSIS. 


CTABLES
  /VLABELS VARIABLES= q14_1_1   q14_1_2  q14_2_1  q14_2_2      DISPLAY=DEFAULT
  /TABLE  q14_1_1 [S][SUM, MEAN, MINIMUM, MAXIMUM] + q14_1_2  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q14_2_1  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q14_2_2  [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES= q14_1_1   q14_1_2  q14_2_1  q14_2_2    [1] EMPTY=INCLUDE.


FREQUENCIES VARIABLES=q15
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.16_1 'q16   Indique as ações e atividades realizadas pelos profissionais deste CREAS no âmbito da Liberdade Assistida (LA) '
(q16_1 q16_2 q16_3  q16_4  q16_5  q16_6  q16_7  q16_8  q16_9  q16_10  q16_11  q16_12  q16_13  q16_14   q16_15  q16_16  q16_17  q16_18  q16_19  q16_20  (1)) 
/FREQUENCIES=$mr.16_1.


FREQUENCIES VARIABLES=q17
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.18 'q18  Indique os principais locais onde o(a) adolescente presta serviço à comunidade nesta localidade:  '
(q18_1  q18_2 q18_3  q18_4  q18_5  q18_6  q18_7  q18_8  q18_9  q18_10  q18_11  q18_12  q18_13  q18_99  (1)) 
/FREQUENCIES=$mr.18.


FREQUENCIES VARIABLES=q19
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.20  'q20  Quais atividades são realizadas pelos adolescentes no cumprimento de Prestação de Serviço à Comunidade (PSC)  '
(q20_1  q20_2  q20_3  q20_4  q20_99  (1))
/FREQUENCIES=$mr.20 .


MULT RESPONSE GROUPS=$mr.21 'q21 Indique as ações e atividades realizadas pelas(os) profissionais deste CREAS no âmbito da Prestação de Serviço à Comunidade (PSC)  '
(q21_1  q21_2  q21_3  q21_4  q21_5  q21_6  q21_7  q21_8  q21_9  q21_10  q21_11  q21_12  q21_13 q21_14 q21_15  q21_16  q21_17  q21_18  q21_19  q21_20  q21_21  q21_99  (1)) 
/FREQUENCIES=$mr.21.


FREQUENCIES VARIABLES=q22
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.23 'q23  No caso da execução do Serviço Especializado em Abordagem Social por unidade referenciada, indique as atividades realizadas por este CREAS: '
(q23_1  q23_2  q23_3  q23_4  q23_5  q23_6  q23_7  q23_8  q23_9  q23_10  q23_11  q23_12  q23_13  q23_14  q23_0 (1))
/FREQUENCIES=$mr.23.

MULT RESPONSE GROUPS=$mr.24 'q24  Quais atividades o Serviço Especializado em Abordagem Social realiza?  '
(q24_1  q24_2  q24_3  q24_4  q24_5  q24_6  q24_7  q24_8  q24_9 q24_10  q24_11  q24_12   q24_13  q24_14  q24_15  q24_16  q24_17  (1)) 
/FREQUENCIES=$mr.24.


FREQUENCIES VARIABLES=q25 
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.26 'q26  Em quais períodos costuma ser realizada a abordagem social  '
(q26_1  q26_2  q26_3  q26_4 (1))
/FREQUENCIES=$mr.26.


MULT RESPONSE GROUPS=$mr.27  'q27  A Abordagem Social é realizada em parceria com:  '
(q27_1 q27_2  q27_3  q27_4  q27_5  q27_6  q27_7  q27_8 q27_9  q27_10  q27_11  q27_99  (1))
/FREQUENCIES=$mr.27.


MULT RESPONSE GROUPS=$mr.28 'q28 Como são definidas as áreas onde serão realizadas as abordagens do Serviço Especializado em Abordagem Social? '
(q28_1    q28_2  q28_3  q28_4  q28_5  q28_99  (1))  
/FREQUENCIES=$mr.28.


MULT RESPONSE GROUPS=$mr.29 'q29 Como o Serviço Especializado em Abordagem Social atua para atender crianças/adolescentes em situação de rua desacompanhados (sem adulto responsável)?  '
(q29_1  q29_2  q29_3  q29_4  q29_5  q29_6 q29_7  q29_8  q29_9  q29_99  q29_0 (1))
/FREQUENCIES=$mr.29.

FREQUENCIES VARIABLES=q30   q31 
  /ORDER=ANALYSIS. 


CTABLES
  /VLABELS VARIABLES=q32   DISPLAY=DEFAULT
  /TABLE  q32 [S][SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q32 [1] EMPTY=INCLUDE.


CTABLES
  /VLABELS VARIABLES=q33   DISPLAY=DEFAULT
  /TABLE  q33 [S][SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q33 [1] EMPTY=INCLUDE.


FREQUENCIES VARIABLES=  q34 q35
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.36 'q36  Indique as ações e atividades desenvolvidas no âmbito do Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosas e suas Famílias  '
(q36_1 q36_2 q36_3  q36_4 q36_5 q36_6  q36_7 q36_8    q36_9  q36_10  q36_11  q36_12  q36_13 q36_14  q36_15  q36_16  q36_17  q36_18 q36_19  q36_20   q36_21  q36_22  q36_23  q36_24  q36_25 q36_99 (1))
/FREQUENCIES=$mr.36.


FREQUENCIES VARIABLES=q37
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.38 'q38  Quais são os Benefícios Eventuais ofertados neste CREAS?  '
(q38_1  q38_2  q38_3  q38_4 (1))
/FREQUENCIES=$mr.38.


FREQUENCIES VARIABLES=q39 q40  q41
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.42 'q42 Em 2023 este CREAS atendeu povos e comunidades tradicionais?  '
(q42_1  q42_2  q42_4  q42_3  q42_5  q42_6  q42_99  q42_0 (1))
/FREQUENCIES=$mr.42.

FREQUENCIES VARIABLES=  q43
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.44'q44 Quais mecanismos de participação são utilizados nesta unidade? '
(q44_1 q44_2  q44_3  q44_4  q44_99   (1))
/FREQUENCIES=$mr.44.



MULT RESPONSE GROUPS=$mr.45_1 'q45.1 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Acolhimento (abrigos e outros)'
(q45_1_1  q45_1_2  q45_1_3  q45_1_4  q45_1_5  q45_1_6  q45_1_7  q45_1_8 q45_1_0  q45_1_97 (1))
/FREQUENCIES=$mr.45_1.

MULT RESPONSE GROUPS=$mr.45_2 'q45.2 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Centro POP'
(q45_2_1 q45_2_2  q45_2_3  q45_2_4  q45_2_5  q45_2_6  q45_2_7  q45_2_8  q45_2_0 q45_2_97 (1))
/FREQUENCIES=$mr.45_2.

MULT RESPONSE GROUPS=$mr.45_3 'q45.3 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - CRAS'
(q45_3_1  q45_3_2  q45_3_3  q45_3_4  q45_3_5  q45_3_6  q45_3_7  q45_3_8 q45_3_0 q45_3_97 (1))
/FREQUENCIES=$mr.45_3.

MULT RESPONSE GROUPS=$mr.45_4 'q45.4Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Programa de Erradicação do Trabalho Infantil - PETI'
(q45_4_1  q45_4_2  q45_4_3  q45_4_4 q45_4_5  q45_4_6  q45_4_7  q45_4_8  q45_4_0  q45_4_97 (1))
/FREQUENCIES=$mr.45_4.

MULT RESPONSE GROUPS=$mr.45_5 'q45.5  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Política de cultura'
(q45_5_1  q45_5_2  q45_5_3  q45_5_4  q45_5_5  q45_5_6  q45_5_7  q45_5_8  q45_5_0  q45_5_97 (1))
/FREQUENCIES=$mr.45_5.


MULT RESPONSE GROUPS=$mr.45_6 'q45.6  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviço de proteção especial para pessoas com deficiência, idosas e suas famílias'
(q45_6_1 q45_6_2 q45_6_3   q45_6_4 q45_6_5  q45_6_6  q45_6_7  q45_6_8  q45_6_0  q45_6_97 (1))
/FREQUENCIES=$mr.45_6.


MULT RESPONSE GROUPS=$mr.45_7 'q45.7  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Saúde Mental'
(q45_7_1  q45_7_2 q45_7_3  q45_7_4  q45_7_5  q45_7_6  q45_7_7  q45_7_8  q45_7_0  q45_7_97 (1))
/FREQUENCIES=$mr.45_7.

MULT RESPONSE GROUPS=$mr.45_8 'q45.8 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Demais Serviços da rede de Saúde'
(q45_8_1  q45_8_2  q45_8_3  q45_8_4  q45_8_5  q45_8_6  q45_8_7  q45_8_8 q45_8_0  q45_8_97 (1))  
/FREQUENCIES=$mr.45_8.


MULT RESPONSE GROUPS=$mr.45_9 'q45.9  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Educação'
(q45_9_1  q45_9_2  q45_9_3 q45_9_4   q45_9_5  q45_9_6  q45_9_7  q45_9_8  q45_9_0  q45_9_97 (1)) 
/FREQUENCIES=$mr.45_9.

MULT RESPONSE GROUPS=$mr.45_10 'q45.10  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município -  Órgãos responsáveis pela emissão de documentação civil básica'
(q45_10_1  q45_10_2 q45_10_3  q45_10_4  q45_10_5  q45_10_6  q45_10_7  q45_10_8  q45_10_0  q45_10_97 (1))
/FREQUENCIES=$mr.45_10.


MULT RESPONSE GROUPS=$mr.45_11 'q45.11  Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Serviços/Programas de Segurança Alimentar'
(q45_11_1  q45_11_2  q45_11_3  q45_11_4  q45_11_5  q45_11_6   q45_11_7 q45_11_8   q45_11_0  q45_11_97 (1))
/FREQUENCIES=$mr.45_11.

MULT RESPONSE GROUPS=$mr.45_12 'q45.12 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Poder Judiciário, Ministério Público, Defensoria Pública'
(q45_12_1  q45_12_2  q45_12_3  q45_12_4  q45_12_5  q45_12_6  q45_12_7 q45_12_8   q45_12_0   q45_12_97  (1))
/FREQUENCIES=$mr.45_12.

MULT RESPONSE GROUPS=$mr.45_13 'q45.13 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Delegacias/ Delegacias Especializadas'
(q45_13_1 q45_13_2  q45_13_3  q45_13_4  q45_13_5  q45_13_6  q45_13_7  q45_13_8  q45_13_0  q45_13_97  (1))
/FREQUENCIES=$mr.45_13.


MULT RESPONSE GROUPS=$mr.45_14 'q45.14 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - OSCs que atuam com defesa de direitos ou que realizam projetos sociais'
(q45_14_1  q45_14_2  q45_14_3  q45_14_4  q45_14_5  q45_14_6 q45_14_7  q45_14_8  q45_14_0  q45_14_97  (1))
/FREQUENCIES=$mr.45_14.

MULT RESPONSE GROUPS=$mr.45_15 'q45.15 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Unidades / Serviços de outros municípios'
(q45_15_1  q45_15_2 q45_15_3  q45_15_4  q45_15_5  q45_15_6  q45_15_7 q45_15_8 q45_15_0  q45_15_97 (1)) 
/FREQUENCIES=$mr.45_15.

MULT RESPONSE GROUPS=$mr.45_16 'q45.16 Indique as ações de articulação deste CREAS com os seguintes serviços, programas ou instituições existentes no município - Conselho tutelar'
(q45_16_1  q45_16_2  q45_16_3 q45_16_4  q45_16_5  q45_16_6  q45_16_7  q45_16_8  q45_16_0  q45_16_97  (1))  
/FREQUENCIES=$mr.45_16.



FREQUENCIES q46
  /ORDER=ANALYSIS.   









