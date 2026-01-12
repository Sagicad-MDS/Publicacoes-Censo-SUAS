* Encoding: UTF-8.

**CENSO SUAS 2019 - Centro Dia**

***filtrar estado(1) ou muncipio(2)



FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q1  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.2 'Indique o Público atendido nesta Unidade'
(q2_1 q2_2 q2_3 q2_4 (1))
/FREQUENCIES=$mr.2.


FREQUENCIES VARIABLES=d_3  q4  q6  q7
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.8 'A entidade recebe recursos financeiros da Assistência Social visando à manutenção desse Centro Dia?'
(q8_1 q8_2  q8_3 q8_0 (1))
/FREQUENCIES=$mr.8.


MULT RESPONSE GROUPS=$mr.9 'Esta unidade recebe recursos financeiros de outras políticas públicas visando à manutenção desse Centro Dia?'
(q9_1 q9_2 q9_99 q9_0 (1))
/FREQUENCIES=$mr.9.

MULT RESPONSE GROUPS=$mr.10 'A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
(q10_0 q10_1  q10_2 q10_3 q10_4 q10_5 q10_6 q10_7 q10_8 q10_9 q10_10 q10_99 (1))
/FREQUENCIES=$mr.10.


MULT RESPONSE GROUPS=$mr.11 'Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro'
(q11_1 q11_2 q11_3 q11_4 q11_99 q11_0 (1))
/FREQUENCIES=$mr.11.

FREQUENCIES VARIABLES=q12
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.13 'O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento'
(q13_1 q13_2  q13_3 q13_4 q13_5 q13_6 q13_7 q13_8 q13_9 q13_10 q13_11 q13_12 q13_0 (1))
/FREQUENCIES=$mr.13.


FREQUENCIES VARIABLES= q14
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.15 'O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento'
(q15_1 q15_2  q15_3 q15_4 q15_5 q15_6 (1))
/FREQUENCIES=$mr.15.


FREQUENCIES VARIABLES= q16
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.17 'O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento'
(q17_1 q17_2 q17_3 q17_4 q17_5 q17_99 (1))
/FREQUENCIES=$mr.17.

FREQUENCIES VARIABLES= d_18_atend_categoria  d_18_adm_atend_categoria  d18_total_banheiro_cat
d_18_6_banheiro_trab d_18_7_banheiro_usu  q18_8 q18_9 q18_10 q18_11 q18_12 q18_13 q18_14 q18_15 
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q19_1 q19_2   q19_3 q19_4 DISPLAY=LABEL
  /TABLE q19_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q19_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q19_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q19_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q19_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q19_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q19.condições de acessibilidade para pessoas com deficiência e pessoas idosas nesta Unidade:'.



MULT RESPONSE GROUPS=$mr.20 'há outras adaptações para assegurar a acessibilidade desta unidade?'
(q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 q20_0 (1))
/FREQUENCIES=$mr.20.



MULT RESPONSE GROUPS=$mr.21 'Indique os equipamentos e materiais disponíveis, em perfeito funcionamento, para o desenvolvimento dos Serviços desta unidade'
(q21_1  q21_2 q21_3 q21_4 q21_5 q21_6 q21_7 q21_8 q21_9 q21_10 q21_11 q21_12 q21_13 q21_14 q21_15 q21_16
q21_17 q21_18 q21_19 q21_20 q21_21 q21_22 q21_23 q21_24 q21_25 (1))
/FREQUENCIES=$mr.21.

FREQUENCIES VARIABLES=d21_telefone d21_veiculo 
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.22 'Indique as ações e atividades desenvolvidas no âmbito do “Serviço de Proteção Social Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias” nesta Unidade'
(q22_1 q22_2 q22_3 q22_4 q22_5 q22_6 q22_7 q22_8 q22_9 q22_10 q22_11 q22_12 q22_13 q22_14 q22_15 q22_16
q22_17 q22_18 q22_19 q22_20 q22_21 q22_22 q22_23 q22_24 q22_25 (1))
/FREQUENCIES=$mr.22.



MULT RESPONSE GROUPS=$mr.23 'informe quais das demais atividades são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):'
(q23_1 q23_2  q23_3 q23_4 q23_5 q23_6 q23_7 q23_8 q23_9 q23_10 q23_11 q23_12 q23_13 q23_14 q23_15  q23_16 q23_17
q23_18 q23_19 q23_20 q23_21 q23_22 q23_99 q23_0 (1))
/FREQUENCIES=$mr.23.


FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.25 'Caso possua Plano Individual e/ou Familiar de Atendimento, quais são os itens que compõem este instrumento?'
(q25_1  q25_2 q25_3  q25_4 q25_5 q25_6 q25_7 q25_8 q25_9 q25_10 q25_11 (1))
/FREQUENCIES=$mr.25.


MULT RESPONSE GROUPS=$mr.26 'Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
(q26_1 q26_2 q26_3 q26_4 q26_5 q26_99 (1))
/FREQUENCIES=$mr.26.

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.28 'Quais mecanismos de participação são utilizados nesta unidade?'
(q28_1 q28_2 q28_3 q28_4 q28_5 q28_99 (1))
/FREQUENCIES=$mr.28.


FREQUENCIES VARIABLES=d29_cap_atend_cat  q30  q31 d_32_1 d_32_2  d_32_3  d_32_4  d_32_5 d_32_6
d_32_7_total  d_33_1 d_33_2 d_33_3 d_33_4 d_33_5 d_33_6 d_33_7 d_34_1 d_34_2 d_35
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=q36_1_1 q36_1_2 q36_1_3  q36_1_4 q36_1_5 q36_1_6 q36_1_7 q36_1_8  q36_1_9 q36_1_10 DISPLAY=LABEL 
  /TABLE q36_1_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_1_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q36_1_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_1_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_1_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_1_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_1_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_1_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_1_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_1_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q36_1_1 q36_1_2 q36_1_3  q36_1_4 q36_1_5 q36_1_6 q36_1_7 q36_1_8  q36_1_9 q36_1_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_1.Unidade de acolhimento'.


CTABLES 
  /VLABELS VARIABLES=q36_2_1 q36_2_2 q36_2_3  q36_2_4 q36_2_5 q36_2_6 q36_2_7 q36_2_8  q36_2_9 q36_2_10 DISPLAY=LABEL 
  /TABLE q36_2_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_2_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q36_2_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_2_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_2_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_2_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_2_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_2_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_2_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_2_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q36_2_1 q36_2_2 q36_2_3  q36_2_4 q36_2_5 q36_2_6 q36_2_7 q36_2_8  q36_2_9 q36_2_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_2.CRAS'.


CTABLES 
  /VLABELS VARIABLES=q36_3_1 q36_3_2 q36_3_3  q36_3_4 q36_3_5 q36_3_6 q36_3_7 q36_3_8  q36_3_9 q36_3_10 DISPLAY=LABEL 
  /TABLE q36_3_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_3_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q36_3_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_3_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_3_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_3_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_3_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_3_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_3_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_3_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q36_3_1 q36_3_2 q36_3_3  q36_3_4 q36_3_5 q36_3_6 q36_3_7 q36_3_8  q36_3_9 q36_3_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_3.CREAS'.

CTABLES 
  /VLABELS VARIABLES=q36_4_1 q36_4_2 q36_4_3  q36_4_4 q36_4_5 q36_4_6 q36_4_7 q36_4_8  q36_4_9 q36_4_10 DISPLAY=LABEL 
  /TABLE q36_4_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_4_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q36_4_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_4_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_4_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_4_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_4_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_4_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_4_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_4_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q36_4_1 q36_4_2 q36_4_3  q36_4_4 q36_4_5 q36_4_6 q36_4_7 q36_4_8  q36_4_9 q36_4_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_4.Serviço de Saúde'.



CTABLES 
  /VLABELS VARIABLES=q36_5_1 q36_5_2 q36_5_3  q36_5_4 q36_5_5 q36_5_6 q36_5_7 q36_5_8  q36_5_9 q36_5_10 DISPLAY=LABEL 
  /TABLE q36_5_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_5_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q36_5_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_5_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_5_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_5_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_5_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_5_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_5_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_5_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q36_5_1 q36_5_2 q36_5_3  q36_5_4 q36_5_5 q36_5_6 q36_5_7 q36_5_8  q36_5_9 q36_5_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_5.Serviço de Educação'.

CTABLES 
  /VLABELS VARIABLES=q36_6_1 q36_6_2 q36_6_3  q36_6_4 q36_6_5 q36_6_6 q36_6_7 q36_6_8  q36_6_9 q36_6_10 DISPLAY=LABEL 
  /TABLE q36_6_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_6_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q36_6_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_6_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_6_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_6_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_6_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_6_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q36_6_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q36_6_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q36_6_1 q36_6_2 q36_6_3  q36_6_4 q36_6_5 q36_6_6 q36_6_7 q36_6_8  q36_6_9 q36_6_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_6.Serviço de Justiça/Judiciário'.

MULT RESPONSE GROUPS=$mr.37 'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas? ('
(q37_1 q37_2  q37_3 q37_4 q37_5 q37_6 q37_7  q37_8 q37_9 q37_10 q37_11 q37_12 q37_13 q37_14 q37_99 q37_0 (1))
/FREQUENCIES=$mr.37.



FREQUENCIES VARIABLES=q38   d_38_1  q39
  /ORDER=ANALYSIS.
