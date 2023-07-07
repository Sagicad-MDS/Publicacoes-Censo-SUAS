
FREQUENCIES VARIABLES=Região Porte_pop2010 uf
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região q2 DISPLAY=LABEL
  /TABLE Região [C] BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q2_Quantidade de unidades por natureza e região'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q2 DISPLAY=LABEL
  /TABLE Porte_pop2010 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q2_Quantidade de unidades por natureza e porte'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q2 DISPLAY=LABEL
  /TABLE UF [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] BY q2 [C]
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q2_Quantidade de unidades por natureza e UF'.


FREQUENCIES VARIABLES=q3
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_4
'q4_A entidade recebe outras formas de apoio do poder público municipal? Caso sim indique quais'
(q4_0 q4_1 q4_2 q4_3 q4_4 q4_5 q4_6 q4_7 q4_8 q4_9 q4_10 q4_99(1))
/FREQUENCIES=$mr_4.

FREQUENCIES VARIABLES=q5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D6_horas_por_semana_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q7 q2 DISPLAY=LABEL
  /TABLE q7 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q7 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES
  /TITLES TITLE='q7_Situação do imóvel onde se licaliza a unidade/serviço por natureza'.


FREQUENCIES VARIABLES=q8
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_9
'q9_No local de funcionamento desta unidade/serviço são prestados outros serviços/programas da Assistência Social?' 
(q9_0 q9_1 q9_2 q9_3 q9_4 q9_5 q9_6 q9_7 q9_8 q9_9 q9_99(1))
/FREQUENCIES=$mr_9.


FREQUENCIES VARIABLES=q10
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_11
'q11_No local de funcionamento desta unidade/serviço são prestados serviços/atividades de outras políticas públicas (saúde, educação, esporte, entre outros)?' 
(q11_0 q11_1 q11_2 q11_3 q11_4 q11_5 q11_99 (1))
/FREQUENCIES=$mr_11.

FREQUENCIES VARIABLES=q12
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_13 
'q13_Especifique o tipo de unidade com a qual este Centro de Convivência compartilha seu imóvel'
(q13_1 q13_2 q13_3 q13_4 q13_5 q13_6 q13_7 q13_8 q13_9 q13_10 q13_11 q13_12 q13_99(1))
/FREQUENCIES=$mr_13.

MULT RESPONSE GROUPS=$mr_14 
'q14_Especifique quais espaços do imóvel são compartilhados entre o Centro de Convivência e a outra unidade'
(q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 q14_10(1))
/FREQUENCIES=$mr_14.



FREQUENCIES VARIABLES=d15_1_sl_atend_categoria d15_2_total_salas_adm_e_atend_categoria
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=d15_1_sl_atend_categoria q2 DISPLAY=LABEL
  /TABLE d15_1_sl_atend_categoria [C] BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=d15_1_sl_atend_categoria [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='d15_Quantidade de salas de atendimento por natureza'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=d15_2_total_salas_adm_e_atend_categoria q2 DISPLAY=LABEL
  /TABLE d15_2_total_salas_adm_e_atend_categoria [C] BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=d15_2_total_salas_adm_e_atend_categoria [1, 2, 3, 4, 5, OTHERNM] 
    EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='d15_Quantidade total de salas por natureza'.

FREQUENCIES VARIABLES=d15_6
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q15_7 q15_8 q15_9 q15_10 q15_11 q15_12 q15_13 
    DISPLAY=LABEL
  /TABLE q15_7 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_8 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q15_9 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_10 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_11 
    [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_12 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15_13 [COUNT 
    F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q15_7 q15_8 q15_9 q15_10 q15_11 q15_12 q15_13 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES TITLE='q15_Espaço físico utilizado pelo SCFV'.    


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q16_1 q16_2 q16_3 q16_4 DISPLAY=LABEL
  /TABLE q16_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_2 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q16_3 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q16_4 [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q16_1 q16_2 q16_3 q16_4 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CLABELS ROWLABELS=OPPOSITE
  /TITLES TITLE='q16_Condições de acessibilidade'.


MULT RESPONSE GROUPS=$mr_17
'q17_Indique os equipamentos e materiais disponíveis, em perfeito funcionamento, para o desenvolvimento do SCFV nesta unidade'
(d17_telefone q17_1 q17_2 q17_3 q17_4 q17_5 q17_6 q17_7 q17_8 q17_9 d17_veiculo q17_10 q17_11 q17_12 q17_13 q17_14 q17_15(1))
/FREQUENCIES=$mr_17.


FREQUENCIES VARIABLES=d18_1 d18_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d19_1 d19_2
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 DISPLAY=LABEL
  /TABLE q20_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_2 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q20_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_4 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q20_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_6 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q20_1 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_2 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_3 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_4 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_5 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_6 [1, 0] EMPTY=INCLUDE
 /TITLES TITLE= 'q20_Quantidade de unidades que ofertam diretamente '+
'Serviço de Convivência e Fortalecimento de Vínculos por faixa etária'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 q2 
    DISPLAY=LABEL
  /TABLE q20_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_2 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q20_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_4 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q20_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_6 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] BY q2 [C]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q20_1 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_2 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_3 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_4 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_5 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_6 [1, 0] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q2 [0, 1, OTHERNM] EMPTY=INCLUDE
  /TITLES TITLE= 'q20_Quantidade de unidades que ofertam diretamente '+
'Serviço de Convivência e Fortalecimento de Vínculos por faixa etária e natureza da unidade'.


MEANS TABLES=q21 BY  Região Porte_pop2010
  /CELLS SUM MEAN.

MEANS TABLES=q22 BY  Região Porte_pop2010
  /CELLS SUM MEAN.

FREQUENCIES VARIABLES=q23
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_25
'q25_Indique quais atividades abaixo são promovidas sistematicamente pela Unidade em relação ao Serviço de Convivência'
(q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 q25_8 q25_0(1))
/FREQUENCIES=$mr_25.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 q25_8 q25_0 q2 
    DISPLAY=LABEL
  /TABLE q25_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25_2 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q25_3 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25_4 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25_5 
    [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25_6 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25_7 [COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q25_8 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25_0 [COUNT F40.0, 
    ROWPCT.COUNT PCT40.1] BY q2
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 q25_8 q25_0 [1, 0, OTHERNM] 
    EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q25_Atividades promovidas pela unidade em relação ao SCFV por natureza'.


FREQUENCIES VARIABLES=q26
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q26 q2 DISPLAY=LABEL
  /TABLE q26 BY q2 [COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q26 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q26_Unidade referenciada a um CRAS por natureza'.

MULT RESPONSE GROUPS=$mr_27
'q27_São desenvolvidas atividades com famíliares/responsáveis dos participantes dos grupos do SCFV'
(q27_1 q27_2 q27_3 q27_4 q27_0(1))
/FREQUENCIES=$mr_27.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q27_1 q27_2 q27_3 q27_4 q27_0 q2 DISPLAY=LABEL
  /TABLE q27_1 + q27_2 + q27_3 + q27_4 + q27_0 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q27_1 q27_2 q27_3 q27_4 q27_0 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='Atividades desenvolvidas com familiares/responsáveis dos participantes dos grupos do SCFV'.


MULT RESPONSE GROUPS=$mr_28
'q28_Quais atividades são realizadas com familiares/responsáveis dos participantes dos grupos do SCFV nesta unidade'
(q28_1 q28_2 q28_3 q28_4(1))
/FREQUENCIES=$mr_28.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q28_1 q28_2 q28_3 q28_4 q2 DISPLAY=LABEL
  /TABLE q28_1 + q28_2 + q28_3 + q28_4 BY q2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q28_1 q28_2 q28_3 q28_4 q2 ORDER=A KEY=VALUE EMPTY=INCLUDE  
  /TITLES TITLE='Atividades desenvolvidas com familares/responsáveis dos participantes dos grupos do SCFV nesta unidade'.


FREQUENCIES VARIABLES=q29
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_30
'q30_Em 2014, esta unidade atendeu, no SCFV, pessoas de comunidade e/ou povos tradicionais'
(q30_0 q30_1 q30_2 q30_3 q30_4 q30_5 q30_99(1))
/FREQUENCIES=$mr_30.


FREQUENCIES VARIABLES=d31_8bin1_sum d31_8bin2_sum d31_8bin3_sum d31_9bin1_sum d31_9bin2_sum d31_9bin3_sum d31_9bin4_sum d31_9bin5_sum d31_10bin1_sum d31_10bin2_sum d31_10bin3_sum d31_10bin4_sum
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.



**********************************************************************************************
**********************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO RH ***************
**********************************************************************************************
**********************************************************************************************

FREQUENCIES VARIABLES=Região Porte_pop2010 UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d31_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d31_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d31_10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31_11
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q31_12
  /ORDER=ANALYSIS.


******************************************************************************************************************
******************************************************************************************************************
*****************TABELAS PARA SEREM RODADAS NA BASE DE DADOS GERAIS****************
******************************************************************************************************************
******************************************************************************************************************

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d31_8bin1_sum d31_8bin2_sum d31_8bin3_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d31_8bin1_sum [SUM] + d31_8bin2_sum [SUM] + d31_8bin3_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d31_8bin1_sum d31_8bin2_sum d31_8bin3_sum DISPLAY=LABEL
  /TABLE Região [C] BY d31_8bin1_sum [SUM][COLPCT.SUM] + d31_8bin2_sum [SUM][COLPCT.SUM] + d31_8bin3_sum [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d31_8bin1_sum d31_8bin2_sum d31_8bin3_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d31_8bin1_sum [S][SUM] + d31_8bin2_sum [S][SUM] + d31_8bin3_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d31_10bin1_sum d31_10bin2_sum d31_10bin3_sum d31_10bin4_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d31_10bin1_sum [SUM] + d31_10bin2_sum [SUM] + d31_10bin3_sum [SUM] + 
    d31_10bin4_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d31_10bin1_sum d31_10bin2_sum d31_10bin3_sum d31_10bin4_sum DISPLAY=LABEL
  /TABLE Região [C] BY d31_10bin1_sum [SUM] + d31_10bin2_sum [SUM] + d31_10bin3_sum [SUM] + 
    d31_10bin4_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d31_10bin1_sum d31_10bin2_sum d31_10bin3_sum d31_10bin4_sum 
    DISPLAY=LABEL
  /TABLE uf_s [C] BY d31_10bin1_sum [S][SUM] + d31_10bin2_sum [S][SUM] + d31_10bin3_sum 
    [S][SUM] + d31_10bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d31_9bin1_sum d31_9bin2_sum d31_9bin3_sum d31_9bin4_sum d31_9bin5_sum 
    DISPLAY=LABEL
  /TABLE Região [C] BY d31_9bin1_sum [SUM] + d31_9bin2_sum [SUM] + d31_9bin3_sum [SUM] + 
    d31_9bin4_sum [SUM] + d31_9bin5_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d31_9bin1_sum d31_9bin2_sum d31_9bin3_sum d31_9bin4_sum 
    d31_9bin5_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d31_9bin1_sum [S][SUM] + d31_9bin2_sum [S][SUM] + d31_9bin3_sum 
    [S][SUM] + d31_9bin4_sum [S][SUM] + d31_9bin5_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e UF'.


****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\'+
'_Bases de Dados 2015 _ Tratamento\Convivência\Tabelas\Centros de Convivência'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.



****COMANDO PARA EXPORTAR AS TABELAS PARA O WORD****

* Export Output.
OUTPUT EXPORT
  /CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING
  /DOC  DOCUMENTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\'+
'_Bases de Dados 2015 _ Tratamento\Convivência\Tabelas\'+
    'Tabelas_Convivência_Censo2015'
     NOTESCAPTIONS=YES  WIDETABLES=WRAP
     PAGESIZE=MM(209.96999999999997, 296.96999999999997)  TOPMARGIN=MM(10.4)  
    BOTTOMMARGIN=MM(35.400000000000034)
     LEFTMARGIN=MM(10.4)  RIGHTMARGIN=MM(35.399999999999977).







