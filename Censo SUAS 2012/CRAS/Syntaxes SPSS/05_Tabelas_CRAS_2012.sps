
FREQUENCIES VARIABLES=Região
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Porte_pop2010
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q3_1 q3_2 q3_3 DISPLAY=LABEL
  /TABLE q3_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
    + q3_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q3_1 q3_2 q3_3 ORDER= D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Fontes de financiamento do CRAS'.

FREQUENCIES VARIABLES=q4_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q4_2
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=D4_horas_por_semana_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q6
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_7 'Tipo de uniade com a qual o CRAS compartilha seu imóvel' (q7_1 q7_2 q7_3 q7_4 q7_5 q7_6 q7_7 q7_8 q7_9 q7_10 q7_11 (1))
/FREQUENCIES=$mr_7.


MULT RESPONSE GROUPS=$mr_8 'Espaços do imóvel que são compartilhados entre o CRAS e a outra unidade' (q8_1 q8_2 q8_3 q8_4 q8_5 q8_6 q8_7 q8_8 q8_9 q8_10 (1))
/FREQUENCIES=$mr_8.

FREQUENCIES VARIABLES=D9a_sl_atend_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D9b_total_salas_adm_e_atend_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D9f
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q9g q9h q9i q9j DISPLAY=LABEL
  /TABLE q9g [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q9h [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
 q9i [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q9j [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q9g q9h q9i q9j [1, 0, OTHERNM] EMPTY=INCLUDE
/TITLES
 TITLE= 'Demais espaços físicos desponíveis no CRAS'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q10a q10b q10c q10d DISPLAY=LABEL
  /TABLE q10a [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q10b [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q10c [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q10d [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q10a [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q10b [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q10c [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q10d [0, 1, 2, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Condições de acessiblidade para pessoas com deficiência e pessoas idosas'.

MULT RESPONSE GROUPS=$mr_11 'Outras adaptações disponíveis para assegurar a acessibilidade no CRAS' (q11_1 q11_2 q11_3 (1))
/FREQUENCIES=$mr_11.

MULT RESPONSE GROUPS=$mr_12 'Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CRAS' (q12_1 q12_2 q12_3 q12_4 q12_5 q12_6 q12_7 q12_8 q12_9 q12_10 q12_11 q12_12 q12_13 q12_14 q12_15 q12_16 q12_17 (1))
/FREQUENCIES=$mr_12.


FREQUENCIES VARIABLES=D13a
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D13b
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q14a q14b DISPLAY=LABEL
  /TABLE q14a [S][MEAN, STDDEV, SUM] + q14b [S][SUM, MEAN, STDDEV]
  /TITLES
    TITLE='Quantidade de computadores, em perfeito funcionamento, existente para utilização pelos usuários do CRAS'.

FREQUENCIES VARIABLES=q15
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_16 'Ações e atividades desenvolvidas no âmbito do PAIF' (q16_1 q16_2 q16_3 q16_4 q16_5 q16_6 q16_7 q16_8 q16_9 q16_10 q16_11 q16_12 q16_13 q16_14 q16_15 q16_16 q16_17 q16_18 q16_19 (1))
/FREQUENCIES=$mr_16.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17_1a q17_1b DISPLAY=LABEL
  /TABLE q17_1a [S][SUM, MEAN, STDDEV, COUNT F40.0] + q17_1b [S][SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Volume de famílias em acompanhamento pelo PAIF em Agosto de 2012'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17_2a q17_2b q17_2c q17_2d q17_2e q17_2f DISPLAY=LABEL
  /TABLE q17_2a [SUM, MEAN, STDDEV, COUNT F40.0] + q17_2b [SUM, MEAN, STDDEV, COUNT F40.0] + q17_2c 
    [SUM, MEAN, STDDEV, COUNT F40.0] + q17_2d [SUM, MEAN, STDDEV, COUNT F40.0] + q17_2e [SUM, MEAN, STDDEV, COUNT F40.0] + q17_2f [SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Perfil de famílias inseridas em acompanhamento no PAIF em Agosto de 2012'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17_3a q17_3b q17_3c q17_3d q17_3e
    DISPLAY=LABEL
  /TABLE q17_3a [SUM, MEAN, STDDEV, COUNT F40.0] + q17_3b [SUM, MEAN, STDDEV, COUNT F40.0] + q17_3c 
    [SUM, MEAN, STDDEV, COUNT F40.0] + q17_3d [SUM, MEAN, STDDEV, COUNT F40.0] + q17_3e [SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Volume de atendimentos individualizados realizados no CRAS em Agosto de 2012'.


FREQUENCIES VARIABLES=q17_4
  /FORMAT=NOTABLE
  /STATISTICS= SUM MEAN STDDEV 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q17_5
  /FORMAT=NOTABLE
  /STATISTICS= SUM MEAN STDDEV 
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q18a q18b q18c q18d q18e q18f q18g
    DISPLAY=LABEL
  /TABLE q18a [SUM, MEAN, STDDEV, COUNT F40.0] + q18b [SUM, MEAN, STDDEV, COUNT F40.0] + q18c 
    [SUM, MEAN, STDDEV, COUNT F40.0] + q18d [SUM, MEAN, STDDEV, COUNT F40.0] + q18e [SUM, MEAN, STDDEV, COUNT F40.0] + q18f [SUM, MEAN, STDDEV, COUNT F40.0] + q18g [SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Serviços de Convivência e Fortalecimento de Vínculos em Agosto de 2012'.


FREQUENCIES VARIABLES=q19_1a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q19_1b q19_1c q19_1d q19_1e DISPLAY=LABEL
  /TABLE  q19_1b [SUM, MEAN, STDDEV, COUNT F40.0] + q19_1c [SUM, MEAN, STDDEV, COUNT F40.0] + q19_1d [SUM, MEAN, STDDEV, COUNT F40.0] + q19_1e [SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Volume de crianças, de até 6 anos de idade, atendidas pelo Serviço de Convivência e '+
    'Fortalecimento de Vínculos em Agosto de 2012'.


FREQUENCIES VARIABLES=q19_1f
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_1g
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_1h
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_2a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q19_2b q19_2c q19_2d q19_2e q19_2f DISPLAY=LABEL
  /TABLE q19_2b [SUM, MEAN, STDDEV, COUNT F40.0] + q19_2c [SUM, MEAN, STDDEV, COUNT F40.0] + q19_2d [SUM, MEAN, STDDEV, COUNT F40.0] + q19_2e [SUM, MEAN, STDDEV, COUNT F40.0] + q19_2f [SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Volume de crianças e adolescentes, de 6 a 15 anos, atendidas pelo Serviço de '+
    'Convivência e Fortalecimento de Vínculos (Agosto de 2012)'.

FREQUENCIES VARIABLES=q19_2g
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_2h
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_3a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q19_3b q19_3c q19_3d q19_3e q19_3f DISPLAY=LABEL
  /TABLE q19_3b [SUM, MEAN, STDDEV, COUNT F40.0] + q19_3c [SUM, MEAN, STDDEV, COUNT F40.0] + q19_3d [SUM, MEAN, STDDEV, COUNT F40.0] + q19_3e [SUM, MEAN, STDDEV, COUNT F40.0] + q19_3f [SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Volume de crianças e adolescentes, de 15 a 17 anos, atendidas pelo Serviço de '+
    'Convivência e Fortalecimento de Vínculos (Agosto de 2012)'.


FREQUENCIES VARIABLES=q19_3g
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_3h
  /ORDER=ANALYSIS.LYSIS.

FREQUENCIES VARIABLES=q19_3i
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19_3j
  /FORMAT=DVALUE
  /ORDER=ANAlYSIS.


FREQUENCIES VARIABLES=q20a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q20b q20c q20d q20e DISPLAY=LABEL
  /TABLE q20b [SUM, MEAN, STDDEV, COUNT F40.0] + q20c [SUM, MEAN, STDDEV, COUNT F40.0] + q20d [SUM, MEAN, STDDEV, COUNT F40.0] + q20e [SUM, MEAN, STDDEV, COUNT F40.0]
  /TITLES
    TITLE='Volume de idosos atendidos pelo Serviço de Fortalecimento de Vínculos para Idosos (mês de referência: Agosto de 2012)'.


FREQUENCIES VARIABLES=q20f
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q20g
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q20h
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q21
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q22b q22c DISPLAY=LABEL
  /TABLE q22b [SUM, MEAN, STDDEV, COUNT F40.0] + q22c [SUM, MEAN, STDDEV, COUNT F40.0] 
  /TITLES
    TITLE='Volume mensal de ações relacionadas a grupos/coletivos realizadas no CRAS pelo PAIF (mês de referência: Agosto de 2012)'.


FREQUENCIES VARIABLES=q22d
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_22 'Principais temáticas abordadas no grupos realizados no CRAS' (q22e_1 q22e_2 q22e_3 q22e_4 q22e_5 q22e_6 q22e_7 q22e_8 q22e_9 q22e_10 q22e_10 q22e_11(1))
/FREQUENCIES=$mr_22.


FREQUENCIES VARIABLES=q23
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q24
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_25 'Beneficios Eventuais concedidos no CRAS' (q25_1 q25_2 q25_3 q25_4 q25_5(1))
/FREQUENCIES=$mr_25.

FREQUENCIES VARIABLES=q25_qual
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_26 'Estratégias específicas desenvolidas pelo CRAS para inclusão de pessoas com deficiência nos servisços da unidade' (q26_1 q26_2 q26_3 q26_4 q26_5 q26_6(1))
/FREQUENCIES=$mr_26.

FREQUENCIES VARIABLES=q27
   /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q29
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q30
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q31_1 q31_2 DISPLAY=LABEL
  /TABLE q31_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q31_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q31_1 q31_2 ORDER= D KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Tipo de área de localização do(s) território(s) atendido(s) por esta equipe técnica adicional'.


FREQUENCIES VARIABLES=q32
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q33
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_34 'Informações descritas no documento diagnóstico do território de abrangência do CRAS' (q34_1 q34_2 q34_3 q34_4 q34_5 q34_6 q34_7 q34_8 q34_9 q34_10 q34_10 (1))
/FREQUENCIES=$mr_34.


FREQUENCIES VARIABLES=q35
  /FORMAT=NOTABLE
  /STATISTICS=STDDEV MEAN SUM
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q35_ns DISPLAY=LABEL
  /TABLE q35_ns [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q35_ns [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Não sabe quantas famílias em situação de vulnerabilidade residem no território de '+
    'abrangência do CRAS'.

DESCRIPTIVES
  VARIABLES=q36_1 q36_2 q36_3 q36_4
  /STATISTICS=MEAN .

MULT RESPONSE GROUPS=$mr_37 'Quais os objetivos das ações de busca ativa realizads pela Equipe do CRAS' (q37_1 q37_2 q37_3 q37_4 q37_5 q37_6 q37_7 q37_8(1))
/FREQUENCIES=$mr_37.

MULT RESPONSE GROUPS=$mr_38 'Estratégias utilizadas para apoio das ações de busca ativa realizadas pela Equipe do CRAS' (q38_1 q38_2 q38_3 q38_4 q38_5 q38_6 q38_7 q38_8 q38_9(1))
/FREQUENCIES=$mr_38.

MULT RESPONSE GROUPS=$mr_39 'Situações mais frequentemente identificadas no território de abrangência do CRAS' (q39_1 q39_2 q39_3 q39_4 q39_5 q39_6 q39_7 q39_8 q39_9 q39_10 q39_11 q39_12 q39_13 q39_14 q39_15 q39_16 q39_17 q39_18 q39_19(1))
/FREQUENCIES=$mr_39.


FREQUENCIES VARIABLES=q40
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_41 'O CRAS atende povos e comunidades tradicionais?' (q41_1 q41_2 q41_3 q41_4 q41_5 q41_6 q41_7(1))
/FREQUENCIES=$mr_41.

FREQUENCIES VARIABLES=q42
   /ORDER=ANALYSIS.

*****Questão 43

MULT RESPONSE GROUPS=$mr_43a_1 'Listagem do Programa Bolsa Família' ( q43a_1 q43a_2 q43a_3 q43a_4 q43a_5(1))
/FREQUENCIES=$mr_43a_1.

MULT RESPONSE GROUPS=$mr_43b_1 'Listagem das famílias em descumprimento das condicionalidades de educação do Programa Bolsa Família' ( q43b_1 q43b_2 q43b_3 q43b_4 q43b_5(1))
/FREQUENCIES=$mr_43b_1.

MULT RESPONSE GROUPS=$mr_43c_1 'Listagem das famílias em descumprimento das condicionalidades de saúde do Programa Bolsa Família'( q43c_1 q43c_2 q43c_3 q43c_4 q43c_5(1))
/FREQUENCIES=$mr_43c_1.

MULT RESPONSE GROUPS=$mr_43d_1 'Listagem de famílias inscritas no CadÚnico do seu território de atuação' (q43d_1 q43d_2 q43d_3 q43d_4 q43d_5(1))
/FREQUENCIES=$mr_43d_1.

MULT RESPONSE GROUPS=$mr_43e_1 'Listagem dos idosos beneficiários do BPC/Idoso'(q43e_1 q43e_2 q43e_3 q43e_4 q43e_5(1))
/FREQUENCIES=$mr_43e_1.

MULT RESPONSE GROUPS=$mr_43f_1 'Listagem das pessoas com deficiência beneficiárias do BPC/Pessoas com Deficiência'(q43f_1 q43f_2 q43f_3 q43f_4 q43f_5(1))
/FREQUENCIES=$mr_43f_1.

MULT RESPONSE GROUPS=$mr_43g_1 'Listagem dos beneficiários do PETI'(q43g_1 q43g_2 q43g_3 q43g_4 q43g_5(1))
/FREQUENCIES=$mr_43g_1.

*****Questão 44

MULT RESPONSE GROUPS=$mr_44a_1 'Acesso do CRAS ao CadÚnico' (q44a_1 q44a_2 q44a_3 (1))
/FREQUENCIES=$mr_44a_1.

MULT RESPONSE GROUPS=$mr_44b_1 'SICON - Sistema Integrado de gestão de Condicionalidades do Programa Bolsa Família'(q44b_1 q44b_2 q44b_3 (1))
/FREQUENCIES=$mr_44b_1.

MULT RESPONSE GROUPS=$mr_44c_1 'SIBEC - Sistema de Benefícios ao Cidadão'(q44c_1 q44c_2 q44c_3 (1))
/FREQUENCIES=$mr_44c_1.

MULT RESPONSE GROUPS=$mr_44d_1 'BPC na Escola - Sistema de Informações do Programa BPC na Escola'(q44d_1 q44d_2 q44d_3 (1))
/FREQUENCIES=$mr_44d_1.

MULT RESPONSE GROUPS=$mr_44e_1 'SISPET I- Sistema de Controle e Acompanhamento do PETI (SUASWEB)'(q44e_1 q44e_2 q44e_3 (1))
/FREQUENCIES=$mr_44e_1.

MULT RESPONSE GROUPS=$mr_44f_1 'SISJOVEM - Sistema de Acompanhamento e Gestão do Projovem Adolescente'(q44f_1 q44f_2 q44f_3 (1))
/FREQUENCIES=$mr_44f_1.

MULT RESPONSE GROUPS=$mr_44g_1 'Carteira do Idoso - Sistema de Emissão da Carteira do Idoso (SUASWEB)'(q44g_1 q44g_2 q44g_3 (1))
/FREQUENCIES=$mr_44g_1.


FREQUENCIES VARIABLES=q45
   /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q46
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_47a_1 'O CRAS mantém articulação com Unidades Públicas da Rede de Proteção Social Básica'(q47a_1 q47a_2 q47a_3 q47a_4 q47a_5 q47a_6 q47a_7 q47a_8 q47a_9 q47a_10(1))
/FREQUENCIES=$mr_47a_1.

MULT RESPONSE GROUPS=$mr_47b 'Articulação do CRAS com Unidades Conveniadas da Rede de Proteção Social Básica'(q47b_1 q47b_2 q47b_3 q47b_4 q47b_5 q47b_6 q47b_7 q47b_8 q47b_9 q47b_10(1))
/FREQUENCIES=$mr_47b.

MULT RESPONSE GROUPS=$mr_47c 'Articulação do CRAS com Unidades Públicas da Rede de Proteção Social Especial'(q47c_1 q47c_2 q47c_3 q47c_4 q47c_5 q47c_6 q47c_7 q47c_8 q47c_9 q47c_10(1))
/FREQUENCIES=$mr_47c.

MULT RESPONSE GROUPS=$mr_47d 'Articulação do CRAS com Serviços de Saúde'(q47d_1 q47d_2 q47d_3 q47d_4 q47d_5 q47d_6 q47d_7 q47d_8 q47d_9 q47d_10(1))
/FREQUENCIES=$mr_47d.

MULT RESPONSE GROUPS=$mr_47e 'Articulação do CRAS com Serviços de Educação'(q47e_1 q47e_2 q47e_3 q47e_4 q47e_5 q47e_6 q47e_7 q47e_8 q47e_9 q47e_10(1))
/FREQUENCIES=$mr_47e.

MULT RESPONSE GROUPS=$mr_47f 'Articulação do CRAS com Órgãos/Serviços relacionados a Trabalho e Emprego'(q47f_1 q47f_2 q47f_3 q47f_4 q47f_5 q47f_6 q47f_7 q47f_8 q47f_9 q47f_10(1))
/FREQUENCIES=$mr_47f.

MULT RESPONSE GROUPS=$mr_47g 'Articulação do CRAS com Órgãos responsáveis pela aquisição de documentação civil básica '(q47g_1 q47g_2 q47g_3 q47g_4 q47g_5 q47g_6 q47g_7 q47g_8 q47g_9 q47g_10(1))
/FREQUENCIES=$mr_47g.

MULT RESPONSE GROUPS=$mr_47h 'Articulação do CRAS com Serviços ou Programas de Segurança Alimentar'(q47h_1 q47h_2 q47h_3 q47h_4 q47h_5 q47h_6 q47h_7 q47h_8 q47h_9 q47h_10(1))
/FREQUENCIES=$mr_47h.

MULT RESPONSE GROUPS=$mr_47i 'Articulação do CRAS com Serviços ou Programas de Segurança Pública'(q47i_1 q47i_2 q47i_3 q47i_4 q47i_5 q47i_6 q47i_7 q47i_8 q47i_9 q47i_10(1))
/FREQUENCIES=$mr_47i.

MULT RESPONSE GROUPS=$mr_47j 'Articulação do CRAS com a Coordenação Municipal do Programa Bolsa Família'(q47j_1 q47j_2 q47j_3 q47j_4 q47j_5 q47j_6 q47j_7 q47j_8 q47j_9 q47j_10(1))
/FREQUENCIES=$mr_47j.

MULT RESPONSE GROUPS=$mr_47k 'Articulação do CRAS com Conselhos Tutelares'(q47k_1 q47k_2 q47k_3 q47k_4 q47k_5 q47k_6 q47k_7 q47k_8 q47k_9 q47k_10(1))
/FREQUENCIES=$mr_47k.

MULT RESPONSE GROUPS=$mr_47l 'Articulação do CRAS com Conselhos de Políticas Públicas e Defesa de Direitos'(q47l_1 q47l_2 q47l_3 q47l_4 q47l_5 q47l_6 q47l_7 q47l_8 q47l_9 q47l_10(1))
/FREQUENCIES=$mr_47l.

MULT RESPONSE GROUPS=$mr_47m 'Articulação do CRAS com Programas ou Projetos de Inclusão Digital'(q47m_1 q47m_2 q47m_3 q47m_4 q47m_5 q47m_6 q47m_7 q47m_8 q47m_9 q47m_10(1))
/FREQUENCIES=$mr_47m.

MULT RESPONSE GROUPS=$mr_47n 'Articulação do CRAS com Organizações Não Governamentais (ONGs)'(q47n_1 q47n_2 q47n_3 q47n_4 q47n_5 q47n_6 q47n_7 q47n_8 q47n_9 q47n_10(1))
/FREQUENCIES=$mr_47n.

FREQUENCIES VARIABLES=q48
   /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=D49_7bin1_sum D49_7bin2_sum D49_7bin3_sum D49_7bin4_sum D49_7bin5_sum 
    D49_8bin1_sum D49_8bin2_sum D49_8bin3_sum D49_8bin4_sum nu_trabalhadores
  /ORDER=ANALYSIS.


***TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=q49_5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49_6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49_10
  /ORDER=ANALYSIS.


****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='\\mds036870\Nucleo_Monitoramento\CENSO 2012\CRAS\Bases de dados_CRAS\TABELAS_CRAS_2012.xlsx'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 






