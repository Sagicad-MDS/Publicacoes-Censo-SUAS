* Encoding: UTF-8.

**CENSO SUAS 2018 - Centro Dia**

***filtrar estado(0) ou muncipio(1)



FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q_1  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.2 'Indique o Público atendido nesta Unidade'
(q_2_1 q_2_2 q_2_3 q_2_4 (1))
/FREQUENCIES=$mr.2.


FREQUENCIES VARIABLES=d_3  q_4  q_6  q_7
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.8 'A entidade recebe recursos financeiros da Assistência Social visando à manutenção desse Centro Dia?'
(q_8_1 q_8_2  q_8_3 q_8_0 (1))
/FREQUENCIES=$mr.8.


MULT RESPONSE GROUPS=$mr.9 'Esta unidade recebe recursos financeiros de outras políticas públicas visando à manutenção desse Centro Dia?'
(q_9_1 q_9_2 q_9_3 q_9_0 (1))
/FREQUENCIES=$mr.9.

MULT RESPONSE GROUPS=$mr.10 'A entidade recebe outras formas de apoio do poder público municipal, estadual ou do Distrito Federal?'
(q_10_0 q_10_1  q_10_2 q_10_3 q_10_4 q_10_5 q_10_6 q_10_7 q_10_8 q_10_9 q_10_10 q_10_99 (1))
/FREQUENCIES=$mr.10.


MULT RESPONSE GROUPS=$mr.11 'Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscrição/registro'
(q_11_1 q_11_2 q_11_3 q_11_4 q_11_99 q_11_0 (1))
/FREQUENCIES=$mr.11.

FREQUENCIES VARIABLES=q_12
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.13 'O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento'
(q_13_1 q_13_2  q_13_3 q_13_4 q_13_5 q_13_6 q_13_7 q_13_8 q_13_9 q_13_10 q_13_11 q_13_12 q_13_0 (1))
/FREQUENCIES=$mr.13.


FREQUENCIES VARIABLES= q_14
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.15 'O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento'
(q_15_1 q_15_2  q_15_3 q_15_4 q_15_5 q_15_6 (1))
/FREQUENCIES=$mr.15.


FREQUENCIES VARIABLES= q_16
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.17 'O Centro de Referência Especializado de Assistência Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento'
(q_17_1 q_17_2 q_17_3 q_17_4 q_17_5 q_17_99 (1))
/FREQUENCIES=$mr.17.

FREQUENCIES VARIABLES=d_18_atend d_18_atend_categoria d_18_adm_atend d_18_adm_atend_categoria d18_total_banheiros d18_total_banheiro_cat
d_18_6_banheiro_trab d_18_7_banheiro_usu  q_18_8 q_18_9 q_18_10 q_18_11 q_18_12 q_18_13 q_18_14 q_18_15 
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q_19_1 q_19_2   q_19_3 q_19_4 DISPLAY=LABEL
  /TABLE q_19_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q_19_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q_19_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q_19_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q_19_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_19_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_19_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_19_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q_19.condições de acessibilidade para pessoas com deficiência e pessoas idosas nesta Unidade:'.



MULT RESPONSE GROUPS=$mr.20 'há outras adaptações para assegurar a acessibilidade desta unidade?'
(q_20_1 q_20_2 q_20_3 q_20_4 q_20_5 q_20_6 q_20_0 (1))
/FREQUENCIES=$mr.20.



MULT RESPONSE GROUPS=$mr.21 'Indique os equipamentos e materiais disponíveis, em perfeito funcionamento, para o desenvolvimento dos Serviços desta unidade'
(q_21_1  q_21_2 q_21_3 q_21_4 q_21_5 q_21_6 q_21_7 q_21_8 q_21_9 q_21_10 q_21_11 q_21_12 q_21_13 q_21_14 q_21_15 q_21_16
q_21_17 q_21_18 q_21_19 q_21_20 q_21_21 q_21_22 q_21_23 q_21_24 q_21_25 (1))
/FREQUENCIES=$mr.21.

FREQUENCIES VARIABLES=d21_telefone d21_veiculo 
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.22 'Indique as ações e atividades desenvolvidas no âmbito do “Serviço de Proteção Social Especial para Pessoas com Deficiência e Pessoas Idosas e suas famílias” nesta Unidade'
(q_22_1 q_22_2 q_22_3 q_22_4 q_22_5 q_22_6 q_22_7 q_22_8 q_22_9 q_22_10 q_22_11 q_22_12 q_22_13 q_22_14 q_22_15 q_22_16
q_22_17 q_22_18 q_22_19 q_22_20 q_22_21 q_22_22 q_22_23 q_22_24 q_22_25 (1))
/FREQUENCIES=$mr.22.



MULT RESPONSE GROUPS=$mr.23 'informe quais das demais atividades são realizadas nesta Unidade (considerar apenas o que for realizado no próprio local desta Unidade):'
(q_23_1 q_23_2  q_23_3 q_23_4 q_23_5 q_23_6 q_23_7 q_23_8 q_23_9 q_23_10 q_23_11 q_23_12 q_23_13 q_23_14 q_23_15  q_23_16 q_23_17
q_23_18 q_23_19 q_23_20 q_23_21 q_23_22 q_23_99 q_23_0 (1))
/FREQUENCIES=$mr.23.


FREQUENCIES VARIABLES=q_24
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.25 'Caso possua Plano Individual e/ou Familiar de Atendimento, quais são os itens que compõem este instrumento?'
(q_25_1  q_25_2 q_25_3  q_25_4 q_25_5 q_25_6 q_25_7 q_25_8 q_25_9 q_25_10 q_25_11 (1))
/FREQUENCIES=$mr.25.


MULT RESPONSE GROUPS=$mr.26 'Quem participa da construção do Plano Individual e/ou Familiar de Atendimento?'
(q_26_1 q_26_2 q_26_3 q_26_4 q_26_5 q_26_99 (1))
/FREQUENCIES=$mr.26.

FREQUENCIES VARIABLES=q_27
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.28 'Quais mecanismos de participação são utilizados nesta unidade?'
(q_28_1 q_28_2 q_28_3 q_28_4 q_28_5 q_28_99 (1))
/FREQUENCIES=$mr.28.


FREQUENCIES VARIABLES=d29_cap_atend_cat  q_30  q_31 d_32_1 d_32_2  d_32_3  d_32_4  d_32_5 d_32_6
d_32_7_total  d_33_1 d_33_2 d_33_3 d_33_4 d_33_5 d_33_6 d_33_7 d_34_1 d_34_2 d_35
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=q_36_1_1 q_36_1_2 q_36_1_3  q_36_1_4 q_36_1_5 q_36_1_6 q_36_1_7 q_36_1_8  q_36_1_9 q_36_1_10 DISPLAY=LABEL 
  /TABLE q_36_1_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_1_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q_36_1_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_1_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_1_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_1_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_1_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_1_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_1_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_1_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q_36_1_1 q_36_1_2 q_36_1_3  q_36_1_4 q_36_1_5 q_36_1_6 q_36_1_7 q_36_1_8  q_36_1_9 q_36_1_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_1.Unidade de acolhimento'.


CTABLES 
  /VLABELS VARIABLES=q_36_2_1 q_36_2_2 q_36_2_3  q_36_2_4 q_36_2_5 q_36_2_6 q_36_2_7 q_36_2_8  q_36_2_9 q_36_2_10 DISPLAY=LABEL 
  /TABLE q_36_2_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_2_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q_36_2_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_2_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_2_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_2_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_2_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_2_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_2_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_2_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q_36_2_1 q_36_2_2 q_36_2_3  q_36_2_4 q_36_2_5 q_36_2_6 q_36_2_7 q_36_2_8  q_36_2_9 q_36_2_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_2.CRAS'.


CTABLES 
  /VLABELS VARIABLES=q_36_3_1 q_36_3_2 q_36_3_3  q_36_3_4 q_36_3_5 q_36_3_6 q_36_3_7 q_36_3_8  q_36_3_9 q_36_3_10 DISPLAY=LABEL 
  /TABLE q_36_3_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_3_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q_36_3_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_3_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_3_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_3_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_3_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_3_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_3_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_3_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q_36_3_1 q_36_3_2 q_36_3_3  q_36_3_4 q_36_3_5 q_36_3_6 q_36_3_7 q_36_3_8  q_36_3_9 q_36_3_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_3.CREAS'.

CTABLES 
  /VLABELS VARIABLES=q_36_4_1 q_36_4_2 q_36_4_3  q_36_4_4 q_36_4_5 q_36_4_6 q_36_4_7 q_36_4_8  q_36_4_9 q_36_4_10 DISPLAY=LABEL 
  /TABLE q_36_4_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_4_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q_36_4_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_4_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_4_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_4_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_4_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_4_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_4_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_4_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q_36_4_1 q_36_4_2 q_36_4_3  q_36_4_4 q_36_4_5 q_36_4_6 q_36_4_7 q_36_4_8  q_36_4_9 q_36_4_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_4.Serviço de Saúde'.



CTABLES 
  /VLABELS VARIABLES=q_36_5_1 q_36_5_2 q_36_5_3  q_36_5_4 q_36_5_5 q_36_5_6 q_36_5_7 q_36_5_8  q_36_5_9 q_36_5_10 DISPLAY=LABEL 
  /TABLE q_36_5_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_5_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q_36_5_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_5_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_5_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_5_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_5_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_5_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_5_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_5_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q_36_5_1 q_36_5_2 q_36_5_3  q_36_5_4 q_36_5_5 q_36_5_6 q_36_5_7 q_36_5_8  q_36_5_9 q_36_5_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_5.Serviço de Educação'.

CTABLES 
  /VLABELS VARIABLES=q_36_6_1 q_36_6_2 q_36_6_3  q_36_6_4 q_36_6_5 q_36_6_6 q_36_6_7 q_36_6_8  q_36_6_9 q_36_6_10 DISPLAY=LABEL 
  /TABLE q_36_6_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_6_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q_36_6_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_6_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_6_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_6_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_6_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_6_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q_36_6_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_36_6_10  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q_36_6_1 q_36_6_2 q_36_6_3  q_36_6_4 q_36_6_5 q_36_6_6 q_36_6_7 q_36_6_8  q_36_6_9 q_36_6_10 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q36_6.Serviço de Justiça/Judiciário'.

MULT RESPONSE GROUPS=$mr.37 'Nos últimos 12 meses, a Unidade proporcionou ou facilitou a participação das(os) suas/seus profissionais em capacitação sobre os seguintes temas? ('
(q_37_1 q_37_2  q_37_3 q_37_4 q_37_5 q_37_6 q_37_7  q_37_8 q_37_9 q_37_10 q_37_11 q_37_12 q_37_13 q_37_14 q_37_99 q_37_0 (1))
/FREQUENCIES=$mr.37.



FREQUENCIES VARIABLES=q_38   d_38_1  q_39
  /ORDER=ANALYSIS.
