

FREQUENCIES VARIABLES=Região Porte_pop2010 UF_s
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d3_horas_por_semana_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_6 'Tipo de unidade com a qual o CRAS compartilha seu imóvel'
(q6_1 q6_2 q6_3 q6_4 q6_5 q6_6 q6_7 q6_8 q6_9 q6_10 q6_99 (1))
/FREQUENCIES=$mr_6.

MULT RESPONSE GROUPS=$mr_7 'Espaços do imóvel que são compartilhados entre o CRAS e a outra unidade'
(q7_1 q7_2 q7_3 q7_4 q7_5 q7_6 q7_7 q7_8 q7_9 q7_10 q7_11 q7_12 (1))
/FREQUENCIES=$mr_7.

FREQUENCIES VARIABLES=d8_sl_atend_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d8_total_salas_adm_e_atend_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d8_6_banheiros
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q8_7 q8_8 q8_9 q8_10 DISPLAY=LABEL
  /TABLE q8_7 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
 q8_9 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_10 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q8_7 q8_8 q8_9 q8_10 [1, 0, OTHERNM] EMPTY=INCLUDE
/TITLES
 TITLE= 'q8_Demais espaços físicos disponíveis no CRAS'.


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
 TITLE= 'q9_Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.


MULT RESPONSE GROUPS=$mr_10 'q10_Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CRAS'
(d10_telefone q10_1 q10_2 q10_3 q10_4 q10_5 q10_6 q10_7 q10_8 q10_9 
q10_10 q10_11 d10_veiculo q10_12 q10_13 q10_14 q10_15 q10_16 q10_17 q10_18(1))
/FREQUENCIES=$mr_10.


FREQUENCIES VARIABLES=d11_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d11_2
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q12
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_13 'q13_Ações e atividades desenvolvidas no âmbito do PAIF'
(q13_1 q13_2 q13_3 q13_4 q13_5 q13_6 q13_7 q13_8 q13_9 q13_10 q13_11 q13_12 q13_13 q13_14
q13_15 q13_16 q13_17 (1))
/FREQUENCIES=$mr_13.


***A1 e A2 do RMA

FREQUENCIES VARIABLES= q14_1 q14_2
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q15
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q17_1 q17_2 q17_3 q17_4 q17_5 q17_6 DISPLAY=LABEL
  /TABLE q17_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q17_2 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q17_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q17_4 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q17_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q17_6 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q17_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17_4 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17_5 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q17_6 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Quantidade de CRAS que ofertam diretamente o Serviço de Convivência e Fortalecimento '+
    'de Vínculos, por público'.


MULT RESPONSE GROUPS=$mr_18 'Este CRAS possui rede referenciada para oferta de grupos do Serviço de Convivência e Fortalecimento de Vínculos?'
(q18_1 q18_2 q18_3 q18_0 (1))
/FREQUENCIES=$mr_18.


FREQUENCIES VARIABLES=d19
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_ns
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 DISPLAY=LABEL
  /TABLE q20_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_2 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q20_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_4 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1] + q20_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q20_6 [C][COUNT F40.0, ROWPCT.COUNT 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q20_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_4 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_5 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q20_6 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Quantidade de CRAS que possuem rede referenciada para a oferta de Serviço de Convivência e Fortalecimento '+
    'de Vínculos, por público'.



FREQUENCIES VARIABLES=q21
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q22
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_23 'Estratégias utilizadas pelos técnicos para acompanhamento dos grupos de SCFV ofertados pela rede referenciada'
(q23_1 q23_2 q23_3 q23_4 q23_5 q23_6 q23_7 q23_8 q23_9 q23_0 (1))
/FREQUENCIES=$mr_23.

FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_25 'Atividades realizadas com famílias/responsáveis dos participantes dos grupos dos SCFV'
(q25_1 q25_2 q25_3 q25_4 q25_99 (1))
/FREQUENCIES=$mr_25.

FREQUENCIES VARIABLES=q26
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_28 'Formas de deslocamento da equipe volante'
(q28_1 q28_2 q28_3 q28_4 q28_5 q28_6 q28_7 q28_8 q28_99 (1))
/FREQUENCIES=$mr_28.

FREQUENCIES VARIABLES=q29
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q30
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_31 'Locais onde são realizados os atendimentos pelas equipes volantes'
(q31_1 q31_2 q31_3 q31_4 q31_5 q31_6 q31_7 q31_8 q31_9 (1))
/FREQUENCIES=$mr_31.

MULT RESPONSE GROUPS=$mr_32 'Tipos de atendimento realizados pelas equipes volantes'
(q32_1 q32_2 q32_3 q32_4 q32_5 q32_6 q32_0 (1))
/FREQUENCIES=$mr_32.

DESCRIPTIVES VARIABLES=q33
  /STATISTICS=MEAN SUM.

FREQUENCIES VARIABLES=d33
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=q34
  /STATISTICS=MEAN SUM.

FREQUENCIES VARIABLES=d34
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q35
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_36 'Benefícios Eventuais concedidos pelos CRAS'
(q36_1 q36_2 q36_3 q36_4 q36_99 (1))
/FREQUENCIES=$mr_36.

FREQUENCIES VARIABLES=q37
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q38
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q39
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=Região q40 DISPLAY=LABEL
  /TABLE Região [C] BY q40 [S][SUM, COLPCT.SUM, MEAN]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de famílias em situação de vulnerabilidade que residem '+
    'no território de abrangência do CRAS, por região'.


CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q40 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q40 [S][SUM, COLPCT.SUM, MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de famílias em situação de vulnerabilidade que residem '+
    'no território de abrangência do CRAS, por porte do município'.


FREQUENCIES VARIABLES=q40_ns
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q41
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_42 'Mecanismos de participação utilizados nos CRAS'
(q42_1 q42_2 q42_3 q42_4 q42_5 q42_99 (1))
/FREQUENCIES=$mr_42.

MULT RESPONSE GROUPS=$mr_43 'No território de abrangência deste CRAS, há presença de:'
(q43_1 q43_2 q43_3 q43_4 q43_5 q43_6 q43_7 q43_8 q43_9 q43_10 q43_99 (1))
/FREQUENCIES=$mr_43.

FREQUENCIES VARIABLES=q44
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_45 'Povos e comunidades tradicionais existentes no território de abrangência do CRAS'
(q45_1 q45_2 q45_3 q45_4 q45_5 q45_99 (1))
/FREQUENCIES=$mr_45.

MULT RESPONSE GROUPS=$mr_46 'Povos e comunidades tradicionais atendidas pelo CRAS'
(q46_0 q46_1 q46_2 q46_3 q46_4 q46_5 q46_99 (1))
/FREQUENCIES=$mr_46.

FREQUENCIES VARIABLES=q47
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q48_1 q48_2 q48_3 q48_4 q48_5 q48_6 q48_7
    DISPLAY=LABEL
  /TABLE q48_1 [COUNT F40.0, ROWPCT.COUNT] + q48_2 [COUNT F40.0, ROWPCT.COUNT] + q48_3 [COUNT F40.0, ROWPCT.COUNT] + q48_4 [COUNT F40.0, ROWPCT.COUNT] + q48_5 
    [COUNT F40.0, ROWPCT.COUNT] + q48_6 [COUNT F40.0, ROWPCT.COUNT] + q48_7 [COUNT F40.0, ROWPCT.COUNT]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q48_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q48_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q48_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q48_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q48_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q48_6 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q48_7 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q48_Para o atendimento a comunidade(s) tradicional(is) a Equipe de Referência dos CRAS '+
    'possui:'.


CTABLES
  /VLABELS VARIABLES=q49_1 q49_2 q49_3 q49_4  Região DISPLAY=LABEL
  /TABLE Região [C] BY q49_1 [S][MEAN] + q49_2 [S][MEAN] + q49_3 [S][MEAN] + q49_4 [S][MEAN]
  /CATEGORIES VARIABLES=Região [1, 0, OTHERNM] EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Percentual aproximado das formas pelas quais os usuários acessam os serviços do CRAS, por Região'.


CTABLES
  /VLABELS VARIABLES=q49_1 q49_2 q49_3 q49_4 Porte_pop2010 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q49_1 [S][MEAN] + q49_2 [S][MEAN] + q49_3 [S][MEAN] + q49_4 [S][MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 0, OTHERNM] EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Percentual aproximado das formas pelas quais os usuários acessam os serviços do CRAS, por Porte'.


MULT RESPONSE GROUPS=$mr_50 'Este CRAS desenvolve estratégias específicas utilizadas para inclusão de pessoas com deficiência nos serviços desta unidade'
(q50_0 q50_1 q50_2 q50_3 q50_4 q50_99 (1))
/FREQUENCIES=$mr_50.


FREQUENCIES VARIABLES=q51
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q52 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q52 [S][SUM, COLPCT.SUM, MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q52_Em 2015, quantos Prontuários SUAS foram abertos nos CRAS, por porte do município'.


CTABLES
  /VLABELS VARIABLES=Região q52 DISPLAY=LABEL
  /TABLE Região [C] BY q52 [S][SUM, COLPCT.SUM, MEAN]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q52_Em 2015, quantos Prontuários SUAS foram abertos nos CRAS, por região'.




****************** TABELAS QUESTÃO 53 (ARTICULAÇÃO) ******************



CTABLES
  /VLABELS VARIABLES=q53_1_1 q53_1_2 q53_1_3 q53_1_4 q53_1_5 q53_1_6 q53_1_7 q53_1_8 q53_1_0 q53_1_9 
    DISPLAY=LABEL
  /TABLE BY q53_1_1 [COUNT F40.0] + q53_1_2 [COUNT F40.0] + q53_1_3 [COUNT F40.0] + q53_1_4 [COUNT 
    F40.0] + q53_1_5 [COUNT F40.0] + q53_1_6 [COUNT F40.0] + q53_1_7 [COUNT F40.0] + q53_1_8 [COUNT F40.0] 
    + q53_1_0 [COUNT F40.0] + q53_1_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_1_1 q53_1_2 q53_1_3 q53_1_4 q53_1_5 q53_1_6 q53_1_7 q53_1_8 q53_1_0 q53_1_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades Públicas da Rede de Proteção Social Básica'.


CTABLES
  /VLABELS VARIABLES=q53_2_1 q53_2_2 q53_2_3 q53_2_4 q53_2_5 q53_2_6 q53_2_7 q53_2_8 q53_2_0 q53_2_9 
    DISPLAY=LABEL
  /TABLE BY q53_2_1 [COUNT F40.0] + q53_2_2 [COUNT F40.0] + q53_2_3 [COUNT F40.0] + q53_2_4 [COUNT 
    F40.0] + q53_2_5 [COUNT F40.0] + q53_2_6 [COUNT F40.0] + q53_2_7 [COUNT F40.0] + q53_2_8 [COUNT F40.0] 
    + q53_2_0 [COUNT F40.0] + q53_2_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_2_1 q53_2_2 q53_2_3 q53_2_4 q53_2_5 q53_2_6 q53_2_7 q53_2_8 q53_2_0 q53_2_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades Conveniadas da Rede de Proteção Social Básica'.


CTABLES
  /VLABELS VARIABLES=q53_3_1 q53_3_2 q53_3_3 q53_3_4 q53_3_5 q53_3_6 q53_3_7 q53_3_8 q53_3_0 q53_3_9 
    DISPLAY=LABEL
  /TABLE BY q53_3_1 [COUNT F40.0] + q53_3_2 [COUNT F40.0] + q53_3_3 [COUNT F40.0] + q53_3_4 [COUNT 
    F40.0] + q53_3_5 [COUNT F40.0] + q53_3_6 [COUNT F40.0] + q53_3_7 [COUNT F40.0] + q53_3_8 [COUNT F40.0] 
    + q53_3_0 [COUNT F40.0] + q53_3_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_3_1 q53_3_2 q53_3_3 q53_3_4 q53_3_5 q53_3_6 q53_3_7 q53_3_8 q53_3_0 q53_3_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades da Rede de Proteção Social Especial'.


CTABLES
  /VLABELS VARIABLES=q53_4_1 q53_4_2 q53_4_3 q53_4_4 q53_4_5 q53_4_6 q53_4_7 q53_4_8 q53_4_0 q53_4_9 
    DISPLAY=LABEL
  /TABLE BY q53_4_1 [COUNT F40.0] + q53_4_2 [COUNT F40.0] + q53_4_3 [COUNT F40.0] + q53_4_4 [COUNT 
    F40.0] + q53_4_5 [COUNT F40.0] + q53_4_6 [COUNT F40.0] + q53_4_7 [COUNT F40.0] + q53_4_8 [COUNT F40.0] 
    + q53_4_0 [COUNT F40.0] + q53_4_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_4_1 q53_4_2 q53_4_3 q53_4_4 q53_4_5 q53_4_6 q53_4_7 q53_4_8 q53_4_0 q53_4_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços de Saúde'.


CTABLES
  /VLABELS VARIABLES=q53_5_1 q53_5_2 q53_5_3 q53_5_4 q53_5_5 q53_5_6 q53_5_7 q53_5_8 q53_5_0 q53_5_9 
    DISPLAY=LABEL
  /TABLE BY q53_5_1 [COUNT F40.0] + q53_5_2 [COUNT F40.0] + q53_5_3 [COUNT F40.0] + q53_5_4 [COUNT 
    F40.0] + q53_5_5 [COUNT F40.0] + q53_5_6 [COUNT F40.0] + q53_5_7 [COUNT F40.0] + q53_5_8 [COUNT F40.0] 
    + q53_5_0 [COUNT F40.0] + q53_5_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_5_1 q53_5_2 q53_5_3 q53_5_4 q53_5_5 q53_5_6 q53_5_7 q53_5_8 q53_5_0 q53_5_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços de Educação'.


CTABLES
  /VLABELS VARIABLES=q53_6_1 q53_6_2 q53_6_3 q53_6_4 q53_6_5 q53_6_6 q53_6_7 q53_6_8 q53_6_0 q53_6_9 
    DISPLAY=LABEL
  /TABLE BY q53_6_1 [COUNT F40.0] + q53_6_2 [COUNT F40.0] + q53_6_3 [COUNT F40.0] + q53_6_4 [COUNT 
    F40.0] + q53_6_5 [COUNT F40.0] + q53_6_6 [COUNT F40.0] + q53_6_7 [COUNT F40.0] + q53_6_8 [COUNT F40.0] 
    + q53_6_0 [COUNT F40.0] + q53_6_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_6_1 q53_6_2 q53_6_3 q53_6_4 q53_6_5 q53_6_6 q53_6_7 q53_6_8 q53_6_0 q53_6_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Órgãos/Serviços relacionados a Trabalho e Emprego'.


CTABLES
  /VLABELS VARIABLES=q53_7_1 q53_7_2 q53_7_3 q53_7_4 q53_7_5 q53_7_6 q53_7_7 q53_7_8 q53_7_0 q53_7_9 
    DISPLAY=LABEL
  /TABLE BY q53_7_1 [COUNT F40.0] + q53_7_2 [COUNT F40.0] + q53_7_3 [COUNT F40.0] + q53_7_4 [COUNT 
    F40.0] + q53_7_5 [COUNT F40.0] + q53_7_6 [COUNT F40.0] + q53_7_7 [COUNT F40.0] + q53_7_8 [COUNT F40.0] 
    + q53_7_0 [COUNT F40.0] + q53_7_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_7_1 q53_7_2 q53_7_3 q53_7_4 q53_7_5 q53_7_6 q53_7_7 q53_7_8 q53_7_0 q53_7_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Órgãos responsáveis pela aquisição de documentação civil básica'.



CTABLES
  /VLABELS VARIABLES=q53_8_1 q53_8_2 q53_8_3 q53_8_4 q53_8_5 q53_8_6 q53_8_7 q53_8_8 q53_8_0 q53_8_9 
    DISPLAY=LABEL
  /TABLE BY q53_8_1 [COUNT F40.0] + q53_8_2 [COUNT F40.0] + q53_8_3 [COUNT F40.0] + q53_8_4 [COUNT 
    F40.0] + q53_8_5 [COUNT F40.0] + q53_8_6 [COUNT F40.0] + q53_8_7 [COUNT F40.0] + q53_8_8 [COUNT F40.0] 
    + q53_8_0 [COUNT F40.0] + q53_8_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_8_1 q53_8_2 q53_8_3 q53_8_4 q53_8_5 q53_8_6 q53_8_7 q53_8_8 q53_8_0 q53_8_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços ou Programas de Segurança Alimentar'.


CTABLES
  /VLABELS VARIABLES=q53_9_1 q53_9_2 q53_9_3 q53_9_4 q53_9_5 q53_9_6 q53_9_7 q53_9_8 q53_9_0 q53_9_9 
    DISPLAY=LABEL
  /TABLE BY q53_9_1 [COUNT F40.0] + q53_9_2 [COUNT F40.0] + q53_9_3 [COUNT F40.0] + q53_9_4 [COUNT 
    F40.0] + q53_9_5 [COUNT F40.0] + q53_9_6 [COUNT F40.0] + q53_9_7 [COUNT F40.0] + q53_9_8 [COUNT F40.0] 
    + q53_9_0 [COUNT F40.0] + q53_9_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_9_1 q53_9_2 q53_9_3 q53_9_4 q53_9_5 q53_9_6 q53_9_7 q53_9_8 q53_9_0 q53_9_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços ou Programas de Segurança Pública'.


CTABLES
  /VLABELS VARIABLES=q53_10_1 q53_10_2 q53_10_3 q53_10_4 q53_10_5 q53_10_6 q53_10_7 q53_10_8 q53_10_0 q53_10_9 
    DISPLAY=LABEL
  /TABLE BY q53_10_1 [COUNT F40.0] + q53_10_2 [COUNT F40.0] + q53_10_3 [COUNT F40.0] + q53_10_4 [COUNT 
    F40.0] + q53_10_5 [COUNT F40.0] + q53_10_6 [COUNT F40.0] + q53_10_7 [COUNT F40.0] + q53_10_8 [COUNT F40.0] 
    + q53_10_0 [COUNT F40.0] + q53_10_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_10_1 q53_10_2 q53_10_3 q53_10_4 q53_10_5 q53_10_6 q53_10_7 q53_10_8 q53_10_0 q53_10_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Coordenação Municipal do Programa Bolsa Família'.


CTABLES
  /VLABELS VARIABLES=q53_11_1 q53_11_2 q53_11_3 q53_11_4 q53_11_5 q53_11_6 q53_11_7 q53_11_8 q53_11_0 q53_11_9 
    DISPLAY=LABEL
  /TABLE BY q53_11_1 [COUNT F40.0] + q53_11_2 [COUNT F40.0] + q53_11_3 [COUNT F40.0] + q53_11_4 [COUNT 
    F40.0] + q53_11_5 [COUNT F40.0] + q53_11_6 [COUNT F40.0] + q53_11_7 [COUNT F40.0] + q53_11_8 [COUNT F40.0] 
    + q53_11_0 [COUNT F40.0] + q53_11_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_11_1 q53_11_2 q53_11_3 q53_11_4 q53_11_5 q53_11_6 q53_11_7 q53_11_8 q53_11_0 q53_11_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Conselho Tutelar'.


CTABLES
  /VLABELS VARIABLES=q53_12_1 q53_12_2 q53_12_3 q53_12_4 q53_12_5 q53_12_6 q53_12_7 q53_12_8 q53_12_0 q53_12_9 
    DISPLAY=LABEL
  /TABLE BY q53_12_1 [COUNT F40.0] + q53_12_2 [COUNT F40.0] + q53_12_3 [COUNT F40.0] + q53_12_4 [COUNT 
    F40.0] + q53_12_5 [COUNT F40.0] + q53_12_6 [COUNT F40.0] + q53_12_7 [COUNT F40.0] + q53_12_8 [COUNT F40.0] 
    + q53_12_0 [COUNT F40.0] + q53_12_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_12_1 q53_12_2 q53_12_3 q53_12_4 q53_12_5 q53_12_6 q53_12_7 q53_12_8 q53_12_0 q53_12_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Conselhos de Políticas Públicas e Defesa de Direitos'.


CTABLES
  /VLABELS VARIABLES=q53_13_1 q53_13_2 q53_13_3 q53_13_4 q53_13_5 q53_13_6 q53_13_7 q53_13_8 q53_13_0 q53_13_9 
    DISPLAY=LABEL
  /TABLE BY q53_13_1 [COUNT F40.0] + q53_13_2 [COUNT F40.0] + q53_13_3 [COUNT F40.0] + q53_13_4 [COUNT 
    F40.0] + q53_13_5 [COUNT F40.0] + q53_13_6 [COUNT F40.0] + q53_13_7 [COUNT F40.0] + q53_13_8 [COUNT F40.0] 
    + q53_13_0 [COUNT F40.0] + q53_13_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_13_1 q53_13_2 q53_13_3 q53_13_4 q53_13_5 q53_13_6 q53_13_7 q53_13_8 q53_13_0 q53_13_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Programas ou Projetos de Inclusão Digital'.


CTABLES
  /VLABELS VARIABLES=q53_14_1 q53_14_2 q53_14_3 q53_14_4 q53_14_5 q53_14_6 q53_14_7 q53_14_8 q53_14_0 q53_14_9 
    DISPLAY=LABEL
  /TABLE BY q53_14_1 [COUNT F40.0] + q53_14_2 [COUNT F40.0] + q53_14_3 [COUNT F40.0] + q53_14_4 [COUNT 
    F40.0] + q53_14_5 [COUNT F40.0] + q53_14_6 [COUNT F40.0] + q53_14_7 [COUNT F40.0] + q53_14_8 [COUNT F40.0] 
    + q53_14_0 [COUNT F40.0] + q53_14_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_14_1 q53_14_2 q53_14_3 q53_14_4 q53_14_5 q53_14_6 q53_14_7 q53_14_8 q53_14_0 q53_14_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Organizações Não Governamentais (ONGs)'.


CTABLES
  /VLABELS VARIABLES=q53_15_1 q53_15_2 q53_15_3 q53_15_4 q53_15_5 q53_15_6 q53_15_7 q53_15_8 q53_15_0 q53_15_9 
    DISPLAY=LABEL
  /TABLE BY q53_15_1 [COUNT F40.0] + q53_15_2 [COUNT F40.0] + q53_15_3 [COUNT F40.0] + q53_15_4 [COUNT 
    F40.0] + q53_15_5 [COUNT F40.0] + q53_15_6 [COUNT F40.0] + q53_15_7 [COUNT F40.0] + q53_15_8 [COUNT F40.0] 
    + q53_15_0 [COUNT F40.0] + q53_15_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_15_1 q53_15_2 q53_15_3 q53_15_4 q53_15_5 q53_15_6 q53_15_7 q53_15_8 q53_15_0 q53_15_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Movimentos Sociais locais/ Associações Comunitárias'.


CTABLES
  /VLABELS VARIABLES=q53_16_1 q53_16_2 q53_16_3 q53_16_4 q53_16_5 q53_16_6 q53_16_7 q53_16_8 q53_16_0 q53_16_9 
    DISPLAY=LABEL
  /TABLE BY q53_16_1 [COUNT F40.0] + q53_16_2 [COUNT F40.0] + q53_16_3 [COUNT F40.0] + q53_16_4 [COUNT 
    F40.0] + q53_16_5 [COUNT F40.0] + q53_16_6 [COUNT F40.0] + q53_16_7 [COUNT F40.0] + q53_16_8 [COUNT F40.0] 
    + q53_16_0 [COUNT F40.0] + q53_16_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53_16_1 q53_16_2 q53_16_3 q53_16_4 q53_16_5 q53_16_6 q53_16_7 q53_16_8 q53_16_0 q53_16_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Instituto Nacional do Seguro Social (INSS)'.




************************ OUTRA FORMA DE APRESENTAR A QUESTÃO 53 (ARTICULAÇÃO) ******************

MULT RESPONSE GROUPS=$mr_53_1 'O CRAS mantém articulação com Unidades Públicas da Rede de Proteção Social Básica' 
(q53_1_1 q53_1_2 q53_1_3 q53_1_4 q53_1_5 q53_1_6 q53_1_7 q53_1_8 q53_1_0 q53_1_9 (1))
/FREQUENCIES=$mr_53_1.

MULT RESPONSE GROUPS=$mr_53_2 'Articulação do CRAS com Unidades Conveniadas da Rede de Proteção Social Básica'
(q53_2_1 q53_2_2 q53_2_3 q53_2_4 q53_2_5 q53_2_6 q53_2_7 q53_2_8 q53_2_0 q53_2_9 (1))
/FREQUENCIES=$mr_53_2.

MULT RESPONSE GROUPS=$mr_53_3 'Articulação do CRAS com Unidades da Rede de Proteção Social Especial'
(q53_3_1 q53_3_2 q53_3_3 q53_3_4 q53_3_5 q53_3_6 q53_3_7 q53_3_8 q53_3_0 q53_3_9 (1))
/FREQUENCIES=$mr_53_3.

MULT RESPONSE GROUPS=$mr_53_4 'Articulação do CRAS com Serviços de Saúde'
(q53_4_1 q53_4_2 q53_4_3 q53_4_4 q53_4_5 q53_4_6 q53_4_7 q53_4_8 q53_4_0 q53_4_9 (1))
/FREQUENCIES=$mr_53_4.

MULT RESPONSE GROUPS=$mr_53_5 'Articulação do CRAS com Serviços de Educação'
(q53_5_1 q53_5_2 q53_5_3 q53_5_4 q53_5_5 q53_5_6 q53_5_7 q53_5_8 q53_5_0 q53_5_9 (1))
/FREQUENCIES=$mr_53_5.

MULT RESPONSE GROUPS=$mr_53_6 'Articulação do CRAS com Órgãos/Serviços relacionados a Trabalho e Emprego'
(q53_6_1 q53_6_2 q53_6_3 q53_6_4 q53_6_5 q53_6_6 q53_6_7 q53_6_8 q53_6_0 q53_6_9 (1))
/FREQUENCIES=$mr_53_6.

MULT RESPONSE GROUPS=$mr_53_7 'Articulação do CRAS com Órgãos responsáveis pela aquisição de documentação civil básica '
(q53_7_1 q53_7_2 q53_7_3 q53_7_4 q53_7_5 q53_7_6 q53_7_7 q53_7_8 q53_7_0 q53_7_9 (1))
/FREQUENCIES=$mr_53_7.

MULT RESPONSE GROUPS=$mr_53_8 'Articulação do CRAS com Serviços ou Programas de Segurança Alimentar'
(q53_8_1 q53_8_2 q53_8_3 q53_8_4 q53_8_5 q53_8_6 q53_8_7 q53_8_8 q53_8_0 q53_8_9 (1))
/FREQUENCIES=$mr_53_8.

MULT RESPONSE GROUPS=$mr_53_9 'Articulação do CRAS com Serviços ou Programas de Segurança Pública'
(q53_9_1 q53_9_2 q53_9_3 q53_9_4 q53_9_5 q53_9_6 q53_9_7 q53_9_8 q53_9_0 q53_9_9 (1))
/FREQUENCIES=$mr_53_9.

MULT RESPONSE GROUPS=$mr_53_10 'Articulação do CRAS com a Coordenação Municipal do Programa Bolsa Família'
(q53_10_1 q53_10_2 q53_10_3 q53_10_4 q53_10_5 q53_10_6 q53_10_7 q53_10_8 q53_10_0 q53_10_9 (1))
/FREQUENCIES=$mr_53_10.

MULT RESPONSE GROUPS=$mr_53_11 'Articulação do CRAS com Conselhos Tutelares'
(q53_11_1 q53_11_2 q53_11_3 q53_11_4 q53_11_5 q53_11_6 q53_11_7 q53_11_8 q53_11_0 q53_11_9 (1))
/FREQUENCIES=$mr_53_11.

MULT RESPONSE GROUPS=$mr_53_12 'Articulação do CRAS com Conselhos de Políticas Públicas e Defesa de Direitos'
(q53_12_1 q53_12_2 q53_12_3 q53_12_4 q53_12_5 q53_12_6 q53_12_7 q53_12_8 q53_12_0 q53_12_9 (1))
/FREQUENCIES=$mr_53_12.

MULT RESPONSE GROUPS=$mr_53_13 'Articulação do CRAS com Programas ou Projetos de Inclusão Digital'
(q53_13_1 q53_13_2 q53_13_3 q53_13_4 q53_13_5 q53_13_6 q53_13_7 q53_13_8 q53_13_0 q53_13_9 (1))
/FREQUENCIES=$mr_53_13.

MULT RESPONSE GROUPS=$mr_53_14 'Articulação do CRAS com Organizações Não Governamentais (ONGs)'
(q53_14_1 q53_14_2 q53_14_3 q53_14_4 q53_14_5 q53_14_6 q53_14_7 q53_14_8 q53_14_0 q53_14_9 (1))
/FREQUENCIES=$mr_53_14.

MULT RESPONSE GROUPS=$mr_53_15 'Articulação do CRAS com Movimentos Sociais locais/ Associações Comunitárias'
(q53_15_1 q53_15_2 q53_15_3 q53_15_4 q53_15_5 q53_15_6 q53_15_7 q53_15_8 q53_15_0 q53_15_9 (1))
/FREQUENCIES=$mr_53_15.

MULT RESPONSE GROUPS=$mr_53_16 'Articulação do CRAS com o Instituto Nacional do Seguro Social (INSS)'
(q53_16_1 q53_16_2 q53_16_3 q53_16_4 q53_16_5 q53_16_6 q53_16_7 q53_16_8 q53_16_0 q53_16_9 (1))
/FREQUENCIES=$mr_53_16.

***************************************** RECURSOS HUMANOS ********************************

FREQUENCIES VARIABLES=q54
  /ORDER=ANALYSIS.

**********************************************************************************************
**********************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO RH ***************
**********************************************************************************************
**********************************************************************************************

FREQUENCIES VARIABLES=Região Porte_pop2010
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q55_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d55_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q55_6
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=d55_6bin1 d55_6bin2 d55_6bin3
  /STATISTICS=SUM.

FREQUENCIES VARIABLES=q55_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d55_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q55_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q55_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q55_10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q55_12_1 q55_12_2 q55_12_3
  /ORDER=ANALYSIS.

******************************************************************************************************************
******************************************************************************************************************
*****************TABELAS PARA SEREM RODADAS NA BASE DE DADOS GERAIS****************
******************************************************************************************************************
******************************************************************************************************************

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d55_6bin1_sum d55_6bin2_sum d55_6bin3_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d55_6bin1_sum [SUM] + d55_6bin2_sum [SUM] + d55_6bin3_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d55_6bin1_sum d55_6bin2_sum d55_6bin3_sum DISPLAY=LABEL
  /TABLE Região [C] BY d55_6bin1_sum [SUM][COLPCT.SUM] + d55_6bin2_sum [SUM][COLPCT.SUM] + d55_6bin3_sum [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d55_6bin1_sum d55_6bin2_sum d55_6bin3_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d55_6bin1_sum [S][SUM] + d55_6bin2_sum [S][SUM] + d55_6bin3_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d55_8bin1_sum d55_8bin2_sum d55_8bin3_sum d55_8bin4_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d55_8bin1_sum [SUM] + d55_8bin2_sum [SUM] + d55_8bin3_sum [SUM] + 
    d55_8bin4_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d55_8bin1_sum d55_8bin2_sum d55_8bin3_sum d55_8bin4_sum DISPLAY=LABEL
  /TABLE Região [C] BY d55_8bin1_sum [SUM] + d55_8bin2_sum [SUM] + d55_8bin3_sum [SUM] + 
    d55_8bin4_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d55_8bin1_sum d55_8bin2_sum d55_8bin3_sum d55_8bin4_sum 
    DISPLAY=LABEL
  /TABLE uf_s [C] BY d55_8bin1_sum [S][SUM] + d55_8bin2_sum [S][SUM] + d55_8bin3_sum 
    [S][SUM] + d55_8bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região d55_7bin1_sum d55_7bin2_sum d55_7bin3_sum d55_7bin4_sum d55_7bin5_sum 
    DISPLAY=LABEL
  /TABLE Região [C] BY d55_7bin1_sum [SUM] + d55_7bin2_sum [SUM] + d55_7bin3_sum [SUM] + 
    d55_7bin4_sum [SUM] + d55_7bin5_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf_s d55_7bin1_sum d55_7bin2_sum d55_7bin3_sum d55_7bin4_sum 
    d55_7bin5_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d55_7bin1_sum [S][SUM] + d55_7bin2_sum [S][SUM] + d55_7bin3_sum 
    [S][SUM] + d55_7bin4_sum [S][SUM] + d55_7bin5_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e UF'.


