* Encoding: UTF-8.

**CENSO SUAS 2020 - Centro Dia**

***filtrar q1 estado ou municipio



FREQUENCIES VARIABLES=  Regiao Porte_pop2022  codigo_UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZA��O DA UNIDADE**

FREQUENCIES VARIABLES=q1  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.2 'Indique o P�blico atendido nesta Unidade'
(q2_1 q2_2  q2_3  q2_4(1))
/FREQUENCIES=$mr.2.


FREQUENCIES VARIABLES=d_3   q4 q6  q7
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.8 'A entidade recebe recursos financeiros da Assist�ncia Social visando � sua manuten��o'
(q8_1 q8_2  q8_3 q8_0 (1))
/FREQUENCIES=$mr.8.


MULT RESPONSE GROUPS=$mr.9 'A entidade recebe outras formas de apoio do poder p�blico municipal, estadual ou do Distrito Federal'
(q9_0 q9_1 q9_2 q9_3 q9_4 q9_5  q9_6  q9_7  q9_8  q9_9 q9_10 q9_99 (1))
/FREQUENCIES=$mr.9.


MULT RESPONSE GROUPS=$mr.10 'Assinale o(s) Conselho(s) no(s) qual(is) esta unidade possui inscri��o/registro'
(q10_1  q10_2  q10_3  q10_4  q10_99  q10_0 (1))
/FREQUENCIES=$mr.10.

FREQUENCIES VARIABLES=  q11  
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.12 'O Centro de Refer�ncia Especializado de Assist�ncia Social (CREAS) que referencia este Centro Dia realiza quais atividades de referenciamento'
(q12_1 q12_2 q12_3 q12_4 q12_5 q12_6 q12_7 q12_8 q12_9 q12_10 q12_11 q12_12 q12_13 q12_0 (1))
/FREQUENCIES=$mr.12.



MULT RESPONSE GROUPS=$mr.13_1 'Em rela��o a politica de saude, esta unidade'
(q13_1_1  q13_1_2   q13_1_3   q13_1_0 (1))
/FREQUENCIES=$mr.13_1.

MULT RESPONSE GROUPS=$mr.13_2 'Em rela��o a politica de educa�ao esta unidade'
(q13_2_1 q13_2_2 q13_2_3 q13_2_0 (1))
/FREQUENCIES=$mr.13_2.


MULT RESPONSE GROUPS=$mr.13_99 'Em rela��o a outras politicas, esta unidade'
(q13_99_1 q13_99_2 q13_99_3 q13_99_0 (1)) 
/FREQUENCIES=$mr.13_99.




FREQUENCIES VARIABLES= d14_atend_categoria  d14_adm_atend_categoria  d14_total_banheiro_cat  d14_6_banheiro_trab   d14_7_banheiro_usu  q14_8 q14_9 q14_10 q14_11 q14_12 q14_13 q14_14 q14_15 
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q15_1 q15_2   q15_3 q15_4 DISPLAY=LABEL
  /TABLE q15_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q15_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q15_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q15_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q15_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q15_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q15_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q15_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q15.condi��es de acessibilidade para pessoas com defici�ncia e pessoas idosas nesta Unidade:'.



MULT RESPONSE GROUPS=$mr.16 'h� outras adapta��es para assegurar a acessibilidade desta unidade?'
(q16_1 q16_2 q16_3 q16_4 q16_5 q16_6 q16_7 q16_0 (1))
/FREQUENCIES=$mr.16.


MULT RESPONSE GROUPS=$mr.17 'Indique os equipamentos e materiais dispon�veis, em perfeito funcionamento, para o desenvolvimento dos Servi�os desta unidade'
(q17_1  q17_2  q17_3  q17_4  q17_5  q17_6  q17_7  q17_8  q17_9  q17_10  q17_11  q17_12  q17_13  q17_14  q17_15  q17_16  q17_17  q17_18  q17_19  q17_20  q17_21  q17_22   q17_23 q17_24  q17_25  q17_26  q17_27  q17_28 (1))
/FREQUENCIES=$mr.17.



FREQUENCIES VARIABLES= d17_telefone  d17_veiculo  d17_1_1  d17_3_1  d17_8_1  d17_9_1  d17_24_1 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= d18_1 d18_2  d18_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= q19
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.20 'Indique as a��es e atividades desenvolvidas no �mbito do Servi�o de Prote��o Social Especial para Pessoas com Defici�ncia e Pessoas Idosas e suas fam�lias nesta Unidade'
(q20_1  q20_2  q20_3  q20_4  q20_5  q20_6  q20_7  q20_8  q20_9  q20_10  q20_11  q20_12  q20_13  q20_14 q20_15  q20_16  q20_17  q20_18 q20_19  q20_20  q20_21  q20_22 q20_23  (1))
/FREQUENCIES=$mr.20.


MULT RESPONSE GROUPS=$mr.21 'Qual tipo de atividade realizada durante as oficinas desta unidade:'
(q21_1 q21_2 q21_3  q21_4  q21_5  q21_6  q21_7  q21_8  q21_9  q21_10 q21_99  q21_0  (1)) 
/FREQUENCIES=$mr.21.


FREQUENCIES VARIABLES= d22_cap_atend_cat
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q23
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q24 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= q25
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.26 'Esta Unidade oferece alimenta��o �s(aos) usu�rias(os)'
(q26_1  q26_2  q26_3  q26_4  q26_5  q26_0  (1))
/FREQUENCIES=$mr.26.


MULT RESPONSE GROUPS=$mr.27 'Existe apoio para deslocamento das fam�lias/indiv�duos para a sede desta Unidade e como se d� este poio'
(q27_0  q27_1  q27_2  q27_3 q27_4  q27_5  q27_99 (1))
/FREQUENCIES=$mr.27.


MULT RESPONSE GROUPS=$mr.28 'Quais mecanismos de participa��o s�o utilizados nesta unidade'
(q28_1 q28_2  q28_3  q28_4  q28_99 (1))
/FREQUENCIES=$mr.28.

FREQUENCIES VARIABLES=  q29
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=  d30_lista_espera
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES= q31_1  q31_2  q31_3  q31_4  q31_5  q31_6  q31_7  q31_8  q31_9     DISPLAY=DEFAULT
  /TABLE q31_1 [S][SUM, MEAN, MINIMUM, MAXIMUM] + q31_2  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q31_3  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q31_4  [S][SUM, MEAN, MINIMUM, MAXIMUM] +   q31_5  [S][SUM, MEAN, MINIMUM, MAXIMUM] 
 + q31_6  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q31_7  [S][SUM, MEAN, MINIMUM, MAXIMUM] + q31_8  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q31_9  [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES= q31_1  q31_2  q31_3  q31_4  q31_5  q31_6  q31_7  q31_8  q31_9    [1] EMPTY=INCLUDE.



CTABLES
  /VLABELS VARIABLES= q32_1  q32_2  q32_3  q32_4  q32_5 q32_6 q32_7    DISPLAY=DEFAULT
  /TABLE  q32_1  [S][SUM, MEAN, MINIMUM, MAXIMUM] + q32_2  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q32_3  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q32_4  [S][SUM, MEAN, MINIMUM, MAXIMUM]
+   q32_5  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q32_6  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q32_7  [S][SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=  q32_1  q32_2  q32_3  q32_4  q32_5 q32_6 q32_7      [1] EMPTY=INCLUDE.


CTABLES
  /VLABELS VARIABLES= q33_1  q33_2  q33_3  q33_4     DISPLAY=DEFAULT
  /TABLE  q33_1  [S][SUM, MEAN, MINIMUM, MAXIMUM] + q33_2  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q33_3  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q33_4  [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=  q33_1  q33_2  q33_3  q33_4      [1] EMPTY=INCLUDE.


CTABLES
  /VLABELS VARIABLES= q34_1  q34_2  q34_3     DISPLAY=DEFAULT
  /TABLE  q34_1  [S][SUM, MEAN, MINIMUM, MAXIMUM] + q34_2  [S][SUM, MEAN, MINIMUM, MAXIMUM]  + q34_3  [S][SUM, MEAN, MINIMUM, MAXIMUM]  
  /CATEGORIES VARIABLES=  q34_1  q34_2  q34_3   [1] EMPTY=INCLUDE.



******q35

CTABLES 
  /VLABELS VARIABLES=q35_1_1 q35_1_2 q35_1_3 q35_1_4 q35_1_5 q35_1_6 q35_1_7 q35_1_8 q35_1_0 q35_1_9 DISPLAY=LABEL 
  /TABLE q35_1_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_1_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_1_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_1_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_1_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_1_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_1_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_1_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_1_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_1_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_1_1 q35_1_2 q35_1_3 q35_1_4 q35_1_5 q35_1_6 q35_1_7 q35_1_8 q35_1_0 q35_1_9 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_1.Unidade de acolhimento'.


CTABLES 
  /VLABELS VARIABLES=q35_2_1 q35_2_2 q35_2_3 q35_2_4 q35_2_5 q35_2_6 q35_2_7 q35_2_8 q35_2_0 q35_2_9 DISPLAY=LABEL 
  /TABLE q35_2_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_2_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_2_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_2_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_2_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_2_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_2_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_2_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_2_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_2_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_2_1 q35_2_2 q35_2_3 q35_2_4 q35_2_5 q35_2_6 q35_2_7 q35_2_8 q35_2_0 q35_2_9 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_2.CRAS'.


CTABLES 
  /VLABELS VARIABLES=q35_3_1 q35_3_2 q35_3_3 q35_3_4 q35_3_5 q35_3_6 q35_3_7 q35_3_8 q35_3_0 q35_3_9 DISPLAY=LABEL 
  /TABLE q35_3_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_3_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_3_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_3_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_3_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_3_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_3_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_3_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_3_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_3_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_3_1 q35_3_2 q35_3_3 q35_3_4 q35_3_5 q35_3_6 q35_3_7 q35_3_8 q35_3_0 q35_3_9  ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_3.CREAS'.

CTABLES 
  /VLABELS VARIABLES=q35_4_1 q35_4_2 q35_4_3 q35_4_4 q35_4_5  q35_4_6 q35_4_7 q35_4_8 q35_4_0 q35_4_9   DISPLAY=LABEL 
  /TABLE q35_4_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_4_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_4_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_4_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_4_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_4_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_4_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_4_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_4_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_4_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_4_1 q35_4_2 q35_4_3 q35_4_4 q35_4_5  q35_4_6 q35_4_7 q35_4_8 q35_4_0 q35_4_9 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_4.Servi�o de Sa�de'.



CTABLES 
  /VLABELS VARIABLES=q35_5_1 q35_5_2 q35_5_3 q35_5_4 q35_5_5  q35_5_6 q35_5_7 q35_5_8 q35_5_0 q35_5_9  DISPLAY=LABEL 
  /TABLE q35_5_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_5_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_5_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_5_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_5_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_5_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_5_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_5_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_5_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_5_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_5_1 q35_5_2 q35_5_3 q35_5_4 q35_5_5  q35_5_6 q35_5_7 q35_5_8 q35_5_0 q35_5_9  ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_5.Servi�o de Educa��o'.

CTABLES 
  /VLABELS VARIABLES=q35_6_1 q35_6_2 q35_6_3 q35_6_4 q35_6_5  q35_6_6 q35_6_7 q35_6_8 q35_6_0 q35_6_9  DISPLAY=LABEL 
  /TABLE q35_6_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_6_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_6_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_6_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_6_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_6_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_6_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_6_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_6_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_6_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_6_1 q35_6_2 q35_6_3 q35_6_4 q35_6_5  q35_6_6 q35_6_7 q35_6_8 q35_6_0 q35_6_9  ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_6.Servi�o de Justi�a/Judici�rio'.



CTABLES 
  /VLABELS VARIABLES=q35_7_1 q35_7_2 q35_7_3 q35_7_4 q35_7_5  q35_7_6 q35_7_7 q35_7_8 q35_7_0 q35_7_9  DISPLAY=LABEL 
  /TABLE q35_7_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_7_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_7_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_7_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_7_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_7_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_7_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_7_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_7_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_7_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_7_1 q35_7_2 q35_7_3 q35_7_4 q35_7_5  q35_7_6 q35_7_7 q35_7_8 q35_7_0 q35_7_9   ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_7. Organiza��es e Entidades de Garantia e Defesa de Direitos das pessoas com Defici�ncia e/ou Idosas'.


CTABLES 
  /VLABELS VARIABLES=q35_8_1 q35_8_2 q35_8_3 q35_8_4 q35_8_5  q35_8_6 q35_8_7 q35_8_8 q35_8_0 q35_8_9  DISPLAY=LABEL 
  /TABLE q35_8_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_8_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q35_8_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_8_4  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_8_5  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_8_6  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_8_7  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_8_8  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
+ q35_8_0  [COUNT F40.0, COLPCT.COUNT PCT40.1] + q35_8_9  [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES= q35_8_1 q35_8_2 q35_8_3 q35_8_4 q35_8_5  q35_8_6 q35_8_7 q35_8_8 q35_8_0 q35_8_9    ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q35_8.  Unidades e Projetos de Qualifica��o para o mundo do trabalho'.




FREQUENCIES VARIABLES= q36
  /ORDER=ANALYSIS. 
