FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_2 'A secretaria ou setor da assistência social está associada ou subordinada a alguma das áreas abaixo?' (q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_8 (1))
/FREQUENCIES=$mr_2.

FREQUENCIES VARIABLES=q2_qual
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q3_1 q3_2 q3_3 q3_4 q3_5 q3_6 q3_7 q3_8 q3_9 
    DISPLAY=LABEL
  /TABLE q3_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q3_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_4 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_5 
    [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_6 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_7 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q3_8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_9 [C][COUNT F40.0, 
    ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q3_1 [0,1, 2,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_2 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_3 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_4 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_5 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_6 [0,1, 2,OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_7 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_8 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_9 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Áreas constituídas como subdivisões administrativas (departamentos, coordenações) na estrutura do órgão gestor'.

FREQUENCIES VARIABLES=q4
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5 /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_7 'Conteúdo previsto na Lei Estadual de regulamentação do SUAS' (q7_1 q7_2 q7_3 q7_4 q7_5 q7_6 q7_7 q7_8 q7_9 q7_10 q7_11 q7_12 q7_13 q7_14 q7_15 q7_16 q7_17 q7_18 q7_19 (1))
/FREQUENCIES=$mr_7.

FREQUENCIES VARIABLES=q8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q9
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q10  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q11  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_12 'Quais dos itens abaixo estão no Plano Estadual de Assistência Social (PEAS)?' (q12_1 q12_2 q12_3 q12_4 q12_5 q12_6 q12_7 (1))
/FREQUENCIES=$mr_12.

FREQUENCIES VARIABLES=q13
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q14  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q15  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q16  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q17  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q18a_1 q18a_2 q18a_3 q18a_4 q18b_1 q18b_2 q18b_3 q18b_4 q18c_1 q18c_2 q18c_3 q18c_4 q18d_1 q18d_2 q18d_3 q18d_4 q18e_1 q18e_2 q18e_3 q18e_4 DISPLAY=LABEL
  /TABLE q18a_1 [S][SUM] + q18a_2 [S][SUM] + q18a_3 [S][SUM] + q18a_4 [S][SUM] + q18b_1 [S][SUM] + q18b_2 [S][SUM] + q18b_3 [S][SUM] + q18b_4 [S][SUM] + q18c_1 [S][SUM] + q18c_2 [S][SUM] 
  + q18c_3 [S][SUM] + q18c_4 [S][SUM]  + q18d_1 [S][SUM] + q18d_2 [S][SUM]  + q18d_3 [S][SUM] + q18d_4 [S][SUM]  + q18e_1 [S][SUM] + q18e_2 [S][SUM]  + q18e_3 [S][SUM] + q18e_4 [S][SUM]  
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assistência Social, por vínculo e escolaridade'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q18a_4 q18b_4 q18c_4 q18d_4 DISPLAY=LABEL
  /TABLE UF BY q18a_4 [S][SUM] + q18b_4 [S][SUM] + q18c_4 [S][SUM] + q18d_4 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assistência Social, por tipo de vínculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q18e_1 q18e_2 q18e_3 q18e_4 DISPLAY=LABEL
  /TABLE UF BY q18e_1 [SUM] + q18e_2 [SUM] + q18e_3 [SUM] + q18e_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assistência Social, por escolaridade e UF'.


CTABLES
  /VLABELS VARIABLES=q19a_1 q19a_2 q19a_3 q19a_4 q19b_1 q19b_2 q19b_3 q19b_4 q19c_1 q19c_2 q19c_3 q19c_4 q19d_1 q19d_2 q19d_3 q19d_4 q19e_1 q19e_2 q19e_3 q19e_4 DISPLAY=LABEL
  /TABLE q19a_1 [S][SUM] + q19a_2 [S][SUM] + q19a_3 [S][SUM] + q19a_4 [S][SUM] + q19b_1 [S][SUM] + q19b_2 [S][SUM] + q19b_3 [S][SUM] + q19b_4 [S][SUM] + q19c_1 [S][SUM] + q19c_2 [S][SUM] 
  + q19c_3 [S][SUM] + q19c_4 [S][SUM]  + q19d_1 [S][SUM] + q19d_2 [S][SUM]  + q19d_3 [S][SUM] + q19d_4 [S][SUM]  + q19e_1 [S][SUM] + q19e_2 [S][SUM]  + q19e_3 [S][SUM] + q19e_4 [S][SUM]  
 + q19e_1 [S][SUM] + q19e_2 [S][SUM]  + q19e_3 [S][SUM] + q19e_4 [S][SUM]
/TITLES
    TITLE='Quantidade TOTAL de trabalhadores da Secretaria Estadual de Assistência Social (Sede + Serviços), por vínculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q19a_4 q19b_4 q19c_4 q19d_4 q19e_4 DISPLAY=LABEL
  /TABLE UF [C] BY q19a_4 [SUM] + q19b_4 [SUM] + q19c_4 [SUM] + q19d_4 [SUM] + q19e_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assistência Social (sede e serviços), por vínculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q19e_1 q19e_2 q19e_3 q19e_4 DISPLAY=LABEL
  /TABLE UF [C] BY q19e_1 [SUM] + q19e_2 [SUM] + q19e_3 [SUM] + q19e_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assistência Social (sede e serviços), por escolaridade e UF'.


CTABLES
  /VLABELS VARIABLES=q20a q20b q20c q20d q20e q20f q20g q20h q20i q20j q20k q20l q20m
    DISPLAY=LABEL
  /TABLE q20a [SUM] + q20b [SUM] + q20c [SUM] + q20d [SUM] + q20e [SUM] + q20f [SUM] + q20g [SUM] + 
    q20h [SUM] + q20i [SUM] + q20j [SUM] + q20k [SUM] + q20l [SUM] + q20m [SUM]
  /TITLES
    TITLE='Quantidade de profissionais, de nível superior, segundo a área de formação'.
execute.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q21a q21b q21c q21d q21e DISPLAY=LABEL
  /TABLE q21a [S][SUM, MEAN] + q21b [S][SUM, MEAN] + q21c [S][SUM, MEAN] + q21d [S][SUM, MEAN] + 
    q21e [S][SUM, MEAN]
  /TITLES
    TITLE='Quantidade de profissionais, de nível médio, segundo principal área de atuação'.
execute.

CTABLES
  /VLABELS VARIABLES=q22a_1 q22b_1 DISPLAY=LABEL
  /TABLE q22a_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q22b_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q22a_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q22b_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
    /TITLES
    TITLE='Realização de concurso público em 2013 para contratação de trabalhadores, por nível de escolaridade'.

CTABLES
  /VLABELS VARIABLES=q22a_2 q22b_2 
    DISPLAY=LABEL
  /TABLE q22a_2 [SUM] + q22b_2 [SUM] 
  /TITLES
    TITLE='Quantidade de vagas ofertadas no concurso público de 2013, por nível de escolaridade'.

CTABLES
  /VLABELS VARIABLES=q22a_4 q22b_4 
    DISPLAY=LABEL
  /TABLE q22a_4 [SUM] + q22b_4 [SUM] 
  /TITLES
    TITLE='Quantidade de posses no concurso público de 2012, por nível de escolaridade'.

FREQUENCIES VARIABLES=q23
 /FORMAT=DVALUE
 /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q24  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q25a_1 q25b_1 q25c_1 q25d_1
    DISPLAY=LABEL
  /TABLE q25a_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25b_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
   + q25c_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q25d_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
     /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q25a_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q25b_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q25c_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q25d_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q25_1_Acesso a cursos de capacitação'.

CTABLES
  /VLABELS VARIABLES=q25a_2 q25b_2 q25c_2 q25d_2 DISPLAY=LABEL
  /TABLE q25a_2 [S][SUM, MEAN] + q25b_2 [S][SUM, MEAN] + q25c_2 [S][SUM, MEAN] + q25d_2 [S][SUM, MEAN]
  /TITLES
    TITLE='q25_2_Número aproximado de trabalhadores capacitados'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q25a_3_1 q25a_3_2 q25b_3_1 q25b_3_2 q25c_3_1 q25c_3_2 q25d_3_1 q25d_3_2 
    DISPLAY=LABEL
  /TABLE BY q25a_3_1 [COUNT F40.0] + q25a_3_2 [COUNT F40.0] + q25b_3_1 [COUNT F40.0] + q25b_3_2 
    [COUNT F40.0] + q25c_3_1 [COUNT F40.0] + q25c_3_2 [COUNT F40.0] + q25d_3_1 [COUNT F40.0] + q25d_3_2 
    [COUNT F40.0]
  /CATEGORIES VARIABLES=q25a_3_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q25a_3_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q25b_3_1 q25b_3_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q25c_3_1 q25c_3_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q25d_3_1 q25d_3_2 [1] EMPTY=INCLUDE
/TITLES
    TITLE='q25_3_Promoção de cursos de capacitação'.

FREQUENCIES VARIABLES=q26
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_27 'As atividades de assessoramento e apoio técnico aos municípios são planejadas anualmente conforme:' (q27_1 q27_2 q27_3 q27_4 q27_5(1))
/FREQUENCIES=$mr_27.

FREQUENCIES VARIABLES=q27_qual
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_28 'O apoio técnico aos municípios inclui:' (q28_1 q28_2 q28_3 q28_4 q28_5 q28_6 q28_7(1))
/FREQUENCIES=$mr_28.

FREQUENCIES VARIABLES=q28_qual
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 Quant_municipios q29 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY Quant_municipios [SUM] + q29 [SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.
/TITLES
    TITLE='q29_Quantidade de municípios do Estado que receberam visitas técnicas da Secretaria Estadual de Assistência Social no ano de 2013'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q29 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q29 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q30_1 q30_2 q30_3 q30_4 q30_5 q30_6 q30_7 q30_8 q30_9 q30_10 q30_11 q30_12 
    q30_13 q30_14 q30_15 q30_16 q30_17 q30_18 q30_19 q30_20 q30_21 q30_22 q30_23 
    DISPLAY=LABEL
  /TABLE q30_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_6 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_7 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_8 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_9 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_10 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_11 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_12 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_13 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_14 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_15 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_16 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_17 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_18 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_19 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_20 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_21 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q30_22 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q30_23 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q30_1 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_2 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_3 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_4 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_5 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_6 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_7 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_8 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_9 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_10 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_11 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_12 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_13 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_14 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_15 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_16 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_17 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_18 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_19 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_20 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_21 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_22 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q30_23 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Apoio técnico realizado pelo Estado aos municípios, por área e frequência'.


FREQUENCIES VARIABLES=q31  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q32  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q33_1 q33_2 q33_3 DISPLAY=LABEL
  /TABLE q33_1 [S][SUM, MEAN] + q33_2 [S][SUM, MEAN] + q33_3 [S][SUM, MEAN]
/TITLES
    TITLE='Quantidade de profissionais exclusivos que trabalham no Fundo Estadual de Assistência Social'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q33_1 q33_2 DISPLAY=LABEL
  /TABLE UF [C] BY q33_1 [SUM] + q33_2 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de profissionais exclusivos que trabalham no Fundo Estadual de Assistência Social, por UF'.


MULT RESPONSE GROUPS=$mr_34 'Os contadores responsáveis pelas contas do FEAS estão lotados:' (q34_1 q34_2 q34_3 q34_4 q34_5 q34_6 q34_7(1))
/FREQUENCIES=$mr_34.

FREQUENCIES VARIABLES=q35  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q36  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_37 'O recurso do IGD-SUAS foi utilizado para:' (q37_1 q37_2 q37_3 q37_4 q37_5 q37_6 q37_7 q37_8 q37_9 q37_10 q37_11 q37_12 q37_13 q37_14 q37_15 q37_16 q37_17(1))
/FREQUENCIES=$mr_37.

MULT RESPONSE GROUPS=$mr_38 'Quais são as principais dificuldades enfrentadas em relação à gestão dos recursos do FEAS?' (q38_1 q38_2 q38_3 q38_4 q38_5 q38_6 q38_7 q38_8(1))
/FREQUENCIES=$mr_38.

FREQUENCIES VARIABLES=q38_qual /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q39 /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q40 /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q41
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q42 /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q43
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44 /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_45 'O cofinanciamento realizado é destinado a:' (q45_1 q45_2 q45_3 q45_4 q45_5(1))
/FREQUENCIES=$mr_45.

FREQUENCIES VARIABLES=q46
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47 /ORDER=ANALYSIS.

**q48 total Brasil

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48a_1 q48a_2 q48a_3 q48b_1 q48b_2 q48b_3 q48c_1 q48c_2 q48c_3 q48d_1 q48d_2 
    q48d_3 
    DISPLAY=LABEL
  /TABLE q48a_1 [S][SUM] + q48a_2 [S][SUM] + q48a_3 [S][SUM] + q48b_1 [S][SUM] + q48b_2 [S][SUM] + 
    q48b_3 [S][SUM] + q48c_1 [S][SUM] + q48c_2 [S][SUM] + q48c_3 [S][SUM] + q48d_1 [S][SUM] + q48d_2 
    [S][SUM] + q48d_3 [S][SUM]
  /TITLES
    TITLE='q48_Quantidade de municípios cofinanciados pelo Estado, destinado a Serviços Socioassistenciais, por tipo de cofinanciamento e tipo de serviço  - Total BRASIL'.

**q48a  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q48a_1 q48a_2 q48a_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q48a_1 [S][SUM] + q48a_2 [S][SUM] + q48a_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q48a_Quantidade de municípios que recebem cofinanciamento do Estado para Serviços Socioassistenciais, por tipo de cofinanciamento e UF'.

**q48b  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q48b_1 q48b_2 q48b_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q48b_1 [S][SUM] + q48b_2 [S][SUM] + q48b_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q48b_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Básica, por tipo de cofinanciamento e UF'.

**q48c  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q48c_1 q48c_2 q48c_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q48c_1 [S][SUM] + q48c_2 [S][SUM] + q48c_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q48c_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Especial de Média Complexidade, por tipo de cofinanciamento e UF'.

**q48d  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q48d_1 q48d_2 q48d_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q48d_1 [S][SUM] + q48d_2 [S][SUM] + q48d_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q48d_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Especial de Alta Complexidade, por tipo de cofinanciamento e UF'.


**q49 total Brasil

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q49a_1 q49a_2 q49a_3 q49b_1 q49b_2 q49b_3 q49c_1 q49c_2 q49c_3 q49d_1 q49d_2 
    q49d_3 
    DISPLAY=LABEL
  /TABLE q49a_1 [S][SUM] + q49a_2 [S][SUM] + q49a_3 [S][SUM] + q49b_1 [S][SUM] + q49b_2 [S][SUM] + 
    q49b_3 [S][SUM] + q49c_1 [S][SUM] + q49c_2 [S][SUM] + q49c_3 [S][SUM] + q49d_1 [S][SUM] + q49d_2 
    [S][SUM] + q49d_3 [S][SUM]
  /TITLES
    TITLE='q49_Quantidade de municípios cofinanciados pelo Estado, destinado a Benefícios Eventuais, por tipo de cofinanciamento e tipo de benefício - Total BRASIL'.

**q49a  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q49a_1 q49a_2 q49a_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q49a_1 [S][SUM] + q49a_2 [S][SUM] + q49a_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q49a_Quantidade de municípios cofinanciados pelo Estado, destinado a Benefícios Eventuais, por tipo de cofinanciamento e UF'.

**q49b  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q49b_1 q49b_2 q49b_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q49b_1 [S][SUM] + q49b_2 [S][SUM] + q49b_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q49b_Quantidade de municípios que recebem cofinanciamento do Estado para Auxílio Funeral, por tipo de cofinanciamento e UF'.

**q49c  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q49c_1 q49c_2 q49c_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q49c_1 [S][SUM] + q49c_2 [S][SUM] + q49c_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q49c_Quantidade de municípios que recebem cofinanciamento do Estado para Auxílio Natalidade, por tipo de cofinanciamento e UF'.

**q49d  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q49d_1 q49d_2 q49d_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q49d_1 [S][SUM] + q49d_2 [S][SUM] + q49d_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q49d_Quantidade de municípios que recebem cofinanciamento do Estado para outros tipos de benefícios eventuais, por tipo de cofinanciamento e UF'.


FREQUENCIES VARIABLES=q50
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q51
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q52
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53a_1 q53a_2 q53a_3 q53a_4 q53a_5 DISPLAY=LABEL
  /TABLE BY q53a_1 [COUNT F40.0] + q53a_2 [COUNT F40.0] + q53a_3 [COUNT F40.0] + q53a_4 [COUNT 
    F40.0] + q53a_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53a_1 q53a_2 q53a_3 q53a_4 q53a_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53b_1 q53b_2 q53b_3 q53b_4 q53b_5 DISPLAY=LABEL
  /TABLE BY q53b_1 [COUNT F40.0] + q53b_2 [COUNT F40.0] + q53b_3 [COUNT F40.0] + q53b_4 [COUNT 
    F40.0] + q53b_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53b_1 q53b_2 q53b_3 q53b_4 q53b_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53c_1 q53c_2 q53c_3 q53c_4 q53c_5 DISPLAY=LABEL
  /TABLE BY q53c_1 [COUNT F40.0] + q53c_2 [COUNT F40.0] + q53c_3 [COUNT F40.0] + q53c_4 [COUNT 
    F40.0] + q53c_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53c_1 q53c_2 q53c_3 q53c_4 q53c_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53d_1 q53d_2 q53d_3 q53d_4 q53d_5 DISPLAY=LABEL
  /TABLE BY q53d_1 [COUNT F40.0] + q53d_2 [COUNT F40.0] + q53d_3 [COUNT F40.0] + q53d_4 [COUNT 
    F40.0] + q53d_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53d_1 q53d_2 q53d_3 q53d_4 q53d_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q53e_1 q53e_2 q53e_3 q53e_4 q53e_5 DISPLAY=LABEL
  /TABLE BY q53e_1 [COUNT F40.0] + q53e_2 [COUNT F40.0] + q53e_3 [COUNT F40.0] + q53e_4 [COUNT 
    F40.0] + q53e_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q53e_1 q53e_2 q53e_3 q53e_4 q53e_5 [1] EMPTY=INCLUDE.

FREQUENCIES VARIABLES=q54
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55a_1 q55a_2 q55a_3 q55a_4 q55a_5 DISPLAY=LABEL
  /TABLE BY q55a_1 [COUNT F40.0] + q55a_2 [COUNT F40.0] + q55a_3 [COUNT F40.0] + q55a_4 [COUNT 
    F40.0] + q55a_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55a_1 q55a_2 q55a_3 q55a_4 q55a_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55b_1 q55b_2 q55b_3 q55b_4 q55b_5 DISPLAY=LABEL
  /TABLE BY q55b_1 [COUNT F40.0] + q55b_2 [COUNT F40.0] + q55b_3 [COUNT F40.0] + q55b_4 [COUNT 
    F40.0] + q55b_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55b_1 q55b_2 q55b_3 q55b_4 q55b_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55c_1 q55c_2 q55c_3 q55c_4 q55c_5 DISPLAY=LABEL
  /TABLE BY q55c_1 [COUNT F40.0] + q55c_2 [COUNT F40.0] + q55c_3 [COUNT F40.0] + q55c_4 [COUNT 
    F40.0] + q55c_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55c_1 q55c_2 q55c_3 q55c_4 q55c_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55d_1 q55d_2 q55d_3 q55d_4 q55d_5 DISPLAY=LABEL
  /TABLE BY q55d_1 [COUNT F40.0] + q55d_2 [COUNT F40.0] + q55d_3 [COUNT F40.0] + q55d_4 [COUNT 
    F40.0] + q55d_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55d_1 q55d_2 q55d_3 q55d_4 q55d_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55e_1 q55e_2 q55e_3 q55e_4 q55e_5 DISPLAY=LABEL
  /TABLE BY q55e_1 [COUNT F40.0] + q55e_2 [COUNT F40.0] + q55e_3 [COUNT F40.0] + q55e_4 [COUNT 
    F40.0] + q55e_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55e_1 q55e_2 q55e_3 q55e_4 q55e_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55f_1 q55f_2 q55f_3 q55f_4 q55f_5 DISPLAY=LABEL
  /TABLE BY q55f_1 [COUNT F40.0] + q55f_2 [COUNT F40.0] + q55f_3 [COUNT F40.0] + q55f_4 [COUNT 
    F40.0] + q55f_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55f_1 q55f_2 q55f_3 q55f_4 q55f_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55g_1 q55g_2 q55g_3 q55g_4 q55g_5 DISPLAY=LABEL
  /TABLE BY q55g_1 [COUNT F40.0] + q55g_2 [COUNT F40.0] + q55g_3 [COUNT F40.0] + q55g_4 [COUNT 
    F40.0] + q55g_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55g_1 q55g_2 q55g_3 q55g_4 q55g_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55h_1 q55h_2 q55h_3 q55h_4 q55h_5 DISPLAY=LABEL
  /TABLE BY q55h_1 [COUNT F40.0] + q55h_2 [COUNT F40.0] + q55h_3 [COUNT F40.0] + q55h_4 [COUNT 
    F40.0] + q55h_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55h_1 q55h_2 q55h_3 q55h_4 q55h_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q55i_1 q55i_2 q55i_3 q55i_4 q55i_5 DISPLAY=LABEL
  /TABLE BY q55i_1 [COUNT F40.0] + q55i_2 [COUNT F40.0] + q55i_3 [COUNT F40.0] + q55i_4 [COUNT 
    F40.0] + q55i_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q55i_1 q55i_2 q55i_3 q55i_4 q55i_5 [1] EMPTY=INCLUDE.

MULT RESPONSE GROUPS=$mr_56 'q56_A Secretaria Estadual de Assistência Social possui convênios com entidades para prestação de serviços socioassistencias?' (q56_1 q56_2 q56_3 q56_4(1))
/FREQUENCIES=$mr_56.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q57 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q57 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade total de entidades que recebem recurso da Secretaria Estadual de '+
    'Assistência Social através de convênio, por UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q58_1 q58_2 q58_3 DISPLAY=LABEL
  /TABLE q58_1 [S][SUM] + q58_2 [S][SUM] + q58_3 [S][SUM]
  /TITLES
    TITLE='Das entidades que recebem recurso da Secretaria por convênio, indique a quantidade '+
    'por nível de proteção do serviço ofertado'.

FREQUENCIES VARIABLES=q59
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q60
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q61
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q63_1 q63_2 q63_3 q63_4 q63_5 DISPLAY=LABEL
  /TABLE q63_1 [C][COUNT F40.0] + q63_2 [C][COUNT F40.0] + q63_3 [C][COUNT F40.0] + q63_4 [C][COUNT 
    F40.0] + q63_5 [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q63_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q63_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q63_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q63_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q63_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q63_Quais serviços de média complexidade de caráter REGIONAL são ofertados no Estado?'.

MULT RESPONSE GROUPS=$mr_63 'Quais serviços de média complexidade de caráter REGIONAL são ofetados no Estado?' (q63_1 q63_2 q63_3 q63_4 q63_5(1))
/FREQUENCIES=$mr_63.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q64a_1 q64b_1 q64c_1 q64d_1 DISPLAY=LABEL
  /TABLE q64a_1 [COUNT F40.0] + q64b_1 [COUNT F40.0] + q64c_1 [COUNT F40.0] + q64d_1 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q64a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64c_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q64d_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q64a_Caso oferte PAEFI de caráter REGIONAL, como é, atualmente, a forma de execução '+
    'destas unidades?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q64a_2 q64b_2 q64c_2 q64d_2 DISPLAY=LABEL
  /TABLE q64a_2 [S][SUM] + q64b_2 [S][SUM] + q64c_2 [S][SUM] + q64d_2 [S][SUM]
  /TITLES
    TITLE='q64b_Caso oferte PAEFI de caráter REGIONAL, qual a quantidade de unidades que executam o serviço?'.
Execute.

FREQUENCIES VARIABLES=q65
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_66 'Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?' (q66_1 q66_2 q66_3 q66_4 q66_5 q66_6 q66_7 q66_8 q66_9(1))
/FREQUENCIES=$mr_66.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q67a_1 q67b_1 q67c_1 q67d_1 q67e_1 DISPLAY=LABEL
  /TABLE q67a_1 [COUNT F40.0] + q67b_1 [COUNT F40.0] + q67c_1 [COUNT F40.0] + q67d_1 [COUNT F40.0] 
    + q67e_1 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q67a_1 q67b_1 q67c_1 q67d_1 q67e_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='q67_Caso oferte Serviço de Acolhimento para criança e adolescentes e/ou jovens de '+
    'caráter REGIONAL, como é, atualmente, a forma de execução destas unidades?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q67a_2 q67b_2 q67c_2 q67d_2 q67e_2 DISPLAY=LABEL
  /TABLE q67a_2 [S][SUM] + q67b_2 [S][SUM] + q67c_2 [S][SUM] + q67d_2 [S][SUM] + q67e_2 [S][SUM]
  /TITLES
    TITLE='q67b_Caso oferte de Acolhimento para criança e adolescentes e/ou jovens de caráter REGIONAL, qual a quantidade de unidades que executam o serviço?'.
Execute.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q68a_1 q68b_1 DISPLAY=LABEL
  /TABLE q68a_1 [C][COUNT F40.0] + q68b_1 [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q68a_1 q68b_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='q68a_Quantidade de Secretarias de Estado que possuem plano ou proposta de regionalização dos serviços de PSE?'.
Execute.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q68a_2 q68b_2 DISPLAY=LABEL
  /TABLE q68a_2 [C][COUNT F40.0] + q68b_2 [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q68a_2 q68b_2 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='q68b_Quantidade de Secretarias Estaduais que possuem a proposta de regionalização dos serviços de PSE pactuados pela CIB'.
Execute.

FREQUENCIES VARIABLES=q68a_3 q68b_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q69
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_70 'q70_Quais foram os parâmetros (ou referências) adotados para o plano ou proposta de regionalização dos serviços de proteção social especial no estado?' (q70_1 q70_2 q70_3 q70_4 q70_5 q70_6 q70_7 q70_8(1))
/FREQUENCIES=$mr_70.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q70_1 q70_2 q70_3 q70_4 q70_5 q70_6 q70_7 q70_8 
    DISPLAY=LABEL
  /TABLE q70_1 [COUNT F40.0] + q70_2 [COUNT F40.0] + q70_3 [COUNT F40.0] + q70_4 [COUNT F40.0] + 
    q70_5 [COUNT F40.0] + q70_6 [COUNT F40.0] + q70_7 [COUNT F40.0] + q70_8 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q70_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q70_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q70_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q70_4 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q70_5 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q70_6 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q70_7 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q70_8 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q70_Quais foram os parâmetros (ou referências) adotados para o plano ou proposta de regionalização dos serviços de proteção social especial no estado?'.
Execute.

FREQUENCIES VARIABLES=q70_quais
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q71_1 q71_2 q71_3 q71_4 q71_5 DISPLAY=LABEL
  /TABLE q71_1 [C][COUNT F40.0] + q71_2 [C][COUNT F40.0] + q71_3 [C][COUNT F40.0] + q71_4 [C][COUNT 
    F40.0] + q71_5 [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q71_1 q71_2 q71_3 q71_4 q71_5 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q71_O plano ou proposta de regionalização dos serviços de proteção social especial '+
    'inclui as estratégias para reordenamento de quais unidades REGIONAIS já existentes?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q72a_1 q72a_2 q72a_3 q72a_4 DISPLAY=LABEL
  /TABLE BY q72a_1 [S][SUM] + q72a_2 [S][SUM] + q72a_3 [S][SUM] + q72a_4 [S][SUM]
  /TITLES
    TITLE='q72a_No plano ou proposta de regionalização dos serviços de proteção social especial, '+
    'há previsão de oferta de quantas unidades de proteção social Especial e qual a forma que se '+
    'dará a oferta?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q72b_1 q72b_2 q72b_3 q72b_4 DISPLAY=LABEL
  /TABLE BY q72b_1 [S][SUM] + q72b_2 [S][SUM] + q72b_3 [S][SUM] + q72b_4 [S][SUM]
  /TITLES
    TITLE='q72b_Outras Unidades de Proteção Social Especial de Média Complexidade'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q72c_1 q72c_2 q72c_3 q72c_4 DISPLAY=LABEL
  /TABLE BY q72c_1 [S][SUM] + q72c_2 [S][SUM] + q72c_3 [S][SUM] + q72c_4 [S][SUM] + q72c_5 [S][SUM] + q72c_6 [S][SUM]
  /TITLES
    TITLE='q72c_Unidades de Acolhimento Institucional para crianças e adolescentes'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q72d_1 q72d_2 q72d_3 q72d_4 DISPLAY=LABEL
  /TABLE BY q72d_1 [S][SUM] + q72d_2 [S][SUM] + q72d_3 [S][SUM] + q72d_4 [S][SUM] + q72d_5 [S][SUM] + q72d_6 [S][SUM]
  /TITLES
    TITLE='q72d_Unidades de Acolhimento Institucional em República para jovens (maiores de 18 anos)'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q72e_1 q72e_2 q72e_3 q72e_4 DISPLAY=LABEL
  /TABLE BY q72e_1 [S][SUM] + q72e_2 [S][SUM] + q72e_3 [S][SUM] + q72e_4 [S][SUM] + q72e_5 [S][SUM] + q72e_6 [S][SUM]
  /TITLES
    TITLE='q72e_Outras Unidades de Proteção Social Especial de Alta Complexidade'.

FREQUENCIES VARIABLES=q73
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q74
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q75 q76 q77 q78
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_79 'Caso sim, quais são os benefícios Eventuais concedidos?' (q79_1 q79_2 q79_3 q79_4(1))
/FREQUENCIES=$mr_79.

MULT RESPONSE GROUPS=$mr_80 'Indique as atividades realizadas pela Secretaria no âmbito do Monitoramento, Avaliação e Vigilância Socioassistencial?' (q80_1 q80_2 q80_3 q80_4 q80_5 q80_6 q80_7 q80_8 q80_9 q80_10 q80_11 q80_12 
q80_13 q80_14 q80_15 q80_16 q80_17 q80_18 q80_19 q80_20 q80_21 q80_22 q80_23 q80_24
(1))
/FREQUENCIES=$mr_80.

FREQUENCIES VARIABLES=q81
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q82_1 q82_2 q82_3 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q82_1 [S][SUM] + q82_2 [S][SUM] + q82_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Caso sim, informe a quantidade de profissionais exclusivos da área de Vigilância '+
    'Socioassistêncial'.

MULT RESPONSE GROUPS=$mr_83 'Quanto à disseminação das informações produzidas pela área de Vigilância Socioassistencial, indique os órgãos e unidades para os quais os documentos, relatórios e indicadores são disponibilizados?' (q83_1 
q83_2 q83_3 q83_4 q83_5 q83_6 q83_7(1))
/FREQUENCIES=$mr_83.

FREQUENCIES VARIABLES=q84
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q85
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q86
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_87 'Os sistemas utilizados permitem:' (q87_1 q87_2 q87_3 q87_4 q87_5 q87_6 q87_7(1))
/FREQUENCIES=$mr_87.

FREQUENCIES VARIABLES=q88 q89 q90 q91
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q92 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q92 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Caso sim, quantos?'.


FREQUENCIES VARIABLES=q93  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q94a_1 q94b_1 q94c_1 q94d_1
    DISPLAY=LABEL
  /TABLE q94a_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q94b_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
   + q94c_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q94d_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
   /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q94a_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q94b_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q94c_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q94d_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE= 'Realização de Cursos de Capacitação, em 2013, para Conselheiros estaduais ou municipais da assistência social'.

CTABLES
  /VLABELS VARIABLES=q94a_2 q94b_2 q94c_2 q94d_2 DISPLAY=LABEL
  /TABLE q94a_2 [S][SUM] + q94b_2 [S][SUM] + q94c_2 [S][SUM] + q94d_2 [S][SUM] 
  /TITLES
    TITLE='Número de conselheiros capacitados em 2013'.


CTABLES
  /VLABELS VARIABLES= q95a_1 q95b_1 q95c_1 q95d_1 q95e_1 q95f_1 q95a_2 q95b_2 q95c_2 q95d_2 q95e_2 q95f_2 DISPLAY=LABEL
  /TABLE q95a_1 [S][SUM] + q95b_1 [S][SUM] + q95c_1 [S][SUM] + q95d_1 [S][SUM] + q95e_1 [S][SUM] + q95f_1 [S][SUM] + q95a_2 [S][SUM] + q95b_2 [S][SUM] + q95c_2 [S][SUM] + q95d_2 [S][SUM] + q95e_2 [S][SUM] + q95f_2 [S][SUM]
  /TITLES
    TITLE='Indique qual a composição da CIB de acordo com a representação do porte dos municípios e representação estadual'.

FREQUENCIES VARIABLES=q96 q97 q98 q99
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_100 'Como o calendário de reuniões ordinárias foi divulgado' (q100_1 q100_2 q100_3(1))
/FREQUENCIES=$mr_100.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q100_1 q100_2 q100_3 DISPLAY=LABEL
  /TABLE q100_1 [COUNT F40.0] + q100_2 [COUNT F40.0] + q100_3 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q100_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q100_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q100_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE= 'q100_Como o calendário de reuniões oridinárias é divulgado?'.

FREQUENCIES VARIABLES=q101  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q102 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q102 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuniões a CIB realizou no ano de 2013?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q103 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q103 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuniões a CIB realizou no 1o semestre de 2014?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_9 q104 DISPLAY=LABEL
  /TABLE Ident_9 [C] BY q104 [S][SUM]
  /CATEGORIES VARIABLES=Ident_9 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuniões descentralizadas a CIB realizou no ano de 2013?'.


MULT RESPONSE GROUPS=$mr_105 'Quais foram os temas de pactuação no 1o semestre de 2014?' (q105_1 q105_2 q105_3 q105_4 q105_5 q105_6 q105_7 q105_8 q105_9 q105_10 q105_11 q105_12 q105_13(1))
/FREQUENCIES=$mr_105.


FREQUENCIES VARIABLES=q105_quais
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=representante_vigilancia
  /ORDER=ANALYSIS.


****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****

OUTPUT EXPORT  
/CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING  
/XLS  DOCUMENTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados - Tratamento\Gestão Estadual\Censo_Gestão_Estadual_2014_Syntaxes\Tabelas_Gestão Estadual_censo2014.xlsx'  
OPERATION=CREATEFILE     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES. 
execute.





