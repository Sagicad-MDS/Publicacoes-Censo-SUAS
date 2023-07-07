

FREQUENCIES VARIABLES=Região Porte_pop2010 uf
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q3_1 q3_2 q3_3 DISPLAY=LABEL
  /TABLE q3_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q3_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q3_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q3_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Fontes de financiamento do CRAS'.

FREQUENCIES VARIABLES=q4_1 q4_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D4_horas_por_semana_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q6
  /FORMAT=DVALUE
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
  /TABLE q10a [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q10b [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q10c [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q10d [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q10a [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q10b [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q10c [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q10d [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.

MULT RESPONSE GROUPS=$mr_11 'Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CRAS' (D11_telefone q11_1 q11_2 q11_3 q11_4 q11_5 q11_6 q11_7 q11_8 q11_9 
q11_10 q11_11 D11_veiculo q11_12 q11_13 q11_14 q11_15 q11_16 q11_17 q11_18(1))
/FREQUENCIES=$mr_11.


FREQUENCIES VARIABLES=D12_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D12_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D13_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D13_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q14
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_15 'Ações e atividades desenvolvidas no âmbito do PAIF' (q15_1 q15_2 q15_3 q15_4 q15_5 q15_6 q15_7 q15_8 q15_9 q15_10 q15_11 q15_12 q15_13 q15_14 q15_15 q15_16 q15_17 q15_18 q15_19 q15_20 q15_21 q15_22 (1))
/FREQUENCIES=$mr_15.


***A1 e A2 do RMA

FREQUENCIES VARIABLES= q16_1a q16_1b
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.

**Bloco B do RMA

FREQUENCIES VARIABLES=q16_2a q16_2b q16_2c q16_2d q16_2e q16_2f
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.

**Bloco C do RMA

FREQUENCIES VARIABLES=q16_3a q16_3b q16_3c q16_3d q16_3e
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16_4 q16_5
  /FORMAT=NOTABLE
  /STATISTICS=MEAN SUM
  /ORDER=ANALYSIS.

**Bloco D do RMA

FREQUENCIES VARIABLES=q17a q17b q17c q17d q17e q17f q17g
  /FORMAT=NOTABLE
  /STATISTICS=MEAN
  /ORDER=ANALYSIS.

**

FREQUENCIES VARIABLES=q18_1a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q18_1b q18_1c q18_1d q18_1e DISPLAY=LABEL
  /TABLE q18_1b [S][SUM, MEAN] + q18_1c [S][SUM, MEAN] + q18_1d [S][SUM, MEAN] + q18_1e [S][SUM, 
    MEAN].

FREQUENCIES VARIABLES=q18_1f
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D18_1g
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q18_1h
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q18_2a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q18_2b q18_2c q18_2d q18_2e q18_2f DISPLAY=LABEL
  /TABLE q18_2b [S][SUM, MEAN] + q18_2c [S][SUM, MEAN] + q18_2d [S][SUM, MEAN] + q18_2e [S][SUM, 
    MEAN] + q18_2f [S][SUM, MEAN].

FREQUENCIES VARIABLES=q18_2g
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D18_2h
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q18_2i
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q18_2j
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q18_3a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q18_3b q18_3c q18_3d q18_3e DISPLAY=LABEL
  /TABLE q18_3b [S][SUM, MEAN] + q18_3c [S][SUM, MEAN] + q18_3d [S][SUM, MEAN] + q18_3e [S][SUM, 
    MEAN].

FREQUENCIES VARIABLES=q18_3f
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D18_3g
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q18_3h
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q18_4a
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q18_4b q18_4c q18_4d q18_4e DISPLAY=LABEL
  /TABLE q18_4b [S][SUM, MEAN] + q18_4c [S][SUM, MEAN] + q18_4d [S][SUM, MEAN] + q18_4e [S][SUM, 
    MEAN].

FREQUENCIES VARIABLES=q18_4f
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D18_4g
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q18_4h
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q19
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q20a q20b q20c DISPLAY=LABEL
  /TABLE q20a [S][SUM, MEAN] + q20b [S][SUM, MEAN] + q20c [S][SUM, MEAN].

FREQUENCIES VARIABLES=D20d
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_20 'Principais temáticas abordadas nos grupos do PAIF' (q20e_1 q20e_2 q20e_3 q20e_4 q20e_5 q20e_6 q20e_7 q20e_8 q20e_9 q20e_10 q20e_11 q20e_12 (1))
/FREQUENCIES=$mr_20.

FREQUENCIES VARIABLES=q21
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q22
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q23
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_24 'Formas de deslocamento da equipe volante' (q24_1 q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q24_8 q24_9 (1))
/FREQUENCIES=$mr_24.

FREQUENCIES VARIABLES=q25
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D26
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q29
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_30 'Locais onde são realizados os atendimentos realizados pelas equipes voltantes' (q30_1 q30_2 q30_3 q30_4 q30_5 q30_6 q30_7 q30_8 q30_9 (1))
/FREQUENCIES=$mr_30.

MULT RESPONSE GROUPS=$mr_31 'Tipos de atendimento realiados pelas equipes voltantes' (q31_1 q31_2 q31_3 q31_4 q31_5 q31_6 q31_7 (1))
/FREQUENCIES=$mr_31.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q32 DISPLAY=LABEL
  /TABLE q32 [S][SUM, MEAN].

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região q32 DISPLAY=LABEL
  /TABLE Região [C] BY q32 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Nos territórios atendidos pela equipe volante, quantidade de famílias em '+
    'acompanhamento sistemático pelo PAIF, por região'.


FREQUENCIES VARIABLES=q33
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q34a q34b q34c q34d q34e q34f DISPLAY=LABEL
  /TABLE q34a [C][COUNT F40.0] + q34b [C][COUNT F40.0] + q34c [C][COUNT F40.0] + q34d [C][COUNT 
    F40.0] + q34e [C][COUNT F40.0] + q34f [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q34a q34b q34c q34d q34e q34f ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Como a equipe do CRAS avalia o Prontuário SUAS:'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q35 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q35 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantos Prontuários SUAS já foram abertos nos CRAS, por porte do município'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região q35 DISPLAY=LABEL
  /TABLE Região [C] BY q35 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantos Prontuários SUAS já foram abertos nos CRAS, por região'.


FREQUENCIES VARIABLES=q36
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_37 'Estratégias específicas desenvolvidas pelo CRAS para inclusão de pessoas com deficiência nos serviços da unidade' (q37_1 q37_2 q37_3 q37_4 q37_5 q37_6 (1))
/FREQUENCIES=$mr_37.

FREQUENCIES VARIABLES=q38
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_39 'Benefícios Eventuais concedidos pelos CRAS' (q39_1 q39_2 q39_3 q39_4 q39_5 (1))
/FREQUENCIES=$mr_39.

FREQUENCIES VARIABLES=q40
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41_1 q41_2 DISPLAY=LABEL
  /TABLE q41_1 [S][SUM, MEAN] + q41_2 [S][SUM, MEAN].


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41_1 q41_2 Região  DISPLAY=LABEL
  /TABLE q41_1 [S][SUM, MEAN] + q41_2 [S][SUM, MEAN] BY Região [C]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=EXCLUDE.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41_1 q41_2 Porte_pop2010 DISPLAY=LABEL
  /TABLE q41_1 [S][SUM, MEAN] + q41_2 [S][SUM, MEAN] BY Porte_pop2010 [C]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

FREQUENCIES VARIABLES=q42
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43a_1 q43a_2 q43a_3 DISPLAY=LABEL
  /TABLE BY q43a_1 [C][COUNT F40.0] + q43a_2 [C][COUNT F40.0] + q43a_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q43a_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43a_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43a_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços disponíveis na rede referenciadas do CRAS e o tipo de unidade que os '+
    'ofertam: Serviços de Convivência para crianças de 0 a 6 anos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43b_1 q43b_2 q43b_3 DISPLAY=LABEL
  /TABLE BY q43b_1 [C][COUNT F40.0] + q43b_2 [C][COUNT F40.0] + q43b_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q43b_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43b_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43b_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços disponíveis na rede referenciadas do CRAS e o tipo de unidade que os '+
    'ofertam: Serviços de Convivência para crianças e adolescentes de 6 a 15 anos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43c_1 q43c_2 q43c_3 DISPLAY=LABEL
  /TABLE BY q43c_1 [C][COUNT F40.0] + q43c_2 [C][COUNT F40.0] + q43c_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q43c_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43c_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43c_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços disponíveis na rede referenciadas do CRAS e o tipo de unidade que os '+
    'ofertam: Serviços de Convivência para adolescentes de 15 a 17 anos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43d_1 q43d_2 q43d_3 DISPLAY=LABEL
  /TABLE BY q43d_1 [C][COUNT F40.0] + q43d_2 [C][COUNT F40.0] + q43d_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q43d_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43d_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43d_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços disponíveis na rede referenciadas do CRAS e o tipo de unidade que os '+
    'ofertam: Serviços de Convivência para idosos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43e_1 q43e_2 q43e_3 DISPLAY=LABEL
  /TABLE BY q43e_1 [C][COUNT F40.0] + q43e_2 [C][COUNT F40.0] + q43e_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q43e_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43e_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43e_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Programas ou projetos de capacitação e inclusão produtiva'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q43f_1 q43f_2 q43f_3 DISPLAY=LABEL
  /TABLE BY q43f_1 [C][COUNT F40.0] + q43f_2 [C][COUNT F40.0] + q43f_3 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q43f_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43f_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q43f_3 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Programas ou projetos de inclusão digital'.

FREQUENCIES VARIABLES=q44
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q45
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região q48 DISPLAY=LABEL
  /TABLE Região [C] BY q48 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de famílias em situação de vulnerabilidade que residem '+
    'no território de abrangência do CRAS, por região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 q48 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY q48 [S][SUM, MEAN]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de famílias em situação de vulnerabilidade que residem '+
    'no território de abrangência do CRAS, por porte do município'.

FREQUENCIES VARIABLES=q48_ns
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_50 'Situações mais frequentemente identificadas no território de abrangência do CRAS' (q50_1 q50_2 q50_3 q50_4 q50_5 q50_6 q50_7 q50_8 q50_9 q50_10 q50_11 q50_12 q50_13 q50_14 q50_15 q50_16 q50_17 q50_18 q50_19 q50_20
 q50_21 q50_22 q50_23 (1))
/FREQUENCIES=$mr_50.

FREQUENCIES VARIABLES=q51
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_52 'Povos e comunidades tradicionais existentes no território de abrangência do CRAS' (q52_1 q52_2 q52_3 q52_4 q52_5 q52_6(1))
/FREQUENCIES=$mr_52.

MULT RESPONSE GROUPS=$mr_53 'Povos e comunidades tradicionais atendidas pelo CRAS' (q53_1 q53_2 q53_3 q53_4 q53_5 q53_6 q53_7(1))
/FREQUENCIES=$mr_53.

FREQUENCIES VARIABLES=q54
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55a q55b q55c q55d q55e q55f q55g 
    DISPLAY=LABEL
  /TABLE q55a [COUNT F40.0] + q55b [COUNT F40.0] + q55c [COUNT F40.0] + q55d [COUNT F40.0] + q55e 
    [COUNT F40.0] + q55f [COUNT F40.0] + q55g [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q55a q55b q55c q55d q55e q55f q55g [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Para o atendimiento a comunidade(s) tradicional(is) a Equipe de Referência dos CRAS '+
    'possuem:'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q56_1 q56_2 q56_3 q56_4 DISPLAY=LABEL
  /TABLE q56_1 [S][MEAN] + q56_2 [S][MEAN] + q56_3 [S][MEAN] + q56_4 [S][MEAN]
  /TITLES
    TITLE='Percentual aproximado das formas pelas quais os usuários acessam os serviços do CRAS'.

MULT RESPONSE GROUPS=$mr_57 'Objetivos das ações de busca ativa realizadas pela Equipe do CRAS' (q57_1 q57_2 q57_3 q57_4 q57_5 q57_6 q57_7 q57_8 (1))
/FREQUENCIES=$mr_57.

MULT RESPONSE GROUPS=$mr_58 'Estratégias utilizadas para apoio das ações de busca ativa realizadas pela Equipe do CRAS' (q58_1 q58_2 q58_3 q58_4 q58_5 q58_6 q58_7 q58_8 q58_9(1))
/FREQUENCIES=$mr_58.

*****Questão 59

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q59a_1 q59a_2 q59a_3 q59a_4 q59a_5 DISPLAY=LABEL
  /TABLE BY q59a_1 [COUNT F40.0] + q59a_2 [COUNT F40.0] + q59a_3 [COUNT F40.0] + q59a_4 [COUNT 
    F40.0] + q59a_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q59a_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q59a_2 q59a_3 q59a_4 q59a_5 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Listagem dos beneficiários do Programa Bolsa Família'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q59b_1 q59b_2 q59b_3 q59b_4 q59b_5 DISPLAY=LABEL
  /TABLE BY q59b_1 [COUNT F40.0] + q59b_2 [COUNT F40.0] + q59b_3 [COUNT F40.0] + q59b_4 [COUNT 
    F40.0] + q59b_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q59b_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q59b_2 q59b_3 q59b_4 q59b_5 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Listagem das famílias em descumprimento das condicionalidades do Programa Bolsa Família'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q59c_1 q59c_2 q59c_3 q59c_4 q59c_5 DISPLAY=LABEL
  /TABLE BY q59c_1 [COUNT F40.0] + q59c_2 [COUNT F40.0] + q59c_3 [COUNT F40.0] + q59c_4 [COUNT 
    F40.0] + q59c_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q59c_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q59c_2 q59c_3 q59c_4 q59c_5 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Listagem de famílias inscritas no CadÚnico de Programas Sociais do Governo Federal do seu território de atuação'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q59d_1 q59d_2 q59d_3 q59d_4 q59d_5 DISPLAY=LABEL
  /TABLE BY q59d_1 [COUNT F40.0] + q59d_2 [COUNT F40.0] + q59d_3 [COUNT F40.0] + q59d_4 [COUNT 
    F40.0] + q59d_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q59d_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q59d_2 q59d_3 q59d_4 q59d_5 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Listagem dos idosos beneficiários do BPC/Idoso'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q59e_1 q59e_2 q59e_3 q59e_4 q59e_5 DISPLAY=LABEL
  /TABLE BY q59e_1 [COUNT F40.0] + q59e_2 [COUNT F40.0] + q59e_3 [COUNT F40.0] + q59e_4 [COUNT 
    F40.0] + q59e_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q59e_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q59e_2 q59e_3 q59e_4 q59e_5 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Listagem das pessoas com deficiência beneficiárias do BPC/Pessoas com Deficiência'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q59f_1 q59f_2 q59f_3 q59f_4 q59f_5 DISPLAY=LABEL
  /TABLE BY q59f_1 [COUNT F40.0] + q59f_2 [COUNT F40.0] + q59f_3 [COUNT F40.0] + q59f_4 [COUNT 
    F40.0] + q59f_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q59f_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q59f_2 q59f_3 q59f_4 q59f_5 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Listagem de crianças e adolescentes marcadas como em situação de Trabalho Infantil no CadÚnico'.


*****Questão 60


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q60a_1 q60a_2 q60a_3 DISPLAY=LABEL
  /TABLE BY q60a_1 [COUNT F40.0] + q60a_2 [COUNT F40.0] + q60a_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q60a_1 q60a_2 q60a_3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='CadÚnico'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q60b_1 q60b_2 q60b_3 DISPLAY=LABEL
  /TABLE BY q60b_1 [COUNT F40.0] + q60b_2 [COUNT F40.0] + q60b_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q60b_1 q60b_2 q60b_3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='SICON - Sistema Integrado de gestão de Condicionalidades do PBF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q60c_1 q60c_2 q60c_3 DISPLAY=LABEL
  /TABLE BY q60c_1 [COUNT F40.0] + q60c_2 [COUNT F40.0] + q60c_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q60c_1 q60c_2 q60c_3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='BPC na Escola'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q60d_1 q60d_2 q60d_3 DISPLAY=LABEL
  /TABLE BY q60d_1 [COUNT F40.0] + q60d_2 [COUNT F40.0] + q60d_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q60d_1 q60d_2 q60d_3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE='Carteira do Idoso (SUASWEB)'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q60e_1 q60e_2 q60e_3 DISPLAY=LABEL
  /TABLE BY q60e_1 [COUNT F40.0] + q60e_2 [COUNT F40.0] + q60e_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q60e_1 q60e_2 q60e_3 [1] EMPTY=INCLUDE
  /TITLES
    TITLE=' RMA - Sistema de Registro Mensal de Atendimentos'.


****Questão 61

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61a_1 q61a_2 q61a_3 q61a_4 q61a_5 q61a_6 q61a_7 q61a_8 q61a_9 q61a_10 
    DISPLAY=LABEL
  /TABLE BY q61a_1 [COUNT F40.0] + q61a_2 [COUNT F40.0] + q61a_3 [COUNT F40.0] + q61a_4 [COUNT 
    F40.0] + q61a_5 [COUNT F40.0] + q61a_6 [COUNT F40.0] + q61a_7 [COUNT F40.0] + q61a_8 [COUNT F40.0] 
    + q61a_9 [COUNT F40.0] + q61a_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61a_1 q61a_2 q61a_3 q61a_4 q61a_5 q61a_6 q61a_7 q61a_8 q61a_9 q61a_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades Públicas da Rede de Proteção Social Básica'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61b_1 q61b_2 q61b_3 q61b_4 q61b_5 q61b_6 q61b_7 q61b_8 q61b_9 q61b_10 
    DISPLAY=LABEL
  /TABLE BY q61b_1 [COUNT F40.0] + q61b_2 [COUNT F40.0] + q61b_3 [COUNT F40.0] + q61b_4 [COUNT 
    F40.0] + q61b_5 [COUNT F40.0] + q61b_6 [COUNT F40.0] + q61b_7 [COUNT F40.0] + q61b_8 [COUNT F40.0] 
    + q61b_9 [COUNT F40.0] + q61b_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61b_1 q61b_2 q61b_3 q61b_4 q61b_5 q61b_6 q61b_7 q61b_8 q61b_9 q61b_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades Conveniadas da Rede de Proteção Social Básica'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61c_1 q61c_2 q61c_3 q61c_4 q61c_5 q61c_6 q61c_7 q61c_8 q61c_9 q61c_10 
    DISPLAY=LABEL
  /TABLE BY q61c_1 [COUNT F40.0] + q61c_2 [COUNT F40.0] + q61c_3 [COUNT F40.0] + q61c_4 [COUNT 
    F40.0] + q61c_5 [COUNT F40.0] + q61c_6 [COUNT F40.0] + q61c_7 [COUNT F40.0] + q61c_8 [COUNT F40.0] 
    + q61c_9 [COUNT F40.0] + q61c_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61c_1 q61c_2 q61c_3 q61c_4 q61c_5 q61c_6 q61c_7 q61c_8 q61c_9 q61c_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades da Rede de Proteção Social Especial'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61d_1 q61d_2 q61d_3 q61d_4 q61d_5 q61d_6 q61d_7 q61d_8 q61d_9 q61d_10 
    DISPLAY=LABEL
  /TABLE BY q61d_1 [COUNT F40.0] + q61d_2 [COUNT F40.0] + q61d_3 [COUNT F40.0] + q61d_4 [COUNT 
    F40.0] + q61d_5 [COUNT F40.0] + q61d_6 [COUNT F40.0] + q61d_7 [COUNT F40.0] + q61d_8 [COUNT F40.0] 
    + q61d_9 [COUNT F40.0] + q61d_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61d_1 q61d_2 q61d_3 q61d_4 q61d_5 q61d_6 q61d_7 q61d_8 q61d_9 q61d_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços de Saúde'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61e_1 q61e_2 q61e_3 q61e_4 q61e_5 q61e_6 q61e_7 q61e_8 q61e_9 q61e_10 
    DISPLAY=LABEL
  /TABLE BY q61e_1 [COUNT F40.0] + q61e_2 [COUNT F40.0] + q61e_3 [COUNT F40.0] + q61e_4 [COUNT 
    F40.0] + q61e_5 [COUNT F40.0] + q61e_6 [COUNT F40.0] + q61e_7 [COUNT F40.0] + q61e_8 [COUNT F40.0] 
    + q61e_9 [COUNT F40.0] + q61e_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61e_1 q61e_2 q61e_3 q61e_4 q61e_5 q61e_6 q61e_7 q61e_8 q61e_9 q61e_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços de Educação'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61f_1 q61f_2 q61f_3 q61f_4 q61f_5 q61f_6 q61f_7 q61f_8 q61f_9 q61f_10 
    DISPLAY=LABEL
  /TABLE BY q61f_1 [COUNT F40.0] + q61f_2 [COUNT F40.0] + q61f_3 [COUNT F40.0] + q61f_4 [COUNT 
    F40.0] + q61f_5 [COUNT F40.0] + q61f_6 [COUNT F40.0] + q61f_7 [COUNT F40.0] + q61f_8 [COUNT F40.0] 
    + q61f_9 [COUNT F40.0] + q61f_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61f_1 q61f_2 q61f_3 q61f_4 q61f_5 q61f_6 q61f_7 q61f_8 q61f_9 q61f_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Órgãos/Serviços relacionados a Trabalho e Emprego'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61g_1 q61g_2 q61g_3 q61g_4 q61g_5 q61g_6 q61g_7 q61g_8 q61g_9 q61g_10 
    DISPLAY=LABEL
  /TABLE BY q61g_1 [COUNT F40.0] + q61g_2 [COUNT F40.0] + q61g_3 [COUNT F40.0] + q61g_4 [COUNT 
    F40.0] + q61g_5 [COUNT F40.0] + q61g_6 [COUNT F40.0] + q61g_7 [COUNT F40.0] + q61g_8 [COUNT F40.0] 
    + q61g_9 [COUNT F40.0] + q61g_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61g_1 q61g_2 q61g_3 q61g_4 q61g_5 q61g_6 q61g_7 q61g_8 q61g_9 q61g_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Órgãos responsáveis pela aquisição de documentação civil básica'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61h_1 q61h_2 q61h_3 q61h_4 q61h_5 q61h_6 q61h_7 q61h_8 q61h_9 q61h_10 
    DISPLAY=LABEL
  /TABLE BY q61h_1 [COUNT F40.0] + q61h_2 [COUNT F40.0] + q61h_3 [COUNT F40.0] + q61h_4 [COUNT 
    F40.0] + q61h_5 [COUNT F40.0] + q61h_6 [COUNT F40.0] + q61h_7 [COUNT F40.0] + q61h_8 [COUNT F40.0] 
    + q61h_9 [COUNT F40.0] + q61h_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61h_1 q61h_2 q61h_3 q61h_4 q61h_5 q61h_6 q61h_7 q61h_8 q61h_9 q61h_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços ou Programas de Segurança Alimentar'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61i_1 q61i_2 q61i_3 q61i_4 q61i_5 q61i_6 q61i_7 q61i_8 q61i_9 q61i_10 
    DISPLAY=LABEL
  /TABLE BY q61i_1 [COUNT F40.0] + q61i_2 [COUNT F40.0] + q61i_3 [COUNT F40.0] + q61i_4 [COUNT 
    F40.0] + q61i_5 [COUNT F40.0] + q61i_6 [COUNT F40.0] + q61i_7 [COUNT F40.0] + q61i_8 [COUNT F40.0] 
    + q61i_9 [COUNT F40.0] + q61i_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61i_1 q61i_2 q61i_3 q61i_4 q61i_5 q61i_6 q61i_7 q61i_8 q61i_9 q61i_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Serviços ou Programas de Segurança Pública'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61j_1 q61j_2 q61j_3 q61j_4 q61j_5 q61j_6 q61j_7 q61j_8 q61j_9 q61j_10 
    DISPLAY=LABEL
  /TABLE BY q61j_1 [COUNT F40.0] + q61j_2 [COUNT F40.0] + q61j_3 [COUNT F40.0] + q61j_4 [COUNT 
    F40.0] + q61j_5 [COUNT F40.0] + q61j_6 [COUNT F40.0] + q61j_7 [COUNT F40.0] + q61j_8 [COUNT F40.0] 
    + q61j_9 [COUNT F40.0] + q61j_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61j_1 q61j_2 q61j_3 q61j_4 q61j_5 q61j_6 q61j_7 q61j_8 q61j_9 q61j_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Coordenação Municipal do Programa Bolsa Família'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61k_1 q61k_2 q61k_3 q61k_4 q61k_5 q61k_6 q61k_7 q61k_8 q61k_9 q61k_10 
    DISPLAY=LABEL
  /TABLE BY q61k_1 [COUNT F40.0] + q61k_2 [COUNT F40.0] + q61k_3 [COUNT F40.0] + q61k_4 [COUNT 
    F40.0] + q61k_5 [COUNT F40.0] + q61k_6 [COUNT F40.0] + q61k_7 [COUNT F40.0] + q61k_8 [COUNT F40.0] 
    + q61k_9 [COUNT F40.0] + q61k_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61k_1 q61k_2 q61k_3 q61k_4 q61k_5 q61k_6 q61k_7 q61k_8 q61k_9 q61k_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Conselhos Tutelares'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61l_1 q61l_2 q61l_3 q61l_4 q61l_5 q61l_6 q61l_7 q61l_8 q61l_9 q61l_10 
    DISPLAY=LABEL
  /TABLE BY q61l_1 [COUNT F40.0] + q61l_2 [COUNT F40.0] + q61l_3 [COUNT F40.0] + q61l_4 [COUNT 
    F40.0] + q61l_5 [COUNT F40.0] + q61l_6 [COUNT F40.0] + q61l_7 [COUNT F40.0] + q61l_8 [COUNT F40.0] 
    + q61l_9 [COUNT F40.0] + q61l_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61l_1 q61l_2 q61l_3 q61l_4 q61l_5 q61l_6 q61l_7 q61l_8 q61l_9 q61l_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Conselhos de Políticas Públicas e Defesa de Direitos'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61m_1 q61m_2 q61m_3 q61m_4 q61m_5 q61m_6 q61m_7 q61m_8 q61m_9 q61m_10 
    DISPLAY=LABEL
  /TABLE BY q61m_1 [COUNT F40.0] + q61m_2 [COUNT F40.0] + q61m_3 [COUNT F40.0] + q61m_4 [COUNT 
    F40.0] + q61m_5 [COUNT F40.0] + q61m_6 [COUNT F40.0] + q61m_7 [COUNT F40.0] + q61m_8 [COUNT F40.0] 
    + q61m_9 [COUNT F40.0] + q61m_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61m_1 q61m_2 q61m_3 q61m_4 q61m_5 q61m_6 q61m_7 q61m_8 q61m_9 q61m_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Programas ou Projetos de Inclusão Digital'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q61n_1 q61n_2 q61n_3 q61n_4 q61n_5 q61n_6 q61n_7 q61n_8 q61n_9 q61n_10 
    DISPLAY=LABEL
  /TABLE BY q61n_1 [COUNT F40.0] + q61n_2 [COUNT F40.0] + q61n_3 [COUNT F40.0] + q61n_4 [COUNT 
    F40.0] + q61n_5 [COUNT F40.0] + q61n_6 [COUNT F40.0] + q61n_7 [COUNT F40.0] + q61n_8 [COUNT F40.0] 
    + q61n_9 [COUNT F40.0] + q61n_10 [COUNT F40.0]
  /CATEGORIES VARIABLES=q61n_1 q61n_2 q61n_3 q61n_4 q61n_5 q61n_6 q61n_7 q61n_8 q61n_9 q61n_10 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Organizações Não Governamentais (ONGs)'.


FREQUENCIES VARIABLES=q62
  /ORDER=ANALYSIS.


***TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=q63_5
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=D63_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q63_6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q63_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q63_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q63_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q63_10
  /ORDER=ANALYSIS.

*****************TABELAS PARA SEREM RODADAS NA BASE DE DADOS GERAIS****************


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região D63_6bin1_sum D63_6bin2_sum D63_6bin3_sum DISPLAY=LABEL
  /TABLE Região [C] BY D63_6bin1_sum [SUM] + D63_6bin2_sum [SUM] + D63_6bin3_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por escolaridade e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf D63_6bin1_sum D63_6bin2_sum D63_6bin3_sum DISPLAY=LABEL
  /TABLE uf [C] BY D63_6bin1_sum [S][SUM] + D63_6bin2_sum [S][SUM] + D63_6bin3_sum [S][SUM]    
  /CATEGORIES VARIABLES=uf ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por escolaridade e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região D63_8bin1_sum D63_8bin2_sum D63_8bin3_sum D63_8bin4_sum DISPLAY=LABEL
  /TABLE Região [C] BY D63_8bin1_sum [SUM] + D63_8bin2_sum [SUM] + D63_8bin3_sum [SUM] + 
    D63_8bin4_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por tipo de vínculo e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf D63_8bin1_sum D63_8bin2_sum D63_8bin3_sum D63_8bin4_sum 
    DISPLAY=LABEL
  /TABLE uf [C] BY D63_8bin1_sum [S][SUM] + D63_8bin2_sum [S][SUM] + D63_8bin3_sum 
    [S][SUM] + D63_8bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=uf ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por tipo de vínculo e UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região D63_7bin1_sum D63_7bin2_sum D63_7bin3_sum D63_7bin4_sum D63_7bin5_sum 
    DISPLAY=LABEL
  /TABLE Região [C] BY D63_7bin1_sum [SUM] + D63_7bin2_sum [SUM] + D63_7bin3_sum [SUM] + 
    D63_7bin4_sum [SUM] + D63_7bin5_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por profissão e região'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=uf D63_7bin1_sum D63_7bin2_sum D63_7bin3_sum D63_7bin4_sum 
    D63_7bin5_sum DISPLAY=LABEL
  /TABLE uf [C] BY D63_7bin1_sum [S][SUM] + D63_7bin2_sum [S][SUM] + D63_7bin3_sum 
    [S][SUM] + D63_7bin4_sum [S][SUM] + D63_7bin5_sum [S][SUM]
  /CATEGORIES VARIABLES=uf ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidades de trabalhadores por profissão e UF'.


************************ OUTRA FORMA DE APRESENTAR A QUESTÃO 59 ******************

MULT RESPONSE GROUPS=$mr_59a_1 'Listagem dos beneficiários do Programa Bolsa Família' ( q59a_1 q59a_2 q59a_3 q59a_4 q59a_5(1))
/FREQUENCIES=$mr_59a_1.

MULT RESPONSE GROUPS=$mr_59b_1 'Listagem das famílias em descumprimento das condicionalidades do Programa Bolsa Família' ( q59b_1 q59b_2 q59b_3 q59b_4 q59b_5(1))
/FREQUENCIES=$mr_59b_1.

MULT RESPONSE GROUPS=$mr_59c_1 'Listagem de famílias inscritas no CadÚnico de Programas Sociais do Governo Federal do seu território de atuação'( q59c_1 q59c_2 q59c_3 q59c_4 q59c_5(1))
/FREQUENCIES=$mr_59c_1.

MULT RESPONSE GROUPS=$mr_59d_1 'Listagem dos idosos beneficiários do BPC/Idoso' (q59d_1 q59d_2 q59d_3 q59d_4 q59d_5(1))
/FREQUENCIES=$mr_59d_1.

MULT RESPONSE GROUPS=$mr_59e_1 'Listagem das pessoas com deficiência beneficiárias do BPC/Pessoas com Deficiência'(q59e_1 q59e_2 q59e_3 q59e_4 q59e_5(1))
/FREQUENCIES=$mr_59e_1.

MULT RESPONSE GROUPS=$mr_59f_1 'Listagem de crianças e adolescentes marcadas como em situação de Trabalho Infantil no CadÚnico'(q59f_1 q59f_2 q59f_3 q59f_4 q59f_5(1))
/FREQUENCIES=$mr_59f_1.


************************ OUTRA FORMA DE APRESENTAR A QUESTÃO 60 ******************

MULT RESPONSE GROUPS=$mr_60a_1 'Acesso ao CadÚnico' ( q60a_1 q60a_2 q60a_3(1))
/FREQUENCIES=$mr_60a_1.

MULT RESPONSE GROUPS=$mr_60b_1 'Acesso ao Sicon - Sistema Integrado de Gestão de Condicionalidades do Programa Bolsa Família' ( q60b_1 q60b_2 q60b_3(1))
/FREQUENCIES=$mr_60b_1.

MULT RESPONSE GROUPS=$mr_60c_1 'Acesso ao BPC na Escola'( q60c_1 q60c_2 q60c_3(1))
/FREQUENCIES=$mr_60c_1.

MULT RESPONSE GROUPS=$mr_60d_1 'Acesso ao Carteira do Idoso (SUASWEB)' (q60d_1 q60d_2 q60d_3 q60d_3(1))
/FREQUENCIES=$mr_60d_1.

MULT RESPONSE GROUPS=$mr_60e_1 'Acesso ao RMA - Sistema de Registro Mensal de Atendimentos'(q60e_1 q60e_2 q60e_3(1))
/FREQUENCIES=$mr_60e_1.



************************ OUTRA FORMA DE APRESENTAR A QUESTÃO 61 ******************

MULT RESPONSE GROUPS=$mr_61a 'O CRAS mantém articulação com Unidades Públicas da Rede de Proteção Social Básica'( q61a_1 q61a_2 q61a_3 q61a_4 q61a_5 q61a_6 q61a_7 q61a_8 q61a_9 q61a_10(1))
/FREQUENCIES=$mr_61a.

MULT RESPONSE GROUPS=$mr_61b 'Articulação do CRAS com Unidades Conveniadas da Rede de Proteção Social Básica'(q61b_1 q61b_2 q61b_3 q61b_4 q61b_5 q61b_6 q61b_7 q61b_8 q61b_9 q61b_10(1))
/FREQUENCIES=$mr_61b.

MULT RESPONSE GROUPS=$mr_61c 'Articulação do CRAS com Unidades da Rede de Proteção Social Especial'(q61c_1 q61c_2 q61c_3 q61c_4 q61c_5 q61c_6 q61c_7 q61c_8 q61c_9 q61c_10(1))
/FREQUENCIES=$mr_61c.

MULT RESPONSE GROUPS=$mr_61d 'Articulação do CRAS com Serviços de Saúde'(q61d_1 q61d_2 q61d_3 q61d_4 q61d_5 q61d_6 q61d_7 q61d_8 q61d_9 q61d_10(1))
/FREQUENCIES=$mr_61d.

MULT RESPONSE GROUPS=$mr_61e 'Articulação do CRAS com Serviços de Educação'(q61e_1 q61e_2 q61e_3 q61e_4 q61e_5 q61e_6 q61e_7 q61e_8 q61e_9 q61e_10(1))
/FREQUENCIES=$mr_61e.

MULT RESPONSE GROUPS=$mr_61f 'Articulação do CRAS com Órgãos/Serviços relacionados a Trabalho e Emprego'(q61f_1 q61f_2 q61f_3 q61f_4 q61f_5 q61f_6 q61f_7 q61f_8 q61f_9 q61f_10(1))
/FREQUENCIES=$mr_61f.

MULT RESPONSE GROUPS=$mr_61g 'Articulação do CRAS com Órgãos responsáveis pela aquisição de documentação civil básica '(q61g_1 q61g_2 q61g_3 q61g_4 q61g_5 q61g_6 q61g_7 q61g_8 q61g_9 q61g_10(1))
/FREQUENCIES=$mr_61g.

MULT RESPONSE GROUPS=$mr_61h 'Articulação do CRAS com Serviços ou Programas de Segurança Alimentar'(q61h_1 q61h_2 q61h_3 q61h_4 q61h_5 q61h_6 q61h_7 q61h_8 q61h_9 q61h_10(1))
/FREQUENCIES=$mr_61h.

MULT RESPONSE GROUPS=$mr_61i 'Articulação do CRAS com Serviços ou Programas de Segurança Pública'(q61i_1 q61i_2 q61i_3 q61i_4 q61i_5 q61i_6 q61i_7 q61i_8 q61i_9 q61i_10(1))
/FREQUENCIES=$mr_61i.

MULT RESPONSE GROUPS=$mr_61j 'Articulação do CRAS com a Coordenação Municipal do Programa Bolsa Família'(q61j_1 q61j_2 q61j_3 q61j_4 q61j_5 q61j_6 q61j_7 q61j_8 q61j_9 q61j_10(1))
/FREQUENCIES=$mr_61j.

MULT RESPONSE GROUPS=$mr_61k 'Articulação do CRAS com Conselhos Tutelares'(q61k_1 q61k_2 q61k_3 q61k_4 q61k_5 q61k_6 q61k_7 q61k_8 q61k_9 q61k_10(1))
/FREQUENCIES=$mr_61k.

MULT RESPONSE GROUPS=$mr_61l 'Articulação do CRAS com Conselhos de Políticas Públicas e Defesa de Direitos'(q61l_1 q61l_2 q61l_3 q61l_4 q61l_5 q61l_6 q61l_7 q61l_8 q61l_9 q61l_10(1))
/FREQUENCIES=$mr_61l.

MULT RESPONSE GROUPS=$mr_61m 'Articulação do CRAS com Programas ou Projetos de Inclusão Digital'(q61m_1 q61m_2 q61m_3 q61m_4 q61m_5 q61m_6 q61m_7 q61m_8 q61m_9 q61m_10(1))
/FREQUENCIES=$mr_61m.

MULT RESPONSE GROUPS=$mr_61n 'Articulação do CRAS com Organizações Não Governamentais (ONGs)'(q61n_1 q61n_2 q61n_3 q61n_4 q61n_5 q61n_6 q61n_7 q61n_8 q61n_9 q61n_10(1))
/FREQUENCIES=$mr_61n.




****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='\\mds0368701\Nucleo_Monitoramento\Censo SUAS\2013_Censo_SUAS\Bases de Dados\CRAS\Tabelas\Tabelas_CRAS_censo2013.xlsx'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.


****COMANDO PARA EXPORTAR AS TABELAS PARA O WORD****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/DOC  DOCUMENTFILE='\\mds0368701\Nucleo_Monitoramento\Censo SUAS\2013_Censo_SUAS\Bases de Dados\CRAS\Tabelas\Tabelas_CRAS_censo2013.doc'  OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.

* Export Output.
OUTPUT EXPORT
  /CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING
  /DOC  DOCUMENTFILE='\\mds0368701\Nucleo_Monitoramento\Censo SUAS\2013_Censo_SUAS\Bases de '+
    'Dados\CRAS\Tabelas\Tabelas_CRAS_censo2013'
     NOTESCAPTIONS=YES  WIDETABLES=WRAP
     PAGESIZE=MM(209.96999999999997, 296.96999999999997)  TOPMARGIN=MM(10.4)  
    BOTTOMMARGIN=MM(35.400000000000034)
     LEFTMARGIN=MM(10.4)  RIGHTMARGIN=MM(35.399999999999977).

