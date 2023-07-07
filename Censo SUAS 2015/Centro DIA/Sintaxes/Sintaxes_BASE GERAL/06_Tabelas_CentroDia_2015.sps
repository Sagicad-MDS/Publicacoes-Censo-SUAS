

FREQUENCIES VARIABLES=Região Porte_pop2010 UF_s
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d4_horas_por_semana_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q10
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q11
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_11 'Formas de apoio do poder público'
(q11_1 q11_2 q11_3 q11_4 q11_5 q11_6 q11_7 q11_8 q11_9 q11_10 q11_11 q11_99 (1))
/FREQUENCIES=$mr_11.


MULT RESPONSE GROUPS=$mr_12 'Inscrição em Conselhos'
(q12_1 q12_2 q12_3 q12_4 q12_5 (1))
/FREQUENCIES=$mr_12.


FREQUENCIES VARIABLES=q13
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q14
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q15
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_17 'Unidade com a qual compartilha imóvel'
(q17_1 q17_2 q17_3 q17_4 q17_5 q17_6 q17_7 q17_8 q17_9 q17_10 q17_11 q17_12 q17_99 (1))
/FREQUENCIES=$mr_17.

MULT RESPONSE GROUPS=$mr_18 'Espaço Compartilhado'
(q18_1 q18_2 q18_3 q18_4 q18_5 q18_6 q18_7 q18_8 q19_9 q19_10 (1))
/FREQUENCIES=$mr_18.


FREQUENCIES VARIABLES=d19_total_salas_adm_e_atend
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d19_total_salas_adm_e_atend_categoria
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_19 'Descreva espaço Físico da unidade_salas'
(q19_1 q19_2 q19_3 q19_4 (1))
/FREQUENCIES=$mr_19.


FREQUENCIES VARIABLES=d19_total_banheiros_categoria
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_19 'Descreva espaço Físico da unidade_salas'
(q19_7 q19_8 (1))
/FREQUENCIES=$mr_19.


FREQUENCIES VARIABLES=d19_total_dormitórios_categoria
  /ORDER=ANALYSIS.



FREQUENCIES VARIABLES=d19_7_quartil
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=d19_8_quartil
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q19_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_11
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_12
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_13
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_14
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_15
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q20_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q20_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q20_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q20_4
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_21 'Outras adaptações para acessibilidade'
(q21_1 q21_2 q21_3 q21_4 q21_5 q21_6 q21_7 (1))
/FREQUENCIES=$mr_21.


MULT RESPONSE GROUPS=$mr_22 'Equipamentos e materiais disponíveis'
(q22_1 q22_2 q22_3 q22_4 q22_5 q22_6 q22_7 q22_8 q22_9 q22_10 q22_11 q22_12 q22_13 q22_14 q22_15 q22_16 q22_17 q22_18 q22_19 q22_20 q22_21 q22_22 q22_23 q22_24 q22_25 q22_26 (1))
/FREQUENCIES=$mr_22.


FREQUENCIES VARIABLES=d22_telefone
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d22_veiculo
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=d23_1
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=d23_2
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=d25_cap_atend_faixas
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q26
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_28 'Ações desenvolvidas'
(q28_1 q28_2 q28_3 q28_4 q28_5 q28_6 q28_7 q28_8 q28_9 q28_10 q28_11 q28_12 q28_13 q28_14 q28_15 q28_16 q28_17 q28_18 q28_19 q28_20 q28_21 q28_22 q28_23 q28_24 (1))
/FREQUENCIES=$mr_28.


MULT RESPONSE GROUPS=$mr_29 'Demais atividades'
(q29_1 q29_2 q29_3 q29_4 q29_5 q29_6 q29_7 q29_8 q29_9 q29_10 q29_11 q29_12 q29_13 q29_99 q29_15 (1))
/FREQUENCIES=$mr_29.

MULT RESPONSE GROUPS=$mr_30 'Oferece alimentação aos usuários'
(q30_1 q30_2 q30_3 q30_4 q30_5 q30_6 (1))
/FREQUENCIES=$mr_30.


CTABLES
  /VLABELS VARIABLES=q31_1 q31_2 q31_3 q31_4  Região DISPLAY=LABEL
  /TABLE Região [C] BY q31_1 [S][MEAN] + q31_2 [S][MEAN] + q31_3 [S][MEAN] + q31_4 [S][MEAN]
  /CATEGORIES VARIABLES=Região [1, 0, OTHERNM] EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Percentual aproximado das formas pelas quais os usuários acessam os serviços do Centro Dia, por Região'.


CTABLES
  /VLABELS VARIABLES=q31_1 q31_2 q31_3 q31_4 Porte_pop2010 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q31_1 [S][MEAN] + q31_2 [S][MEAN] + q31_3 [S][MEAN] + q31_4 [S][MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 0, OTHERNM] EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Percentual aproximado das formas pelas quais os usuários acessam os serviços do Centro Dia, por Porte'.


MULT RESPONSE GROUPS=$mr_32 'Principais responsáveis pelo encaminhanto de usuários'
(q32_1 q32_2 q32_3 q32_4 q32_5 q32_6 q32_7 q32_8 q32_9 q32_10 q32_11 q32_99 (1))
/FREQUENCIES=$mr_32.


MULT RESPONSE GROUPS=$mr_33 'Critérios de admissão utilizados para a inserção dos usuários'
(q33_1 q33_2 q33_3 q33_4 q33_5 q33_6 q33_99 (1))
/FREQUENCIES=$mr_33.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q34_1 q34_2 q34_3 q34_4 q34_5 q34_6 q34_7 
    DISPLAY=LABEL
  /TABLE q34_1 [S][MEAN, SUM] + q34_2 [S][MEAN, SUM] + q34_3 [S][MEAN, SUM] + q34_4 [S][MEAN, SUM] 
    + q34_5 [S][MEAN, SUM] + q34_6 [S][MEAN, SUM] + q34_7 [S][MEAN, SUM].


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q35_2 q35_1 DISPLAY=LABEL
  /TABLE q35_2 [S][SUM, MEAN] + q35_1 [S][SUM, MEAN].


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q35_1_99 q35_2_99 DISPLAY=LABEL
  /TABLE q35_1_99 [C][COUNT F40.0] + q35_2_99 [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q35_1_99 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q35_2_99 [1] EMPTY=INCLUDE.


FREQUENCIES VARIABLES=q36
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q37
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr_38 'Itens que compõem do Plano Individual e/ou Familiar de atendimento'
(q38_1 q38_2 q38_3 q38_4 q38_5 q38_6 q38_7 q38_8 q38_9 (1))
/FREQUENCIES=$mr_38.




CTABLES
  /VLABELS VARIABLES=q39_1_1 q39_1_2 q39_1_3 q39_1_4 q39_1_5 q39_1_6 q39_1_7 q39_1_8 q39_1_0 q39_1_9 q39_1_10
    DISPLAY=LABEL
  /TABLE BY q39_1_1 [COUNT F40.0] + q39_1_2 [COUNT F40.0] + q39_1_3 [COUNT F40.0] + q39_1_4 [COUNT 
    F40.0] + q39_1_5 [COUNT F40.0] + q39_1_6 [COUNT F40.0] + q39_1_7 [COUNT F40.0] + q39_1_8 [COUNT F40.0] 
    + q39_1_9 [COUNT F40.0] + q39_1_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_1_1 q39_1_2 q39_1_3 q39_1_4 q39_1_5 q39_1_6 q39_1_7 q39_1_8 q39_1_0 q39_1_9 q39_1_10[1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com o Creas'.


CTABLES
  /VLABELS VARIABLES=q39_2_1 q39_2_2 q39_2_3 q39_2_4 q39_2_5 q39_2_6 q39_2_7 q39_2_8 q39_2_9 q39_2_10
    DISPLAY=LABEL
  /TABLE BY q39_2_1 [COUNT F40.0] + q39_2_2 [COUNT F40.0] + q39_2_3 [COUNT F40.0] + q39_2_4 [COUNT 
    F40.0] + q39_2_5 [COUNT F40.0] + q39_2_6 [COUNT F40.0] + q39_2_7 [COUNT F40.0] + q39_2_8 [COUNT F40.0] 
    + q39_2_9 [COUNT F40.0] + q39_2_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_2_1 q39_2_2 q39_2_3 q39_2_4 q39_2_5 q39_2_6 q39_2_7 q39_2_8 q39_2_9 q39_2_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com o Cras'.

CTABLES
  /VLABELS VARIABLES=q39_3_1 q39_3_2 q39_3_3 q39_3_4 q39_3_5 q39_3_6 q39_3_7 q39_3_8 q39_3_9 q39_3_10
    DISPLAY=LABEL
  /TABLE BY q39_3_1 [COUNT F40.0] + q39_3_2 [COUNT F40.0] + q39_3_3 [COUNT F40.0] + q39_3_4 [COUNT 
    F40.0] + q39_3_5 [COUNT F40.0] + q39_3_6 [COUNT F40.0] + q39_3_7 [COUNT F40.0] + q39_3_8 [COUNT F40.0] 
    + q39_3_9 [COUNT F40.0] + q39_3_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_3_1 q39_3_2 q39_3_3 q39_3_4 q39_3_5 q39_3_6 q39_3_7 q39_3_8 q39_3_9 q39_3_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com Demais serviços da rede de Assistência Social'.


CTABLES
  /VLABELS VARIABLES=q39_4_1 q39_4_2 q39_4_3 q39_4_4 q39_4_5 q39_4_6 q39_4_7 q39_4_8 q39_4_9 q39_4_10
    DISPLAY=LABEL
  /TABLE BY q39_4_1 [COUNT F40.0] + q39_4_2 [COUNT F40.0] + q39_4_3 [COUNT F40.0] + q39_4_4 [COUNT 
    F40.0] + q39_4_5 [COUNT F40.0] + q39_4_6 [COUNT F40.0] + q39_4_7 [COUNT F40.0] + q39_4_8 [COUNT F40.0] 
    + q39_4_9 [COUNT F40.0] + q39_4_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_4_1 q39_4_2 q39_4_3 q39_4_4 q39_4_5 q39_4_6 q39_4_7 q39_4_8 q39_4_9 q39_4_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com CER'.


CTABLES
  /VLABELS VARIABLES=q39_5_1 q39_5_2 q39_5_3 q39_5_4 q39_5_5 q39_5_6 q39_5_7 q39_5_8 q39_5_9 q39_5_10
    DISPLAY=LABEL
  /TABLE BY q39_5_1 [COUNT F40.0] + q39_5_2 [COUNT F40.0] + q39_5_3 [COUNT F40.0] + q39_5_4 [COUNT 
    F40.0] + q39_5_5 [COUNT F40.0] + q39_5_6 [COUNT F40.0] + q39_5_7 [COUNT F40.0] + q39_5_8 [COUNT F40.0] 
    + q39_5_9 [COUNT F40.0] + q39_5_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_5_1 q39_5_2 q39_5_3 q39_5_4 q39_5_5 q39_5_6 q39_5_7 q39_5_8 q39_5_9 q39_5_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com Demais serviços da rede de saúde'.


CTABLES
  /VLABELS VARIABLES=q39_6_1 q39_6_2 q39_6_3 q39_6_4 q39_6_5 q39_6_6 q39_6_7 q39_6_8 q39_6_9 q39_6_10
    DISPLAY=LABEL
  /TABLE BY q39_6_1 [COUNT F40.0] + q39_6_2 [COUNT F40.0] + q39_6_3 [COUNT F40.0] + q39_6_4 [COUNT 
    F40.0] + q39_6_5 [COUNT F40.0] + q39_6_6 [COUNT F40.0] + q39_6_7 [COUNT F40.0] + q39_6_8 [COUNT F40.0] 
    + q39_6_9 [COUNT F40.0] + q39_6_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_6_1 q39_6_2 q39_6_3 q39_6_4 q39_6_5 q39_6_6 q39_6_7 q39_6_8 q39_6_9 q39_6_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com serviços de educação'.


CTABLES
  /VLABELS VARIABLES=q39_7_1 q39_7_2 q39_7_3 q39_7_4 q39_7_5 q39_7_6 q39_7_7 q39_7_8 q39_7_9 q39_7_10
    DISPLAY=LABEL
  /TABLE BY q39_7_1 [COUNT F40.0] + q39_7_2 [COUNT F40.0] + q39_7_3 [COUNT F40.0] + q39_7_4 [COUNT 
    F40.0] + q39_7_5 [COUNT F40.0] + q39_7_6 [COUNT F40.0] + q39_7_7 [COUNT F40.0] + q39_7_8 [COUNT F40.0] 
    + q39_7_9 [COUNT F40.0] + q39_7_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_7_1 q39_7_2 q39_7_3 q39_7_4 q39_7_5 q39_7_6 q39_7_7 q39_7_8 q39_7_9 q39_7_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com judiciário'.


CTABLES
  /VLABELS VARIABLES=q39_8_1 q39_8_2 q39_8_3 q39_8_4 q39_8_5 q39_8_6 q39_8_7 q39_8_8 q39_8_9 q39_8_10
    DISPLAY=LABEL
  /TABLE BY q39_8_1 [COUNT F40.0] + q39_8_2 [COUNT F40.0] + q39_8_3 [COUNT F40.0] + q39_8_4 [COUNT 
    F40.0] + q39_8_5 [COUNT F40.0] + q39_8_6 [COUNT F40.0] + q39_8_7 [COUNT F40.0] + q39_8_8 [COUNT F40.0] 
    + q39_8_9 [COUNT F40.0] + q39_8_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_8_1 q39_8_2 q39_8_3 q39_8_4 q39_8_5 q39_8_6 q39_8_7 q39_8_8 q39_8_9 q39_8_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com Ministério Publico'.


CTABLES
  /VLABELS VARIABLES=q39_9_1 q39_9_2 q39_9_3 q39_9_4 q39_9_5 q39_9_6 q39_9_7 q39_9_8 q39_9_9 q39_9_10
    DISPLAY=LABEL
  /TABLE BY q39_9_1 [COUNT F40.0] + q39_9_2 [COUNT F40.0] + q39_9_3 [COUNT F40.0] + q39_9_4 [COUNT 
    F40.0] + q39_9_5 [COUNT F40.0] + q39_9_6 [COUNT F40.0] + q39_9_7 [COUNT F40.0] + q39_9_8 [COUNT F40.0] 
    + q39_9_9 [COUNT F40.0] + q39_9_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_9_1 q39_9_2 q39_9_3 q39_9_4 q39_9_5 q39_9_6 q39_9_7 q39_9_8 q39_9_9 q39_9_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com Defensoria Publica'.


CTABLES
  /VLABELS VARIABLES=q39_10_1 q39_10_2 q39_10_3 q39_10_4 q39_10_5 q39_10_6 q39_10_7 q39_10_8 q39_10_9 q39_10_10
    DISPLAY=LABEL
  /TABLE BY q39_10_1 [COUNT F40.0] + q39_10_2 [COUNT F40.0] + q39_10_3 [COUNT F40.0] + q39_10_4 [COUNT 
    F40.0] + q39_10_5 [COUNT F40.0] + q39_10_6 [COUNT F40.0] + q39_10_7 [COUNT F40.0] + q39_10_8 [COUNT F40.0] 
    + q39_10_9 [COUNT F40.0] + q39_10_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_10_1 q39_10_2 q39_10_3 q39_10_4 q39_10_5 q39_10_6 q39_10_7 q39_10_8 q39_10_9 q39_10_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com ONG'.

CTABLES
  /VLABELS VARIABLES=q39_11_1 q39_11_2 q39_11_3 q39_11_4 q39_11_5 q39_11_6 q39_11_7 q39_11_8 q39_11_9 q39_11_10
    DISPLAY=LABEL
  /TABLE BY q39_11_1 [COUNT F40.0] + q39_11_2 [COUNT F40.0] + q39_11_3 [COUNT F40.0] + q39_11_4 [COUNT 
    F40.0] + q39_11_5 [COUNT F40.0] + q39_11_6 [COUNT F40.0] + q39_11_7 [COUNT F40.0] + q39_11_8 [COUNT F40.0] 
    + q39_11_9 [COUNT F40.0] + q39_11_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_11_1 q39_11_2 q39_11_3 q39_11_4 q39_11_5 q39_11_6 q39_11_7 q39_11_8 q39_11_9 q39_11_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Articulação do Centro Dia com INSS'.




**********Outra forma de apresentar a questão 39


MULT RESPONSE GROUPS=$mr_39_1 'O Centro Dia mantém articulação com Creas' 
(q39_1_1 q39_1_2 q39_1_3 q39_1_4 q39_1_5 q39_1_6 q39_1_7 q39_1_8 q39_1_9 q39_1_10 (1))
/FREQUENCIES=$mr_39_1.


MULT RESPONSE GROUPS=$mr_39_2 'O Centro Dia mantém articulação com Cras' 
(q39_2_1 q39_2_2 q39_2_3 q39_2_4 q39_2_5 q39_2_6 q39_2_7 q39_2_8 q39_2_9 q39_2_10 (1))
/FREQUENCIES=$mr_39_2.

MULT RESPONSE GROUPS=$mr_39_3 'O Centro Dia mantém articulação com Demais serviços da rede de assistência social' 
(q39_3_1 q39_3_2 q39_3_3 q39_3_4 q39_3_5 q39_3_6 q39_3_7 q39_3_8 q39_3_9 q39_3_10 (1))
/FREQUENCIES=$mr_39_3.


MULT RESPONSE GROUPS=$mr_39_4 'O Centro Dia mantém articulação com o CERl' 
(q39_4_1 q39_4_2 q39_4_3 q39_4_4 q39_4_5 q39_4_6 q39_4_7 q39_4_8 q39_4_9 q39_4_10 (1))
/FREQUENCIES=$mr_39_4.


MULT RESPONSE GROUPS=$mr_39_5 'O Centro Dia mantém articulação demais serviços da rede de saúde' 
(q39_5_1 q39_5_2 q39_5_3 q39_5_4 q39_5_5 q39_5_6 q39_5_7 q39_5_8 q39_5_9 q39_5_10 (1))
/FREQUENCIES=$mr_39_5.


MULT RESPONSE GROUPS=$mr_39_6 'O Centro Dia mantém articulação demais serviços da educação' 
(q39_6_1 q39_6_2 q39_6_3 q39_6_4 q39_6_5 q39_6_6 q39_6_7 q39_6_8 q39_6_9 q39_6_10 (1))
/FREQUENCIES=$mr_39_6.

MULT RESPONSE GROUPS=$mr_39_7 'O Centro Dia mantém articulação com judiciário' 
(q39_7_1 q39_7_2 q39_7_3 q39_7_4 q39_7_5 q39_7_6 q39_7_7 q39_7_8 q39_7_9 q39_7_10 (1))
/FREQUENCIES=$mr_39_7.


MULT RESPONSE GROUPS=$mr_39_8 'O Centro Dia mantém articulação com ministério público' 
(q39_8_1 q39_8_2 q39_8_3 q39_8_4 q39_8_5 q39_8_6 q39_8_7 q39_8_8 q39_8_9 q39_8_10 (1))
/FREQUENCIES=$mr_39_8.


MULT RESPONSE GROUPS=$mr_39_9 'O Centro Dia mantém articulação com Defensoria' 
(q39_9_1 q39_9_2 q39_9_3 q39_9_4 q39_9_5 q39_9_6 q39_9_7 q39_9_8 q39_9_9 q39_9_10 (1))
/FREQUENCIES=$mr_39_9.

MULT RESPONSE GROUPS=$mr_39_10 'O Centro Dia mantém articulação com ONG' 
(q39_10_1 q39_10_2 q39_10_3 q39_10_4 q39_10_5 q39_10_6 q39_10_7 q39_10_8 q39_10_9 q39_10_10 (1))
/FREQUENCIES=$mr_39_10.

MULT RESPONSE GROUPS=$mr_39_11 'O Centro Dia mantém articulação com INSS' 
(q39_11_1 q39_11_2 q39_11_3 q39_11_4 q39_11_5 q39_11_6 q39_11_7 q39_11_8 q39_11_9 q39_11_10 (1))
/FREQUENCIES=$mr_39_11.


******************************* RECURSOS HUMANOS ********************************

**********************************************************************************************
**********************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO RH ***************
**********************************************************************************************
**********************************************************************************************

FREQUENCIES VARIABLES=d40_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q40_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q40_8
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=d40_8bin1 d40_8bin2 d40_8bin3
  /STATISTICS=SUM.

FREQUENCIES VARIABLES=d40_9bin1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d40_9bin2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d40_9bin3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d40_9bin4
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d40_9bin5
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q40_10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q40_12
  /ORDER=ANALYSIS.

**************************************************************************************************************
**************************************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO DADOS GERAIS ***************
**************************************************************************************************************
**************************************************************************************************************


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d40_8bin1_sum d40_8bin2_sum d40_8bin3_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d40_8bin1_sum [SUM] + d40_8bin2_sum [SUM] + d40_8bin3_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d40_8bin1_sum d40_8bin2_sum d40_8bin3_sum DISPLAY=LABEL
  /TABLE Região [C] BY d40_8bin1_sum [SUM][COLPCT.SUM] + d40_8bin2_sum [SUM][COLPCT.SUM] + d40_8bin3_sum [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d40_8bin1_sum d40_8bin2_sum d40_8bin3_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d40_8bin1_sum [S][SUM] + d40_8bin2_sum [S][SUM] + d40_8bin3_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d40_10bin1_sum d40_10bin2_sum d40_10bin3_sum d40_10bin4_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d40_10bin1_sum [SUM] + d40_10bin2_sum [SUM] + d40_10bin3_sum [SUM] + 
    d40_10bin4_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e porte do município'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d40_10bin1_sum d40_10bin2_sum d40_10bin3_sum d40_10bin4_sum DISPLAY=LABEL
  /TABLE Região [C] BY d40_10bin1_sum [SUM] + d40_10bin2_sum [SUM] + d40_10bin3_sum [SUM] + 
    d40_10bin4_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d40_10bin1_sum d40_10bin2_sum d40_10bin3_sum d40_10bin4_sum 
    DISPLAY=LABEL
  /TABLE uf_s [C] BY d40_10bin1_sum [S][SUM] + d40_10bin2_sum [S][SUM] + d40_10bin3_sum 
    [S][SUM] + d40_10bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d40_9bin1_sum d40_9bin2_sum d40_9bin3_sum d40_9bin4_sum d40_9bin5_sum 
    DISPLAY=LABEL
  /TABLE Região [C] BY d40_9bin1_sum [SUM] + d40_9bin2_sum [SUM] + d40_9bin3_sum [SUM] + 
    d40_9bin4_sum [SUM] + d40_9bin5_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d40_9bin1_sum d40_9bin2_sum d40_9bin3_sum d40_9bin4_sum 
    d40_9bin5_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d40_9bin1_sum [S][SUM] + d40_9bin2_sum [S][SUM] + d40_9bin3_sum 
    [S][SUM] + d40_9bin4_sum [S][SUM] + d40_9bin5_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e UF'.
