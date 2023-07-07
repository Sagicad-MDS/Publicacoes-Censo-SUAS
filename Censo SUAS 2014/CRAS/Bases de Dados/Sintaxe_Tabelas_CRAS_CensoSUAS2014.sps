

FREQUENCIES VARIABLES=Região Porte_pop2010 uf
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D3_horas_por_semana_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_6 'Tipo de unidade com a qual o CRAS compartilha seu imóvel' (q6_1 q6_2 q6_3 q6_4 q6_5 q6_6 q6_7 q6_8 q6_9 q6_10 q6_11 (1))
/FREQUENCIES=$mr_6.

MULT RESPONSE GROUPS=$mr_7 'Espaços do imóvel que são compartilhados entre o CRAS e a outra unidade' (q7_1 q7_2 q7_3 q7_4 q7_5 q7_6 q7_7 q7_7 q7_8 q7_9 q7_10 q7_11 q7_12 (1))
/FREQUENCIES=$mr_7.

FREQUENCIES VARIABLES=D8a_sl_atend_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D8b_total_salas_adm_e_atend_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D8f
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q8g q8h q8i q8j DISPLAY=LABEL
  /TABLE q8g [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8h [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
 q8i [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8j [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q8g q8h q8i q8j [1, 0, OTHERNM] EMPTY=INCLUDE
/TITLES
 TITLE= 'q8_Demais espaços físicos disponíveis no CRAS'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q9a q9b q9c q9d DISPLAY=LABEL
  /TABLE q9a [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9b [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q9c [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9d [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q9a [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9b [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9c [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9d [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q9_Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.

MULT RESPONSE GROUPS=$mr_10 'q10_Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CRAS' (D10_telefone q10_1 q10_2 q10_3 q10_4 q10_5 q10_6 q10_7 q10_8 q10_9 
q10_10 q10_11 D10_veiculo q10_12 q10_13 q10_14 q10_15 q10_16 q10_17 q10_18(1))
/FREQUENCIES=$mr_10.

FREQUENCIES VARIABLES=D11_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D11_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D12_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D12_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q13
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_14 'q14_Ações e atividades desenvolvidas no âmbito do PAIF' (q14_1 q14_2 q14_3 q14_4 q14_5 q14_6 q14_7 q14_8 q14_9 q14_10 q14_11 q14_12 q14_13 q14_14 q14_15 q14_16 q14_17 q14_18 q14_19 q14_20 q14_21 q14_22 (1))
/FREQUENCIES=$mr_14.

***A1 e A2 do RMA

FREQUENCIES VARIABLES= q15a q15b
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q17a q17b q17c DISPLAY=LABEL
  /TABLE q17a [S][SUM MEAN] + q17b [S][SUM MEAN] + q17c [S][SUM MEAN]
/TITLES
 TITLE= 'q17_Quantidade de grupos do PAIF ofertados nos CRAS em Agosto de 2014'.


MULT RESPONSE GROUPS=$mr_17 'q17e_Principais temáticas abordadas nos grupos do PAIF' (q17e_1 q17e_2 q17e_3 q17e_4 q17e_5 q17e_6 q17e_7 q17e_8 q17e_9 q17e_10 q17e_11 q17e_12 (1))
/FREQUENCIES=$mr_17.

FREQUENCIES VARIABLES=q18
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q20_a1 q20_b1 q20_c1 q20_d1 q20_e1 DISPLAY=LABEL
  /TABLE q20_a1 [COUNT F40.0] + q20_b1 [COUNT F40.0] + q20_c1 [COUNT F40.0] + q20_d1 [COUNT F40.0] 
    + q20_e1 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q20_a1 q20_b1 q20_c1 q20_d1 q20_e1 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Quantidade de CRAS que ofertam diretamente o Serviço de Convivência e Fortalecimento '+
    'de Vínculos, por público'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q20_a2 q20_b2 q20_c2 q20_d2 q20_e2 q20f DISPLAY=LABEL
  /TABLE q20_a2 [SUM] + q20_b2 [SUM] + q20_c2 [SUM] + q20_d2 [SUM] + q20_e2 [SUM] + q20f [SUM]
  /TITLES
    TITLE='Quantidade de USUÁRIOS que participam do Serviço de Convivência e Fortalecimento de '+
    'Vínculos ofertados diretamente pelo CRAS, por público'.

MULT RESPONSE GROUPS=$mr_21 'Este CRAS possui rede referenciada para oferta de grupos do Serviço de Convivência e Fortalecimento de Vínculos?' (q21_1 q21_2 q21_3 q21_4 (1))
/FREQUENCIES=$mr_21.


FREQUENCIES VARIABLES=D22
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q22_ns
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q23_a1 q23_b1 q23_c1 q23_d1 q23_e1 DISPLAY=LABEL
  /TABLE q23_a1 [COUNT F40.0] + q23_b1 [COUNT F40.0] + q23_c1 [COUNT F40.0] + q23_d1 [COUNT F40.0] 
    + q23_e1 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q23_a1 q23_b1 q23_c1 q23_d1 q23_e1 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Quantidade de CRAS que possuem rede referenciada para a oferta de Serviço de Convivência e Fortalecimento '+
    'de Vínculos, por público'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q23_a2 q23_b2 q23_c2 q23_d2 q23_e2 q23f DISPLAY=LABEL
  /TABLE q23_a2 [SUM MEAN] + q23_b2 [SUM MEAN] + q23_c2 [SUM MEAN] + q23_d2 [SUM MEAN] + q23_e2 [SUM MEAN] + q23f [SUM MEAN]
  /TITLES
    TITLE='Quantidade de USUÁRIOS que participam do Serviço de Convivência e Fortalecimento de '+
    'Vínculos ofertados pela rede referenciada ao CRAS, por público'.

FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_25 'Formas de acompanhamento realizadas, pelos CRAS, aos grupos de SCFV ofertados pela rede referenciada' (q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 q25_8 (1))
/FREQUENCIES=$mr_25.

FREQUENCIES VARIABLES=q26
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_27 'Atividades realizadas com famílias/responsáveis dos participantes dos grupos dos SCFV ' (q27_1 q27_2 q27_3 q27_4 q27_5 (1))
/FREQUENCIES=$mr_27.

FREQUENCIES VARIABLES=q28
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q29
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_30 'Formas de deslocamento da equipe volante' (q30_1 q30_2 q30_3 q30_4 q30_5 q30_6 q30_7 q30_8 q30_9 (1))
/FREQUENCIES=$mr_30.

FREQUENCIES VARIABLES=q31
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D32
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q33
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q34
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q35
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_36 'Locais onde são realizados os atendimentos realizados pelas equipes voltantes' (q36_1 q36_2 q36_3 q36_4 q36_5 q36_6 q36_7 q36_8 q36_9 (1))
/FREQUENCIES=$mr_36.

MULT RESPONSE GROUPS=$mr_37 'Tipos de atendimento realiados pelas equipes voltantes' (q37_1 q37_2 q37_3 q37_4 q37_5 q37_6 q37_7 (1))
/FREQUENCIES=$mr_37.

DESCRIPTIVES VARIABLES=q38
  /STATISTICS=MEAN SUM.

FREQUENCIES VARIABLES=D38
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q39
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_40 'Benefícios Eventuais concedidos pelos CRAS' (q40_1 q40_2 q40_3 q40_4 q40_5 (1))
/FREQUENCIES=$mr_40.

FREQUENCIES VARIABLES=q41
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q42a q42b DISPLAY=LABEL
  /TABLE q42a [S][SUM, MEAN] + q42b [S][SUM, MEAN]
  /TITLES
    TITLE='Quantidade de profissionais da equipe que realizam atividades de cadastramento ou '+
    'atualização cadastral do CadÚnico no CRAS'.

FREQUENCIES VARIABLES=q43
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q46
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região q47 DISPLAY=LABEL
  /TABLE Região [C] BY q47 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de famílias em situação de vulnerabilidade que residem '+
    'no território de abrangência do CRAS, por região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q47 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q47 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de famílias em situação de vulnerabilidade que residem '+
    'no território de abrangência do CRAS, por porte do município'.

FREQUENCIES VARIABLES=q47_ns
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q48
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_49 'Mecanismos de participação utilizados nos CRAS' (q49_1 q49_2 q49_3 q49_4 q49_5 q49_6 (1))
/FREQUENCIES=$mr_49.

MULT RESPONSE GROUPS=$mr_50 'Situações mais frequentemente identificadas no território de abrangência do CRAS' (q50_1 q50_2 q50_3 q50_4 q50_5 q50_6 q50_7 q50_8 q50_9 q50_10 q50_11 q50_12 q50_13 q50_14 q50_15 q50_16 q50_17 q50_18 q50_19 q50_20
 q50_21 q50_22 q50_23 (1))
/FREQUENCIES=$mr_50.

MULT RESPONSE GROUPS=$mr_51 'No território de abrangência deste CRAS, há presença de:' (q51_1 q51_2 q51_3 q51_4 q51_5 q51_6 q51_7 q51_8 q51_9 (1))
/FREQUENCIES=$mr_51.

FREQUENCIES VARIABLES=q52
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_53 'Povos e comunidades tradicionais existentes no território de abrangência do CRAS' (q53_1 q53_2 q53_3 q53_4 q53_5 q53_6(1))
/FREQUENCIES=$mr_53.

MULT RESPONSE GROUPS=$mr_54 'Povos e comunidades tradicionais atendidas pelo CRAS' (q54_1 q54_2 q54_3 q54_4 q54_5 q54_6 q54_7(1))
/FREQUENCIES=$mr_54.

FREQUENCIES VARIABLES=q55
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q56a q56b q56c q56d q56e q56f q56g 
    DISPLAY=LABEL
  /TABLE q56a [COUNT F40.0] + q56b [COUNT F40.0] + q56c [COUNT F40.0] + q56d [COUNT F40.0] + q56e 
    [COUNT F40.0] + q56f [COUNT F40.0] + q56g [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q56a [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56b [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56c [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56d [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56e [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56f [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q56g [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q56_Para o atendimiento a comunidade(s) tradicional(is) a Equipe de Referência dos CRAS '+
    'possuem:'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q57a q57b q57c q57d DISPLAY=LABEL
  /TABLE q57a [S][MEAN] + q57b [S][MEAN] + q57c [S][MEAN] + q57d [S][MEAN]
  /TITLES
    TITLE='Percentual aproximado das formas pelas quais os usuários acessam os serviços do CRAS'.

MULT RESPONSE GROUPS=$mr_58 'Objetivos das ações de busca ativa realizadas pela Equipe do CRAS' (q58_1 q58_2 q58_3 q58_4 q58_5 q58_6 q58_7 q58_8 q58_9 (1))
/FREQUENCIES=$mr_58.

MULT RESPONSE GROUPS=$mr_59 'Estratégias utilizadas para apoio das ações de busca ativa realizadas pela Equipe do CRAS' (q59_1 q59_2 q59_3 q59_4 q59_5 q59_6 q59_7 q59_8 q59_9 q59_10(1))
/FREQUENCIES=$mr_59.

MULT RESPONSE GROUPS=$mr_60 'Este CRAS desenvolve estratégias específicas utilizadas para inclusão de pessoas com deficiência nos serviços desta unidade' (q60_1 q60_2 q60_3 q60_4 q60_5 q60_6 (1))
/FREQUENCIES=$mr_60.


*****Questão 61

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_a1 q61_a2 DISPLAY=LABEL
  /TABLE BY q61_a1 [C][COUNT F40.0] + q61_a2 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q61_a1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q61_a2 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='CadÚnico/CAIXA'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_b1 q61_b2 DISPLAY=LABEL
  /TABLE BY q61_b1 [C][COUNT F40.0] + q61_b2 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q61_b1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q61_b2 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='CadÚnico/CECAD'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_c1 q61_c2 q61_c3 DISPLAY=LABEL
  /TABLE BY q61_c1 [COUNT F40.0] + q61_c2 [COUNT F40.0] + q61_c3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61_c1 q61_c2 q61_c3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='SICON'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_d1 q61_d2 q61_d3 DISPLAY=LABEL
  /TABLE BY q61_d1 [COUNT F40.0] + q61_d2 [COUNT F40.0] + q61_d3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61_d1 q61_d2 q61_d3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='RMA'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_e1 q61_e2 q61_e3 DISPLAY=LABEL
  /TABLE BY q61_e1 [COUNT F40.0] + q61_e2 [COUNT F40.0] + q61_e3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61_e1 q61_e2 q61_e3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='RMA Família'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_f1 q61_f2 q61_f3 DISPLAY=LABEL
  /TABLE BY q61_f1 [COUNT F40.0] + q61_f2 [COUNT F40.0] + q61_f3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61_f1 q61_f2 q61_f3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='SISC'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_g1 q61_g2 q61_g3 DISPLAY=LABEL
  /TABLE BY q61_g1 [COUNT F40.0] + q61_g2 [COUNT F40.0] + q61_g3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61_g1 q61_g2 q61_g3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='BPC na Escola'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61_h1 q61_h2 q61_h3 DISPLAY=LABEL
  /TABLE BY q61_h1 [COUNT F40.0] + q61_h2 [COUNT F40.0] + q61_h3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61_h1 q61_h2 q61_h3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Carteira do Idoso'.


FREQUENCIES VARIABLES=q62
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q63a q63b q63c q63d q63e q63f DISPLAY=LABEL
  /TABLE q63a [C][COUNT F40.0] + q63b [C][COUNT F40.0] + q63c [C][COUNT F40.0] + q63d [C][COUNT 
    F40.0] + q63e [C][COUNT F40.0] + q63f [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q63a q63b q63c q63d q63e q63f ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q63_Como a equipe do CRAS avalia o Prontuário SUAS:'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q64 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q64 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q64_Em 2014, quantos Prontuários SUAS já foram abertos nos CRAS, por porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região q64 DISPLAY=LABEL
  /TABLE Região [C] BY q64 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Em 2014, quantos Prontuários SUAS já foram abertos nos CRAS, por região'.

MULT RESPONSE GROUPS=$mr_65 'Qual o motivo da não utilização do Prontuário SUAS?' (q65_1 q65_2 q65_3 q65_4 q65_5 (1))
/FREQUENCIES=$mr_65.


****Questão 66

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66a_1 q66a_2 q66a_3 q66a_4 q66a_5 q66a_6 q66a_7 q66a_8 q66a_9 q66a_10 
    DISPLAY=LABEL
  /TABLE BY q66a_1 [COUNT F40.0] + q66a_2 [COUNT F40.0] + q66a_3 [COUNT F40.0] + q66a_4 [COUNT 
    F40.0] + q66a_5 [COUNT F40.0] + q66a_6 [COUNT F40.0] + q66a_7 [COUNT F40.0] + q66a_8 [COUNT F40.0] 
    + q66a_9 [COUNT F40.0] + q66a_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66a_1 q66a_2 q66a_3 q66a_4 q66a_5 q66a_6 q66a_7 q66a_8 q66a_9 q66a_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades Públicas da Rede de Proteção Social Básica'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66b_1 q66b_2 q66b_3 q66b_4 q66b_5 q66b_6 q66b_7 q66b_8 q66b_9 q66b_10 
    DISPLAY=LABEL
  /TABLE BY q66b_1 [COUNT F40.0] + q66b_2 [COUNT F40.0] + q66b_3 [COUNT F40.0] + q66b_4 [COUNT 
    F40.0] + q66b_5 [COUNT F40.0] + q66b_6 [COUNT F40.0] + q66b_7 [COUNT F40.0] + q66b_8 [COUNT F40.0] 
    + q66b_9 [COUNT F40.0] + q66b_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66b_1 q66b_2 q66b_3 q66b_4 q66b_5 q66b_6 q66b_7 q66b_8 q66b_9 q66b_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades Conveniadas da Rede de Proteção Social Básica'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66c_1 q66c_2 q66c_3 q66c_4 q66c_5 q66c_6 q66c_7 q66c_8 q66c_9 q66c_10 
    DISPLAY=LABEL
  /TABLE BY q66c_1 [COUNT F40.0] + q66c_2 [COUNT F40.0] + q66c_3 [COUNT F40.0] + q66c_4 [COUNT 
    F40.0] + q66c_5 [COUNT F40.0] + q66c_6 [COUNT F40.0] + q66c_7 [COUNT F40.0] + q66c_8 [COUNT F40.0] 
    + q66c_9 [COUNT F40.0] + q66c_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66c_1 q66c_2 q66c_3 q66c_4 q66c_5 q66c_6 q66c_7 q66c_8 q66c_9 q66c_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades da Rede de Proteção Social Especial'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66d_1 q66d_2 q66d_3 q66d_4 q66d_5 q66d_6 q66d_7 q66d_8 q66d_9 q66d_10 
    DISPLAY=LABEL
  /TABLE BY q66d_1 [COUNT F40.0] + q66d_2 [COUNT F40.0] + q66d_3 [COUNT F40.0] + q66d_4 [COUNT 
    F40.0] + q66d_5 [COUNT F40.0] + q66d_6 [COUNT F40.0] + q66d_7 [COUNT F40.0] + q66d_8 [COUNT F40.0] 
    + q66d_9 [COUNT F40.0] + q66d_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66d_1 q66d_2 q66d_3 q66d_4 q66d_5 q66d_6 q66d_7 q66d_8 q66d_9 q66d_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços de Saúde'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66e_1 q66e_2 q66e_3 q66e_4 q66e_5 q66e_6 q66e_7 q66e_8 q66e_9 q66e_10 
    DISPLAY=LABEL
  /TABLE BY q66e_1 [COUNT F40.0] + q66e_2 [COUNT F40.0] + q66e_3 [COUNT F40.0] + q66e_4 [COUNT 
    F40.0] + q66e_5 [COUNT F40.0] + q66e_6 [COUNT F40.0] + q66e_7 [COUNT F40.0] + q66e_8 [COUNT F40.0] 
    + q66e_9 [COUNT F40.0] + q66e_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66e_1 q66e_2 q66e_3 q66e_4 q66e_5 q66e_6 q66e_7 q66e_8 q66e_9 q66e_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços de Educação'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66f_1 q66f_2 q66f_3 q66f_4 q66f_5 q66f_6 q66f_7 q66f_8 q66f_9 q66f_10 
    DISPLAY=LABEL
  /TABLE BY q66f_1 [COUNT F40.0] + q66f_2 [COUNT F40.0] + q66f_3 [COUNT F40.0] + q66f_4 [COUNT 
    F40.0] + q66f_5 [COUNT F40.0] + q66f_6 [COUNT F40.0] + q66f_7 [COUNT F40.0] + q66f_8 [COUNT F40.0] 
    + q66f_9 [COUNT F40.0] + q66f_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66f_1 q66f_2 q66f_3 q66f_4 q66f_5 q66f_6 q66f_7 q66f_8 q66f_9 q66f_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Órgãos/Serviços relacionados a Trabalho e Emprego'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66g_1 q66g_2 q66g_3 q66g_4 q66g_5 q66g_6 q66g_7 q66g_8 q66g_9 q66g_10 
    DISPLAY=LABEL
  /TABLE BY q66g_1 [COUNT F40.0] + q66g_2 [COUNT F40.0] + q66g_3 [COUNT F40.0] + q66g_4 [COUNT 
    F40.0] + q66g_5 [COUNT F40.0] + q66g_6 [COUNT F40.0] + q66g_7 [COUNT F40.0] + q66g_8 [COUNT F40.0] 
    + q66g_9 [COUNT F40.0] + q66g_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66g_1 q66g_2 q66g_3 q66g_4 q66g_5 q66g_6 q66g_7 q66g_8 q66g_9 q66g_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Órgãos responsáveis pela aquisição de documentação civil básica'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66h_1 q66h_2 q66h_3 q66h_4 q66h_5 q66h_6 q66h_7 q66h_8 q66h_9 q66h_10 
    DISPLAY=LABEL
  /TABLE BY q66h_1 [COUNT F40.0] + q66h_2 [COUNT F40.0] + q66h_3 [COUNT F40.0] + q66h_4 [COUNT 
    F40.0] + q66h_5 [COUNT F40.0] + q66h_6 [COUNT F40.0] + q66h_7 [COUNT F40.0] + q66h_8 [COUNT F40.0] 
    + q66h_9 [COUNT F40.0] + q66h_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66h_1 q66h_2 q66h_3 q66h_4 q66h_5 q66h_6 q66h_7 q66h_8 q66h_9 q66h_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços ou Programas de Segurança Alimentar'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66i_1 q66i_2 q66i_3 q66i_4 q66i_5 q66i_6 q66i_7 q66i_8 q66i_9 q66i_10 
    DISPLAY=LABEL
  /TABLE BY q66i_1 [COUNT F40.0] + q66i_2 [COUNT F40.0] + q66i_3 [COUNT F40.0] + q66i_4 [COUNT 
    F40.0] + q66i_5 [COUNT F40.0] + q66i_6 [COUNT F40.0] + q66i_7 [COUNT F40.0] + q66i_8 [COUNT F40.0] 
    + q66i_9 [COUNT F40.0] + q66i_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66i_1 q66i_2 q66i_3 q66i_4 q66i_5 q66i_6 q66i_7 q66i_8 q66i_9 q66i_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços ou Programas de Segurança Pública'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66j_1 q66j_2 q66j_3 q66j_4 q66j_5 q66j_6 q66j_7 q66j_8 q66j_9 q66j_10 
    DISPLAY=LABEL
  /TABLE BY q66j_1 [COUNT F40.0] + q66j_2 [COUNT F40.0] + q66j_3 [COUNT F40.0] + q66j_4 [COUNT 
    F40.0] + q66j_5 [COUNT F40.0] + q66j_6 [COUNT F40.0] + q66j_7 [COUNT F40.0] + q66j_8 [COUNT F40.0] 
    + q66j_9 [COUNT F40.0] + q66j_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66j_1 q66j_2 q66j_3 q66j_4 q66j_5 q66j_6 q66j_7 q66j_8 q66j_9 q66j_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Coordenação Municipal do Programa Bolsa Família'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66k_1 q66k_2 q66k_3 q66k_4 q66k_5 q66k_6 q66k_7 q66k_8 q66k_9 q66k_10 
    DISPLAY=LABEL
  /TABLE BY q66k_1 [COUNT F40.0] + q66k_2 [COUNT F40.0] + q66k_3 [COUNT F40.0] + q66k_4 [COUNT 
    F40.0] + q66k_5 [COUNT F40.0] + q66k_6 [COUNT F40.0] + q66k_7 [COUNT F40.0] + q66k_8 [COUNT F40.0] 
    + q66k_9 [COUNT F40.0] + q66k_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66k_1 q66k_2 q66k_3 q66k_4 q66k_5 q66k_6 q66k_7 q66k_8 q66k_9 q66k_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Conselhos Tutelares'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66l_1 q66l_2 q66l_3 q66l_4 q66l_5 q66l_6 q66l_7 q66l_8 q66l_9 q66l_10 
    DISPLAY=LABEL
  /TABLE BY q66l_1 [COUNT F40.0] + q66l_2 [COUNT F40.0] + q66l_3 [COUNT F40.0] + q66l_4 [COUNT 
    F40.0] + q66l_5 [COUNT F40.0] + q66l_6 [COUNT F40.0] + q66l_7 [COUNT F40.0] + q66l_8 [COUNT F40.0] 
    + q66l_9 [COUNT F40.0] + q66l_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66l_1 q66l_2 q66l_3 q66l_4 q66l_5 q66l_6 q66l_7 q66l_8 q66l_9 q66l_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Conselhos de Políticas Públicas e Defesa de Direitos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66m_1 q66m_2 q66m_3 q66m_4 q66m_5 q66m_6 q66m_7 q66m_8 q66m_9 q66m_10 
    DISPLAY=LABEL
  /TABLE BY q66m_1 [COUNT F40.0] + q66m_2 [COUNT F40.0] + q66m_3 [COUNT F40.0] + q66m_4 [COUNT 
    F40.0] + q66m_5 [COUNT F40.0] + q66m_6 [COUNT F40.0] + q66m_7 [COUNT F40.0] + q66m_8 [COUNT F40.0] 
    + q66m_9 [COUNT F40.0] + q66m_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66m_1 q66m_2 q66m_3 q66m_4 q66m_5 q66m_6 q66m_7 q66m_8 q66m_9 q66m_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Programas ou Projetos de Inclusão Digital'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q66n_1 q66n_2 q66n_3 q66n_4 q66n_5 q66n_6 q66n_7 q66n_8 q66n_9 q66n_10 
    DISPLAY=LABEL
  /TABLE BY q66n_1 [COUNT F40.0] + q66n_2 [COUNT F40.0] + q66n_3 [COUNT F40.0] + q66n_4 [COUNT 
    F40.0] + q66n_5 [COUNT F40.0] + q66n_6 [COUNT F40.0] + q66n_7 [COUNT F40.0] + q66n_8 [COUNT F40.0] 
    + q66n_9 [COUNT F40.0] + q66n_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q66n_1 q66n_2 q66n_3 q66n_4 q66n_5 q66n_6 q66n_7 q66n_8 q66n_9 q66n_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Organizações Não Governamentais (ONGs)'.


FREQUENCIES VARIABLES=q67
  /ORDER=ANALYSIS.


***TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=Região Porte_pop2010
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D68_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68_6
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=D68_6bin1 D68_6bin2 D68_6bin3
  /STATISTICS=SUM.

FREQUENCIES VARIABLES=q68_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D68_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68_10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68_11
  /ORDER=ANALYSIS.

*****************TABELAS PARA SEREM RODADAS NA BASE DE DADOS GERAIS****************

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 D68_6bin1_sum D68_6bin2_sum D68_6bin3_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY D68_6bin1_sum [SUM] + D68_6bin2_sum [SUM] + D68_6bin3_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por escolaridade e porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região D68_6bin1_sum D68_6bin2_sum D68_6bin3_sum DISPLAY=LABEL
  /TABLE Região [C] BY D68_6bin1_sum [SUM] + D68_6bin2_sum [SUM] + D68_6bin3_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por escolaridade e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf D68_6bin1_sum D68_6bin2_sum D68_6bin3_sum DISPLAY=LABEL
  /TABLE uf [C] BY D68_6bin1_sum [S][SUM] + D68_6bin2_sum [S][SUM] + D68_6bin3_sum [S][SUM]    
  /CATEGORIES VARIABLES=uf ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por escolaridade e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 D68_8bin1_sum D68_8bin2_sum D68_8bin3_sum D68_8bin4_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY D68_8bin1_sum [SUM] + D68_8bin2_sum [SUM] + D68_8bin3_sum [SUM] + 
    D68_8bin4_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por tipo de vínculo e porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região D68_8bin1_sum D68_8bin2_sum D68_8bin3_sum D68_8bin4_sum DISPLAY=LABEL
  /TABLE Região [C] BY D68_8bin1_sum [SUM] + D68_8bin2_sum [SUM] + D68_8bin3_sum [SUM] + 
    D68_8bin4_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por tipo de vínculo e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf D68_8bin1_sum D68_8bin2_sum D68_8bin3_sum D68_8bin4_sum 
    DISPLAY=LABEL
  /TABLE uf [C] BY D68_8bin1_sum [S][SUM] + D68_8bin2_sum [S][SUM] + D68_8bin3_sum 
    [S][SUM] + D68_8bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=uf ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por tipo de vínculo e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região D68_7bin1_sum D68_7bin2_sum D68_7bin3_sum D68_7bin4_sum D68_7bin5_sum 
    DISPLAY=LABEL
  /TABLE Região [C] BY D68_7bin1_sum [SUM] + D68_7bin2_sum [SUM] + D68_7bin3_sum [SUM] + 
    D68_7bin4_sum [SUM] + D68_7bin5_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por profissão e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf D68_7bin1_sum D68_7bin2_sum D68_7bin3_sum D68_7bin4_sum 
    D68_7bin5_sum DISPLAY=LABEL
  /TABLE uf [C] BY D68_7bin1_sum [S][SUM] + D68_7bin2_sum [S][SUM] + D68_7bin3_sum 
    [S][SUM] + D68_7bin4_sum [S][SUM] + D68_7bin5_sum [S][SUM]
  /CATEGORIES VARIABLES=uf ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por profissão e UF'.





************************ OUTRA FORMA DE APRESENTAR A QUESTÃO 66 ******************


MULT RESPONSE GROUPS=$mr_66a 'O CRAS mantém articulação com Unidades Públicas da Rede de Proteção Social Básica'( q66a_1 q66a_2 q66a_3 q66a_4 q66a_5 q66a_6 q66a_7 q66a_8 q66a_9 q66a_10(1))
/FREQUENCIES=$mr_66a.

MULT RESPONSE GROUPS=$mr_66b 'Articulação do CRAS com Unidades Conveniadas da Rede de Proteção Social Básica'(q66b_1 q66b_2 q66b_3 q66b_4 q66b_5 q66b_6 q66b_7 q66b_8 q66b_9 q66b_10(1))
/FREQUENCIES=$mr_66b.

MULT RESPONSE GROUPS=$mr_66c 'Articulação do CRAS com Unidades da Rede de Proteção Social Especial'(q66c_1 q66c_2 q66c_3 q66c_4 q66c_5 q66c_6 q66c_7 q66c_8 q66c_9 q66c_10(1))
/FREQUENCIES=$mr_66c.

MULT RESPONSE GROUPS=$mr_66d 'Articulação do CRAS com Serviços de Saúde'(q66d_1 q66d_2 q66d_3 q66d_4 q66d_5 q66d_6 q66d_7 q66d_8 q66d_9 q66d_10(1))
/FREQUENCIES=$mr_66d.

MULT RESPONSE GROUPS=$mr_66e 'Articulação do CRAS com Serviços de Educação'(q66e_1 q66e_2 q66e_3 q66e_4 q66e_5 q66e_6 q66e_7 q66e_8 q66e_9 q66e_10(1))
/FREQUENCIES=$mr_66e.

MULT RESPONSE GROUPS=$mr_66f 'Articulação do CRAS com Órgãos/Serviços relacionados a Trabalho e Emprego'(q66f_1 q66f_2 q66f_3 q66f_4 q66f_5 q66f_6 q66f_7 q66f_8 q66f_9 q66f_10(1))
/FREQUENCIES=$mr_66f.

MULT RESPONSE GROUPS=$mr_66g 'Articulação do CRAS com Órgãos responsáveis pela aquisição de documentação civil básica '(q66g_1 q66g_2 q66g_3 q66g_4 q66g_5 q66g_6 q66g_7 q66g_8 q66g_9 q66g_10(1))
/FREQUENCIES=$mr_66g.

MULT RESPONSE GROUPS=$mr_66h 'Articulação do CRAS com Serviços ou Programas de Segurança Alimentar'(q66h_1 q66h_2 q66h_3 q66h_4 q66h_5 q66h_6 q66h_7 q66h_8 q66h_9 q66h_10(1))
/FREQUENCIES=$mr_66h.

MULT RESPONSE GROUPS=$mr_66i 'Articulação do CRAS com Serviços ou Programas de Segurança Pública'(q66i_1 q66i_2 q66i_3 q66i_4 q66i_5 q66i_6 q66i_7 q66i_8 q66i_9 q66i_10(1))
/FREQUENCIES=$mr_66i.

MULT RESPONSE GROUPS=$mr_66j 'Articulação do CRAS com a Coordenação Municipal do Programa Bolsa Família'(q66j_1 q66j_2 q66j_3 q66j_4 q66j_5 q66j_6 q66j_7 q66j_8 q66j_9 q66j_10(1))
/FREQUENCIES=$mr_66j.

MULT RESPONSE GROUPS=$mr_66k 'Articulação do CRAS com Conselhos Tutelares'(q66k_1 q66k_2 q66k_3 q66k_4 q66k_5 q66k_6 q66k_7 q66k_8 q66k_9 q66k_10(1))
/FREQUENCIES=$mr_66k.

MULT RESPONSE GROUPS=$mr_66l 'Articulação do CRAS com Conselhos de Políticas Públicas e Defesa de Direitos'(q66l_1 q66l_2 q66l_3 q66l_4 q66l_5 q66l_6 q66l_7 q66l_8 q66l_9 q66l_10(1))
/FREQUENCIES=$mr_66l.

MULT RESPONSE GROUPS=$mr_66m 'Articulação do CRAS com Programas ou Projetos de Inclusão Digital'(q66m_1 q66m_2 q66m_3 q66m_4 q66m_5 q66m_6 q66m_7 q66m_8 q66m_9 q66m_10(1))
/FREQUENCIES=$mr_66m.

MULT RESPONSE GROUPS=$mr_66n 'Articulação do CRAS com Organizações Não Governamentais (ONGs)'(q66n_1 q66n_2 q66n_3 q66n_4 q66n_5 q66n_6 q66n_7 q66n_8 q66n_9 q66n_10(1))
/FREQUENCIES=$mr_66n.



****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='\\mds0368701\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados\CRAS\Tabelas\Tabelas_CRAS_censo2014.xlsx'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.


****COMANDO PARA EXPORTAR AS TABELAS PARA O WORD****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados - Tratamento\CRAS\Censo_CRAS_2014_Tabelas\Tabelas_CRAS_censo2014.xlsx'  
OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.



COMPUTE q20_a2_teste=q20_a2.
EXECUTE.

COMPUTE q20_b2_teste=q20_b2.
EXECUTE.

COMPUTE q20_c2_teste=q20_c2.
EXECUTE.

COMPUTE q20_d2_teste=q20_d2.
EXECUTE.

COMPUTE q20_e2_teste=q20_e2.
EXECUTE.


COMPUTE q23_a2_teste=q23_a2.
EXECUTE.

COMPUTE q23_b2_teste=q23_b2.
EXECUTE.

COMPUTE q23_c2_teste=q23_c2.
EXECUTE.

COMPUTE q23_d2_teste=q23_d2.
EXECUTE.

COMPUTE q23_e2_teste=q23_e2.
EXECUTE.

COMPUTE q23f=q23_a2_teste + q23_b2_teste + q23_c2_teste + q23_d2_teste + q23_e2_teste.
EXECUTE.









