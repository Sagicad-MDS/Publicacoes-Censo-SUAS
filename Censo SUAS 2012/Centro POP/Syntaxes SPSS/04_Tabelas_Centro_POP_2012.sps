
****** Tabelas Centro POP 2012 *****
 

FREQUENCIES VARIABLES=Porte_pop2010 uf Região
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D2_horas_por_semana_fx
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_3 'Tipo de unidade com a qual o Centro POP compartilha o imóvel' (q5_1 q5_2 q5_3 q5_4 q5_5 q5_6 q5_7 q5_8 q5_9 (1))
/FREQUENCIES=$mr_3.

MULT RESPONSE GROUPS=$mr_6 'Espaços do imóvel que são compartilhados entre o CENTRO POP e a outra unidade' (q6_1 q6_2 q6_3 q6_4 q6_5 q6_6 q6_7 q6_8 q6_9 q6_10 q6_11 q6_12 q6_13 q6_14 q6_15 (1))
/FREQUENCIES=$mr_6.

FREQUENCIES VARIABLES=D7_Salas_atend_fx
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D7_total_salas_adm_e_atend_fx
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7_5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7_6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q7_8
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_7 'Demais espaços físicos disponibilizados no Centro POP' (q7_9 q7_10 q7_11 q7_12 q7_13 q7_14 q7_15 q7_16 (1))
/FREQUENCIES=$mr_7.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q8_1 q8_2 q8_3 q8_4 DISPLAY=LABEL
  /TABLE q8_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8_4 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q8_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q8_2 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q8_3 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q8_4 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Condições de acessiblidade para pessoas com deficiência e pessoas idosas'.

MULT RESPONSE GROUPS=$mr_9 'Outras adaptações disponíveis para assegurar a acessibilidade no Centro POP' (q9_1 q9_2 q9_3 (1))
/FREQUENCIES=$mr_9.

FREQUENCIES VARIABLES=q10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q11_1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_12 'Refeições que são oferecidas aos usuários no espaço do Centro POP' (q12_1 q12_2 q12_3 q12_4 q12_5(1))
/FREQUENCIES=$mr_12.

MULT RESPONSE GROUPS=$mr_13 'Equipamentos disponíveis no Centro POP' (q13_1 q13_2 q13_3 q13_4 q13_5 q13_6 q13_7 q13_8 q13_9 q13_10 q13_11 q13_12 q13_13 q13_14 q13_15 q13_16 q13_17 q13_18 q13_19 q13_20 q13_21 q13_22 q13_23 (1))
/FREQUENCIES=$mr_13.

FREQUENCIES VARIABLES=D14a
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D14b
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_15 'A equipe técnica utiliza internet em outro local por insuficiência de acesso no Centro?' (q15_1 q15_2 q15_3 q15_4 q15_5 q15_6 (1))
/FREQUENCIES=$mr_15.

FREQUENCIES VARIABLES=q16
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_17 'Ações desenvolvidas pelo Centro POP' (q17_1 q17_2 q17_3 q17_4 q17_5 q17_6 q17_7 q17_8 q17_9 q17_10 q17_11 q17_12 q17_13 q17_14 q17_15 q17_16 q17_17 q17_18 q17_19 q17_20 q17_21 q17_22 q17_23 q17_24 q17_25 q17_26 (1))
/FREQUENCIES=$mr_17.

FREQUENCIES VARIABLES=q18
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_19 'Temas que são regularmente abordados nas oficinas/atividades em grupo' (q19_1 q19_2 q19_3 q19_4 q19_5 q19_6 q19_7 q19_8 q19_9 q19_10 (1))
/FREQUENCIES=$mr_19.

MULT RESPONSE GROUPS=$mr_20 '' (q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 q20_7 (1))
/FREQUENCIES=$mr_20.


CTABLES
  /VLABELS VARIABLES=q21a_1 q21b_1 q21c_1_1 q21c_2_1 q21d_1_1 q21d_2_1 q21d_3_1 q21d_4_1 DISPLAY=LABEL
  /TABLE q21a_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q21b_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q21c_1_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q21c_2_1 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1]+ q21d_1_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]+ q21d_1_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]+ q21d_2_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]+
 q21d_3_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q21d_4_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q21a_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q21b_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q21c_1_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q21c_2_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
 /CATEGORIES VARIABLES=q21d_1_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
/CATEGORIES VARIABLES=q21d_2_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
/CATEGORIES VARIABLES=q21d_3_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
/CATEGORIES VARIABLES=q21d_4_1 [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Quantidade de casos em acompanhamento pelo Centro POP'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q21a_1 q21b_1 q21c_1_1 q21c_2_1 q21d_1_1 q21d_2_1 q21d_3_1 q21d_4_1 
    DISPLAY=LABEL
  /TABLE q21a_1 [S][MEAN, STDDEV, SUM, TOTALN F40.0] + q21b_1 [S][MEAN, STDDEV, SUM, TOTALN F40.0] + 
    q21c_1_1 [S][MEAN, STDDEV, SUM, TOTALN F40.0] + q21c_2_1 [S][MEAN, STDDEV, SUM, TOTALN F40.0] + q21d_1_1 
    [S][MEAN, STDDEV, SUM, TOTALN F40.0] + q21d_2_1 [S][MEAN, STDDEV, SUM, TOTALN F40.0] + q21d_3_1 [S][MEAN, 
    STDDEV, SUM, TOTALN F40.0] + q21d_4_1 [S][MEAN, STDDEV, SUM, TOTALN F40.0]
  /TITLES
    TITLE='Volume de casos em acompanhamento no Serviço Especializado para pessoas em Situação '+
    'de Rua na Unidade'.

FREQUENCIES VARIABLES=q22
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q23
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q25 DISPLAY=LABEL
  /TABLE q25 [S][MEAN, STDDEV, SUM]
  /TITLES
    TITLE='Média mensal de indivíduos identificados em situação de rua pelo Serviço de Abordagem '+
    'realizado pelo Centro POP'.

MULT RESPONSE GROUPS=$mr_26 'A abordagem Social é desneovlvida no território de abrangência deste Centro' (q26_1 q26_2 q26_3 q26_4 (1))
/FREQUENCIES=$mr_26.

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_29 'Indique os dados e informações coletadas para subsidiar a elabaração do diagnóstico socioterritorial' (q29_1 q29_2 q29_3 q29_4 (1))
/FREQUENCIES=$mr_29.

FREQUENCIES VARIABLES=q30
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q31 DISPLAY=LABEL
  /TABLE q31 [S][MEAN, STDDEV, SUM]
  /TITLES
    TITLE='Caso sim, Quantas pessoas'.

FREQUENCIES VARIABLES=D31_fx
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q32_1 q32_2 q32_3 q32_4 DISPLAY=LABEL
  /TABLE q32_1 [S][MEAN, TOTALN F40.0] + q32_2 [S][MEAN, TOTALN F40.0] + q32_3 [S][MEAN, TOTALN F40.0] 
    + q32_4 [S][MEAN, TOTALN F40.0]
  /TITLES
    TITLE='Percentual aproximado das formas pelas quais os usuários acessam os serviços do '+
    'Centro POP'.

CTABLES
  /VLABELS VARIABLES=q33_1 q33_2 q33_3 q33_4 q33_5 q33_6 q33_7 q33_8 q33_9 q33_10 q33_11 q33_12 q33_13 q33_14 q33_15 
    DISPLAY=LABEL
  /TABLE q33_1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q33_2 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q33_3 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q33_4 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q33_5 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q33_6 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q33_7 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q33_8 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q33_9 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q33_10 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q33_11 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q33_12 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q33_13 [C][COUNT F40.0, COLPCT.COUNT] + q33_14 [C][COUNT F40.0, COLPCT.COUNT] + q33_15 [C][COUNT F40.0, COLPCT.COUNT]
  /CATEGORIES VARIABLES=q33_1 q33_2 q33_3 q33_4 q33_5 q33_6 q33_7 q33_8 q33_9 q33_10 q33_11 q33_12 q33_13 q33_14 q33_15
    ORDER=A KEY=VALUE EMPTY=EXCLUDE
 /TITLES
    TITLE='Enumere de 1 a 5 as unidades/serviços que mais frequentemente encaminham famílias/indivíduos em situação de rua para atendimento neste Centro'.

FREQUENCIES VARIABLES=q34
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q35
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q36
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_37 'Caso afirmativo, indique as atividades realizadas' (q37_1 q37_2 q37_3 q37_4 (1))
/FREQUENCIES=$mr_37.

FREQUENCIES VARIABLES=q38
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_39 'Atividades relativas à gestão realizadas na Unidade' (q39_1 q39_2 q39_3 q39_4 q39_5 q39_6 q39_7 q39_8 q39_9 q39_10 q39_11 q39_12 q39_13 q39_14 q39_15 q39_16 q39_17 (1))
/FREQUENCIES=$mr_39.

FREQUENCIES VARIABLES=q40
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q41
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr42_a 'Serviço Especializado em Abordagem Social (quando não ofertado pelo Centro de Referência para Pop Rua)' (q42a_1 q42a_2 q42a_3 q42a_4 q42a_5 q42a_6 q42a_7 q42a_8 q42a_9 q42a_10 q42a_11 (1))
 /FREQUENCIES=$mr42_a.

MULT RESPONSE GROUPS=$mr42_b 'Serviços de Acolhimento (abrigos institucionais, casas de passagem, repúblicas' (q42b_1 q42b_2 q42b_3 q42b_4 q42b_5 q42b_6 q42b_7 q42b_8 q42b_9 q42b_10 q42b_11 (1))
 /FREQUENCIES=$mr42_b.

MULT RESPONSE GROUPS=$mr42_c 'Centro de Referência de Assistência Social CRAS' (q42c_1 q42c_2 q42c_3 q42c_4 q42c_5 q42c_6 q42c_7 q42c_8 q42c_9 q42c_10 q42c_11 (1))
 /FREQUENCIES=$mr42_c.

MULT RESPONSE GROUPS=$mr42_d 'Centro de Referência Especializado de Assistência Social (CREAS)' (q42d_1 q42d_2 q42d_3 q42d_4 q42d_5 q42d_6 q42d_7 q42d_8 q42d_9 q42d_10 q42d_11 (1))
 /FREQUENCIES=$mr42_d.

MULT RESPONSE GROUPS=$mr42_e 'Demais serviços da rede socioassistencial' (q42e_1 q42e_2 q42e_3 q42e_4 q42e_5 q42e_6 q42e_7 q42e_8 q42e_9 q42e_10 q42e_11 (1))
 /FREQUENCIES=$mr42_e.

MULT RESPONSE GROUPS=$mr42_f 'Serviços de Saúde Mental (CAPS, CAPSad, ambulatórios etc)' (q42f_1 q42f_2 q42f_3 q42f_4 q42f_5 q42f_6 q42f_7 q42f_8 q42f_9 q42f_10 q42f_11 (1))
 /FREQUENCIES=$mr42_f.

MULT RESPONSE GROUPS=$mr42_g 'Equipes da Saúde que atuem no espaço da rua (Consultórios de Rua ou outros)' (q42g_1 q42g_2 q42g_3 q42g_4 q42g_5 q42g_6 q42g_7 q42g_8 q42g_9 q42g_10 q42g_11 (1))
 /FREQUENCIES=$mr42_g.

MULT RESPONSE GROUPS=$mr42_h 'Serviços de saúde voltados à internação' (q42h_1 q42h_2 q42h_3 q42h_4 q42h_5 q42h_6 q42h_7 q42h_8 q42h_9 q42h_10 q42h_11 (1))
 /FREQUENCIES=$mr42_h.

MULT RESPONSE GROUPS=$mr42_i 'Comunidades Terapêuticas' (q42i_1 q42i_2 q42i_3 q42i_4 q42i_5 q42i_6 q42i_7 q42i_8 q42i_9 q42i_10 q42i_11 (1))
 /FREQUENCIES=$mr42_i.

MULT RESPONSE GROUPS=$mr42_j 'Demais Serviços da rede de Saúde' (q42j_1 q42j_2 q42j_3 q42j_4 q42j_5 q42j_6 q42j_7 q42j_8 q42j_9 q42j_10 q42j_11 (1))
 /FREQUENCIES=$mr42_j.

MULT RESPONSE GROUPS=$mr42_k 'Órgãos responsáveis pela aquisição de documentação civil básica' (q42k_1 q42k_2 q42k_3 q42k_4 q42k_5 q42k_6 q42k_7 q42k_8 q42k_9 q42k_10 q42k_11 (1))
 /FREQUENCIES=$mr42_k.

MULT RESPONSE GROUPS=$mr42_l 'Serviços/Programas de Segurança Alimentar' (q42l_1 q42l_2 q42l_3 q42l_4 q42l_5 q42l_6 q42l_7 q42l_8 q42l_9 q42l_10 q42l_11 (1))
 /FREQUENCIES=$mr42_l.

MULT RESPONSE GROUPS=$mr42_m 'Serviços/Programas de Habitação' (q42m_1 q42m_2 q42m_3 q42m_4 q42m_5 q42m_6 q42m_7 q42m_8 q42m_9 q42m_10 q42m_11 (1))
 /FREQUENCIES=$mr42_m.

MULT RESPONSE GROUPS=$mr42_n 'Serviços/Programas de Geração de Trabalho e renda' (q42n_1 q42n_2 q42n_3 q42n_4 q42n_5 q42n_6 q42n_7 q42n_8 q42n_9 q42n_10 q42n_11 (1))
 /FREQUENCIES=$mr42_n.

MULT RESPONSE GROUPS=$mr42_o 'Serviços de outras políticas públicas' (q42o_1 q42o_2 q42o_3 q42o_4 q42o_5 q42o_6 q42o_7 q42o_8 q42o_9 q42o_10 q42o_11 (1))
 /FREQUENCIES=$mr42_o.

MULT RESPONSE GROUPS=$mr42_p 'Programas/projetos de inclusão digital' (q42p_1 q42p_2 q42p_3 q42p_4 q42p_5 q42p_6 q42p_7 q42p_8 q42p_9 q42p_10 q42p_11 (1))
 /FREQUENCIES=$mr42_p.

MULT RESPONSE GROUPS=$mr42_q 'Órgãos de Defesa de Direitos (Poder Judiciário, Ministério Público, Defensoria Pública, etc.)' (q42q_1 q42q_2 q42q_3 q42q_4 q42q_5 q42q_6 q42q_7 q42q_8 q42q_9 q42q_10 q42q_11 (1))
 /FREQUENCIES=$mr42_q.

MULT RESPONSE GROUPS=$mr42_r 'Movimentos organizados da população em situação de rua (não incluir fluxos protocolos para esta opção)' (q42r_1 q42r_2 q42r_3 q42r_4 q42r_5 q42r_6 q42r_7 q42r_8 q42r_9 q42r_10 (1))
 /FREQUENCIES=$mr42_r.

MULT RESPONSE GROUPS=$mr42_s 'ONGs que atuam com defesa de direitos' (q42s_1 q42s_2 q42s_3 q42s_4 q42s_5 q42s_6 q42s_7 q42s_8 q42s_9 q42s_10 q42s_11 (1))
 /FREQUENCIES=$mr42_s.

MULT RESPONSE GROUPS=$mr42_t 'ONGs que realizam projetos sociais' (q42t_1 q42t_2 q42t_3 q42t_4 q42t_5 q42t_6 q42t_7 q42t_8 q42t_9 q42t_10 q42t_11 (1))
 /FREQUENCIES=$mr42_t.

MULT RESPONSE GROUPS=$mr42_u 'Unidades/Serviços de outros municípios' (q42u_1 q42u_2 q42u_3 q42u_4 q42u_5 q42u_6 q42u_7 q42u_8 q42u_9 q42u_10 q42u_11 (1))
 /FREQUENCIES=$mr42_u.

FREQUENCIES VARIABLES=q43
  /ORDER=ANALYSIS.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=D44_8bin1_sum D44_8bin2_sum D44_8bin3_sum D44_9bin1_sum D44_9bin2_sum 
    D44_9bin3_sum D44_9bin4_sum D44_9bin5_sum D44_10bin1_sum D44_10bin2_sum D44_10bin3_sum 
    D44_10bin4_sum nu_trabalhadores 
    DISPLAY=LABEL
  /TABLE D44_8bin1_sum [SUM, MEAN, MAXIMUM, STDDEV] + D44_8bin2_sum [SUM, MEAN, 
    MAXIMUM, STDDEV] + D44_8bin3_sum [SUM, MEAN, MAXIMUM, STDDEV] + D44_9bin1_sum [SUM, 
    MEAN, MAXIMUM, STDDEV] + D44_9bin2_sum [SUM, MEAN, MAXIMUM, STDDEV] + D44_9bin3_sum [SUM, 
    MEAN, MAXIMUM, STDDEV] + D44_9bin4_sum [SUM, MEAN, MAXIMUM, STDDEV] + D44_9bin5_sum 
    [SUM, MEAN, MAXIMUM, STDDEV] + D44_10bin1_sum [SUM, MEAN, MAXIMUM, STDDEV] + 
    D44_10bin2_sum [SUM, MEAN, MAXIMUM, STDDEV] + D44_10bin3_sum [SUM, MEAN, MAXIMUM, 
    STDDEV] + D44_10bin4_sum [SUM, MEAN, MAXIMUM, STDDEV] + nu_trabalhadores [SUM, MEAN, 
    MAXIMUM, STDDEV].

***TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=q44_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44_10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44_11
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44_12
  /ORDER=ANALYSIS.

