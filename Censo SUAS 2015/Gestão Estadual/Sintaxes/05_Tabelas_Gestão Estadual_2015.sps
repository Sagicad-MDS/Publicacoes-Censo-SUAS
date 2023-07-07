FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_2 'A secretaria ou setor da assistência social está associada ou subordinada a alguma das áreas abaixo?' (q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr_2.


FREQUENCIES VARIABLES=q2_qual
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q3_1 q3_2 q3_3 q3_4 q3_5 q3_6 q3_7 q3_8 
    DISPLAY=LABEL
  /TABLE q3_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
    q3_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_4 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_5 
    [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_6 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q3_7 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q3_8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q3_1 [0,1, 2,  OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_2 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_3 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_4 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_5 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_6 [0,1, 2,OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_7 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q3_8 [0,1, 2, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
    /TITLES
    TITLE='Áreas constituídas como subdivisões administrativas (departamentos, coordenações) na estrutura do órgão gestor'.

FREQUENCIES VARIABLES=q4
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5 
/ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_7 'Conteúdo previsto na Lei Estadual de regulamentação do SUAS' (q7_1 q7_2 q7_3 q7_4 q7_5 q7_6 q7_7 q7_8 q7_9 q7_10 q7_11 q7_12 q7_13 q7_14 q7_15 q7_16 q7_17 q7_18 q7_99 (1))
/FREQUENCIES=$mr_7.

FREQUENCIES VARIABLES=q8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q9
  /FORMAT=DVALUE
   /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q10  
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q11  
/ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q12a_1 q12a_2 q12a_3 q12a_4 q12b_1 q12b_2 q12b_3 q12b_4 q12c_1 q12c_2 q12c_3 q12c_4 q12d_1 q12d_2 q12d_3 q12d_4 q12e_1 q12e_2 q12e_3 q12e_4 DISPLAY=LABEL
  /TABLE q12a_1 [S][SUM] + q12a_2 [S][SUM] + q12a_3 [S][SUM] + q12a_4 [S][SUM] + q12b_1 [S][SUM] + q12b_2 [S][SUM] + q12b_3 [S][SUM] + q12b_4 [S][SUM] + q12c_1 [S][SUM] + q12c_2 [S][SUM] 
  + q12c_3 [S][SUM] + q12c_4 [S][SUM]  + q12d_1 [S][SUM] + q12d_2 [S][SUM]  + q12d_3 [S][SUM] + q12d_4 [S][SUM]  + q12e_1 [S][SUM] + q12e_2 [S][SUM]  + q12e_3 [S][SUM] + q12e_4 [S][SUM]  
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assistência Social, por vínculo e escolaridade'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q12a_4 q12b_4 q12c_4 q12d_4 DISPLAY=LABEL
  /TABLE UF BY q12a_4 [S][SUM] + q12b_4 [S][SUM] + q12c_4 [S][SUM] + q12d_4 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assistência Social, por tipo de vínculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q12e_1 q12e_2 q12e_3 q12e_4 DISPLAY=LABEL
  /TABLE UF BY q12e_1 [SUM] + q12e_2 [SUM] + q12e_3 [SUM] + q12e_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores lotados na sede da Secretaria Estadual de Assistência Social, por escolaridade e UF'.

CTABLES
  /VLABELS VARIABLES=q13a_1 q13a_2 q13a_3 q13a_4 q13b_1 q13b_2 q13b_3 q13b_4 q13c_1 q13c_2 q13c_3 q13c_4 q13d_1 q13d_2 q13d_3 q13d_4 q13e_1 q13e_2 q13e_3 q13e_4 DISPLAY=LABEL
  /TABLE q13a_1 [S][SUM] + q13a_2 [S][SUM] + q13a_3 [S][SUM] + q13a_4 [S][SUM] + q13b_1 [S][SUM] + q13b_2 [S][SUM] + q13b_3 [S][SUM] + q13b_4 [S][SUM] + q13c_1 [S][SUM] + q13c_2 [S][SUM] 
  + q13c_3 [S][SUM] + q13c_4 [S][SUM]  + q13d_1 [S][SUM] + q13d_2 [S][SUM]  + q13d_3 [S][SUM] + q13d_4 [S][SUM]  + q13e_1 [S][SUM] + q13e_2 [S][SUM]  + q13e_3 [S][SUM] + q13e_4 [S][SUM]  
 + q13e_1 [S][SUM] + q13e_2 [S][SUM]  + q13e_3 [S][SUM] + q13e_4 [S][SUM]
/TITLES
    TITLE='Quantidade TOTAL de trabalhadores da Secretaria Estadual de Assistência Social (Sede + Serviços), por vínculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q13a_4 q13b_4 q13c_4 q13d_4 q13e_4 DISPLAY=LABEL
  /TABLE UF [C] BY q13a_4 [SUM] + q13b_4 [SUM] + q13c_4 [SUM] + q13d_4 [SUM] + q13e_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assistência Social (sede e serviços), por vínculo e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q13e_1 q13e_2 q13e_3 q13e_4 DISPLAY=LABEL
  /TABLE UF [C] BY q13e_1 [SUM] + q13e_2 [SUM] + q13e_3 [SUM] + q13e_4 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de trabalhadores da Secretaria Estadual de Assistência Social (sede e serviços), por escolaridade e UF'.


CTABLES
  /VLABELS VARIABLES=q14a q14b q14c q14d q14e q14f q14g q14h q14i q14j q14k q14l q14m
    DISPLAY=LABEL
  /TABLE q14a [SUM] + q14b [SUM] + q14c [SUM] + q14d [SUM] + q14e [SUM] + q14f [SUM] + q14g [SUM] + 
    q14h [SUM] + q14i [SUM] + q14j [SUM] + q14k [SUM] + q14l [SUM] + q14m [SUM]
  /TITLES
    TITLE='Quantidade de profissionais, de nível superior, segundo a área de formação'.
execute.


CTABLES
  /VLABELS VARIABLES=q15a_1 q15b_1 DISPLAY=LABEL
  /TABLE q15a_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q15b_1 [COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q15a_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q15b_1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
    /TITLES
    TITLE='Realização de concurso público em 2014 para contratação de trabalhadores, por nível de escolaridade'.

CTABLES
  /VLABELS VARIABLES=q15a_2 q15b_2 
    DISPLAY=LABEL
  /TABLE q15a_2 [SUM] + q15b_2 [SUM] 
  /TITLES
    TITLE='Quantidade de vagas ofertadas no concurso público de 2014, por nível de escolaridade'.

CTABLES
  /VLABELS VARIABLES=q15a_5 q15b_5 
    DISPLAY=LABEL
  /TABLE q15a_5 [SUM] + q15b_5 [SUM] 
  /TITLES
    TITLE='Quantidade de posses no concurso público de 2014, por nível de escolaridade'.

FREQUENCIES VARIABLES=q16
 /FORMAT=DVALUE
 /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q17  
/ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q18a1 q18b1 q18c1 q18d1
    DISPLAY=LABEL
  /TABLE q18a1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q18b1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
   + q18c1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q18d1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
     /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q18a1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q18b1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q18c1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q18d1 [0, 1, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q18_1_Acesso a cursos de capacitação'.

CTABLES
  /VLABELS VARIABLES=q18a2 q18b2 q18c2 q18d2 DISPLAY=LABEL
  /TABLE q18a2 [S][SUM, MEAN] + q18b2 [S][SUM, MEAN] + q18c2 [S][SUM, MEAN] + q18d2 [S][SUM, MEAN]
  /TITLES
    TITLE='q18_2_Número aproximado de trabalhadores capacitados'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q18a3_1 q18a3_2 q18b3_1 q18b3_2 q18c3_1 q18c3_2 q18d3_1 q18d3_2 
    DISPLAY=LABEL
  /TABLE BY q18a3_1 [COUNT F40.0] + q18a3_2 [COUNT F40.0] + q18b3_1 [COUNT F40.0] + q18b3_2 
    [COUNT F40.0] + q18c3_1 [COUNT F40.0] + q18c3_2 [COUNT F40.0] + q18d3_1 [COUNT F40.0] + q18d3_2 
    [COUNT F40.0]
  /CATEGORIES VARIABLES=q18a3_1 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q18a3_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q18b3_1 q18b3_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q18c3_1 q18c3_2 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q18d3_1 q18d3_2 [1] EMPTY=INCLUDE
/TITLES
    TITLE='q18_3_Promoção de cursos de capacitação'.

FREQUENCIES VARIABLES=q19
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_20 'As atividades de assessoramento e apoio técnico aos municípios são planejadas anualmente conforme:' (q20_1 q20_2 q20_3 q20_4 q20_5 (1))
/FREQUENCIES=$mr_20.

FREQUENCIES VARIABLES=q20_qual
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_21 'O apoio técnico aos municípios inclui:' (q21_1 q21_2 q21_3 q21_4 q21_5 q21_6 q21_99(1))
/FREQUENCIES=$mr_21.

FREQUENCIES VARIABLES=q21_especif
  /ORDER=ANALYSIS.

* Custom Tables - Construir Varíavel Quant_Municipios

CTABLES
  /VLABELS VARIABLES=Ident_10 Quant_municipios q22 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY Quant_municipios [SUM] + q22 [SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.
/TITLES
    TITLE='q22_Quantidade de municípios do Estado que receberam visitas técnicas da Secretaria Estadual de Assistência Social no ano de 2014'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q23_1 q23_2 q23_3 q23_4 q23_5 q23_6 q23_7 q23_8 q23_9 q23_10 q23_11 q23_12 
    q23_13 q23_14 q23_15 q23_16 q23_17 q23_18 q23_19 q23_20 q23_21 q23_22 q23_23 q23_24 
    DISPLAY=LABEL
  /TABLE q23_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_5 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_6 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_7 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_8 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_9 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_10 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_11 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_12 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_13 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_14 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_15 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_16 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_17 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_18 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_19 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_20 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_21 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_22 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q23_23 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q23_24 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q23_1 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_2 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_3 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_4 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_5 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_6 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_7 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_8 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_9 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_10 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_11 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_12 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_13 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_14 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_15 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_16 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_17 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_18 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_19 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_20 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_21 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_22 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q23_23 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /CATEGORIES VARIABLES=q23_24 [1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
    TITLE='Apoio técnico realizado pelo Estado aos municípios, por área e frequência'.


FREQUENCIES VARIABLES=q24  
/ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q25_1 q25_2 q25_3 DISPLAY=LABEL
  /TABLE q25_1 [S][SUM, MEAN] + q25_2 [S][SUM, MEAN] + q25_3 [S][SUM, MEAN]
/TITLES
    TITLE='Quantidade de profissionais exclusivos que trabalham no Fundo Estadual de Assistência Social'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q25_1 q25_2 DISPLAY=LABEL
  /TABLE UF [C] BY q25_1 [SUM] + q25_2 [SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE
/TITLES
    TITLE='Quantidade de profissionais exclusivos que trabalham no Fundo Estadual de Assistência Social, por UF'.


MULT RESPONSE GROUPS=$mr_26 'Os contadores responsáveis pelas contas do FEAS estão lotados:' (q26_1 q26_2 q26_3 q26_4 q26_5 q26_6 q26_7(1))
/FREQUENCIES=$mr_26.

FREQUENCIES VARIABLES=q27  
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28  
/ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_29 'Quais são as principais dificuldades enfrentadas em relação à gestãoo dos recursos do FEAS?' (q29_0 q29_1 q29_2 q29_3 q29_4 q29_5 q29_6 q29_99(1))
/FREQUENCIES=$mr_29.

FREQUENCIES VARIABLES=q29_qual 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q30  
/ORDER=ANALYSIS.

****
FREQUENCIES VARIABLES=q31a_2013 q31a_2014 q31b_2013 q31b_2014
  /FORMAT=NOTABLE
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN MEDIAN SUM
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q31a_2013 q31a_2014
    DISPLAY=LABEL
  /TABLE q31a_2013 [S][SUM] + q31a_2014 [S][SUM]
  /TITLES
    TITLE='q31a_Valor alocado referente aos recursos próprios do estado (exceto repasses e transferências a municípios) em 2013 e 2014 - Total BRASIL'.

CTABLES
  /VLABELS VARIABLES=q31b_2013 q31b_2014
    DISPLAY=LABEL
  /TABLE q31b_2013 [S][SUM] + q31b_2014 [S][SUM]
  /TITLES
    TITLE='q31b_Valor da despesa realizada com recursos próprios do estado em 2013 e 2014  - Total BRASIL'.

CTABLES
  /VLABELS VARIABLES=Ident_10 q31a_2013 q31a_2014 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q31a_2013 [S][SUM] + q31a_2014 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE=' q31a_Valor alocado referente aos recursos próprios do estado (exceto repasses e transferências a municípios) em 2013 e 2014 por UF'.


CTABLES
  /VLABELS VARIABLES=Ident_10 q31b_2013 q31b_2014 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY  q31b_2013 [S][SUM] +q31b_2014 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q31b_Valor da despesa realizada com recursos próprios do estado em 2013 e 2014 por UF'.


FREQUENCIES VARIABLES=q32 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q33 
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q34 q34_qual
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q35
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q36
/ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_37 'O cofinanciamento realizado é destinado a:' (q37_1 q37_2 q37_3 q37_4 q37_5(1))
/FREQUENCIES=$mr_37.

FREQUENCIES VARIABLES=q38
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q39
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

***q40

CTABLES
  /VLABELS VARIABLES=q40_1 q40_2 q40_3 
    DISPLAY=LABEL
  /TABLE q40_1 [S][SUM] + q40_2 [S][SUM] + q40_3 [S][SUM]  
  /TITLES
    TITLE='q40_Quantidade total de municípios cofinanciados pelo Estado, destinado a Serviços Socioassistenciais, por tipo de cofinanciamento e tipo de serviço  - Total BRASIL'.


**q40  por UF

CTABLES
  /VLABELS VARIABLES=Ident_10 q40_1 q40_2 q40_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q40_1 [S][SUM] + q40_2 [S][SUM] + q40_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q40_Quantidade de municípios que recebem cofinanciamento do Estado, por tipo de cofinanciamento e UF'.

***q40a

CTABLES
  /VLABELS VARIABLES=q40a_1 q40a_2 q40a_3 
    DISPLAY=LABEL
  /TABLE q40a_1 [S][SUM] + q40a_2 [S][SUM] + q40a_3 [S][SUM]  
  /TITLES
    TITLE='q40a_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Básica, por tipo de cofinanciamento- Total BRASIL'.

**q40a  por UF
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q40a_1 q40a_2 q40a_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q40a_1 [S][SUM] + q40a_2 [S][SUM] + q40a_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q40a_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Básica, por tipo de cofinanciamento e UF'.

***q40b

CTABLES
  /VLABELS VARIABLES=q40b_1 q40b_2 q40b_3 
    DISPLAY=LABEL
  /TABLE q40b_1 [S][SUM] + q40b_2 [S][SUM] + q40b_3 [S][SUM]  
  /TITLES
    TITLE='q40b_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Especial de Média Complexidade, por tipo de cofinanciamento  - Total BRASIL'.

**q40b  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q40b_1 q40b_2 q40b_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q40b_1 [S][SUM] + q40b_2 [S][SUM] + q40b_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q40b_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Especial de Média Complexidade, por tipo de cofinanciamento e UF'.

*q40c

CTABLES
  /VLABELS VARIABLES=q40c_1 q40c_2 q40c_3 
    DISPLAY=LABEL
  /TABLE q40c_1 [S][SUM] + q40c_2 [S][SUM] + q40c_3 [S][SUM]  
  /TITLES
    TITLE='q40c_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Especial de Alta Complexidade, por tipo de cofinanciamento  - Total BRASIL'.


**q40c  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q40c_1 q40c_2 q40c_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q40c_1 [S][SUM] + q40c_2 [S][SUM] + q40c_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q40c_Quantidade de municípios que recebem cofinanciamento do Estado, para serviços de Proteção Social Especial de Alta Complexidade, por tipo de cofinanciamento e UF'.


**q41 total Brasil

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41_1 q41_2 q41_3 
    DISPLAY=LABEL
  /TABLE q41_1 [S][SUM] + q41_2 [S][SUM] + q41_3 [S][SUM]
  /TITLES
    TITLE='q41_Quantidade de municípios cofinanciados pelo Estado, destinado a Benefícios Eventuais, por tipo de cofinanciamento e tipo de benefício - Total BRASIL'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q41a_1 q41a_2 q41a_3 q41b_1 q41b_2 q41b_3 q41c_1 q41c_2 q41c_3 
    DISPLAY=LABEL
  /TABLE q41a_1 [S][SUM] + q41a_2 [S][SUM] + q41a_3 [S][SUM] + q41b_1 [S][SUM] + q41b_2 [S][SUM] + 
    q41b_3 [S][SUM] + q41c_1 [S][SUM] + q41c_2 [S][SUM] + q41c_3 [S][SUM]
  /TITLES
    TITLE='q41_Quantidade de municípios cofinanciados pelo Estado por tipo de cofinanciamento e UF'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q41_1 q41_2 q41_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q41_1 [S][SUM] + q41_2 [S][SUM] + q41_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q41_Quantidade de municípios cofinanciados pelo Estado, destinado a Benefícios Eventuais, por tipo de cofinanciamento e UF'.




**q41a  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q41a_1 q41a_2 q41a_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q41a_1 [S][SUM] + q41a_2 [S][SUM] + q41a_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q41a_Quantidade de municípios cofinanciados pelo Estado, destinado a Auxílio Funeraluxílio Natalidade, por tipo de cofinanciamento e UF'.

**q41b  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q41b_1 q41b_2 q41b_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q41b_1 [S][SUM] + q41b_2 [S][SUM] + q41b_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q41b_Quantidade de municípios que recebem cofinanciamento do Estado para Auxílio Natalidade, por tipo de cofinanciamento e UF'.

**q41c  por UF

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q41c_1 q41c_2 q41c_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q41c_1 [S][SUM] + q41c_2 [S][SUM] + q41c_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q41c_Quantidade de municípios que recebem cofinanciamento do Estado para Outros Beneficios Eventuais, por tipo de cofinanciamento e UF'.

*****

q42a_1
q42a_2
q42b_1
q42b_2

CTABLES
  /VLABELS VARIABLES=q42a_1 q42a_2 q42b_1 q42b_2
    DISPLAY=LABEL
  /TABLE q42a_1 [S][SUM] + q42a_2 [S][SUM] + q42b_1 [S][SUM] + q42b_2 [S][SUM]
  /TITLES
    TITLE='q42_Total de recursos próprios repassados aos municípios em 2013 e 2014'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q42a_1 q42a_2 q42b_1 q42b_2 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q42a_1 [S][SUM] + q42a_2 [S][SUM] + q42b_1 [S][SUM] + q42b_2 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q42_Total de recursos próprios repassados aos municípios em 2013 e 2014 por UF'.


FREQUENCIES VARIABLES=q43
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q44
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q45
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.


USE ALL.
COMPUTE filter_$=(q45 = 1).
VARIABLE LABEL filter_$ 'q45 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q46a_1 q46a_2 q46a_3 q46a_4 q46a_5 DISPLAY=LABEL
  /TABLE BY q46a_1 [COUNT F40.0] + q46a_2 [COUNT F40.0] + q46a_3 [COUNT F40.0] + q46a_4 [COUNT 
    F40.0] + q46a_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q46a_1 q46a_2 q46a_3 q46a_4 q46a_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q46b_1 q46b_2 q46b_3 q46b_4 q46b_5 DISPLAY=LABEL
  /TABLE BY q46b_1 [COUNT F40.0] + q46b_2 [COUNT F40.0] + q46b_3 [COUNT F40.0] + q46b_4 [COUNT 
    F40.0] + q46b_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q46b_1 q46b_2 q46b_3 q46b_4 q46b_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q46c_1 q46c_2 q46c_3 q46c_4 q46c_5 DISPLAY=LABEL
  /TABLE BY q46c_1 [COUNT F40.0] + q46c_2 [COUNT F40.0] + q46c_3 [COUNT F40.0] + q46c_4 [COUNT 
    F40.0] + q46c_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q46c_1 q46c_2 q46c_3 q46c_4 q46c_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q46d_1 q46d_2 q46d_3 q46d_4 q46d_5 DISPLAY=LABEL
  /TABLE BY q46d_1 [COUNT F40.0] + q46d_2 [COUNT F40.0] + q46d_3 [COUNT F40.0] + q46d_4 [COUNT 
    F40.0] + q46d_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q46d_1 q46d_2 q46d_3 q46d_4 q46d_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q46e_1 q46e_2 q46e_3 q46e_4 q46e_5 DISPLAY=LABEL
  /TABLE BY q46e_1 [COUNT F40.0] + q46e_2 [COUNT F40.0] + q46e_3 [COUNT F40.0] + q46e_4 [COUNT 
    F40.0] + q46e_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q46e_1 q46e_2 q46e_3 q46e_4 q46e_5 [1] EMPTY=INCLUDE.

USE ALL.

FREQUENCIES VARIABLES=q47
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48a_1 q48a_2 q48a_3 q48a_4 q48a_5 DISPLAY=LABEL
  /TABLE BY q48a_1 [COUNT F40.0] + q48a_2 [COUNT F40.0] + q48a_3 [COUNT F40.0] + q48a_4 [COUNT 
    F40.0] + q48a_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48a_1 q48a_2 q48a_3 q48a_4 q48a_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48b_1 q48b_2 q48b_3 q48b_4 q48b_5 DISPLAY=LABEL
  /TABLE BY q48b_1 [COUNT F40.0] + q48b_2 [COUNT F40.0] + q48b_3 [COUNT F40.0] + q48b_4 [COUNT 
    F40.0] + q48b_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48b_1 q48b_2 q48b_3 q48b_4 q48b_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48c_1 q48c_2 q48c_3 q48c_4 q48c_5 DISPLAY=LABEL
  /TABLE BY q48c_1 [COUNT F40.0] + q48c_2 [COUNT F40.0] + q48c_3 [COUNT F40.0] + q48c_4 [COUNT 
    F40.0] + q48c_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48c_1 q48c_2 q48c_3 q48c_4 q48c_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48d_1 q48d_2 q48d_3 q48d_4 q48d_5 DISPLAY=LABEL
  /TABLE BY q48d_1 [COUNT F40.0] + q48d_2 [COUNT F40.0] + q48d_3 [COUNT F40.0] + q48d_4 [COUNT 
    F40.0] + q48d_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48d_1 q48d_2 q48d_3 q48d_4 q48d_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48e_1 q48e_2 q48e_3 q48e_4 q48e_5 DISPLAY=LABEL
  /TABLE BY q48e_1 [COUNT F40.0] + q48e_2 [COUNT F40.0] + q48e_3 [COUNT F40.0] + q48e_4 [COUNT 
    F40.0] + q48e_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48e_1 q48e_2 q48e_3 q48e_4 q48e_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48f_1 q48f_2 q48f_3 q48f_4 q48f_5 DISPLAY=LABEL
  /TABLE BY q48f_1 [COUNT F40.0] + q48f_2 [COUNT F40.0] + q48f_3 [COUNT F40.0] + q48f_4 [COUNT 
    F40.0] + q48f_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48f_1 q48f_2 q48f_3 q48f_4 q48f_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48g_1 q48g_2 q48g_3 q48g_4 q48g_5 DISPLAY=LABEL
  /TABLE BY q48g_1 [COUNT F40.0] + q48g_2 [COUNT F40.0] + q48g_3 [COUNT F40.0] + q48g_4 [COUNT 
    F40.0] + q48g_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48g_1 q48g_2 q48g_3 q48g_4 q48g_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48h_1 q48h_2 q48h_3 q48h_4 q48h_5 DISPLAY=LABEL
  /TABLE BY q48h_1 [COUNT F40.0] + q48h_2 [COUNT F40.0] + q48h_3 [COUNT F40.0] + q48h_4 [COUNT 
    F40.0] + q48h_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48h_1 q48h_2 q48h_3 q48h_4 q48h_5 [1] EMPTY=INCLUDE.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q48i_1 q48i_2 q48i_3 q48i_4 q48i_5 DISPLAY=LABEL
  /TABLE BY q48i_1 [COUNT F40.0] + q48i_2 [COUNT F40.0] + q48i_3 [COUNT F40.0] + q48i_4 [COUNT 
    F40.0] + q48i_5 [COUNT F40.0]
  /CATEGORIES VARIABLES=q48i_1 q48i_2 q48i_3 q48i_4 q48i_5 [1] EMPTY=INCLUDE.

MULT RESPONSE GROUPS=$mr_49 'q49_A Secretaria Estadual de Assistência Social possui convênios com entidades para prestação de serviços socioassistenciais?' (q49_0 q49_1 q49_2 q49_3(1))
/FREQUENCIES=$mr_49.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q50 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q50 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade total de entidades que recebem recurso da Secretaria Estadual de '+
    'Assistência Social através de convênio, por UF'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q51_1 q51_2 q51_3 DISPLAY=LABEL
  /TABLE q51_1 [S][SUM] + q51_2 [S][SUM] + q51_3 [S][SUM]
  /TITLES
    TITLE='Das entidades que recebem recurso da Secretaria por convênio, indique a quantidade '+
    'por nível de proteção do serviço ofertado'.

FREQUENCIES VARIABLES=q52
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q53
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q54
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q55
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_56 'Quais serviços de média complexidade de caráter REGIONAL são ofertados no Estado?' (q56_1 q56_2 q56_3 q56_4 q56_5 (1))
/FREQUENCIES=$mr_56.

FREQUENCIES VARIABLES=q57
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q57a_1 q57b_1 q57c_1 q57d_1 DISPLAY=LABEL
  /TABLE q57a_1 [COUNT F40.0] + q57b_1 [COUNT F40.0] + q57c_1 [COUNT F40.0] + q57d_1 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q57a_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q57b_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q57c_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q57d_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='q57a_Caso oferte PAEFI de caráter REGIONAL, como é, atualmente, a forma de execução '+
    'destas unidades?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q57a_2 q57b_2 q57c_2 q57d_2 DISPLAY=LABEL
  /TABLE q57a_2 [S][SUM] + q57b_2 [S][SUM] + q57c_2 [S][SUM] + q57d_2 [S][SUM]
  /TITLES
    TITLE='q57b_Caso oferte PAEFI de caráter REGIONAL, qual a quantidade de unidades que executam o serviço?'.
Execute.

FREQUENCIES VARIABLES=q58
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_59 'Quais serviços de alta complexidade de caráter REGIONAL são ofertados no Estado?' (q59_1 q59_2 q59_3 q59_4 q59_5 q59_6 q59_7 q59_8 q59_9(1))
/FREQUENCIES=$mr_59.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q60a_1 q60b_1 q60c_1 q60d_1 q60e_1 DISPLAY=LABEL
  /TABLE q60a_1 [COUNT F40.0] + q60b_1 [COUNT F40.0] + q60c_1 [COUNT F40.0] + q60d_1 [COUNT F40.0] 
    + q60e_1 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q60a_1 q60b_1 q60c_1 q60d_1 q60e_1 [1, 0, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='q60_Caso oferte Serviço de Acolhimento para criança e adolescentes e/ou jovens de '+
    'caráter REGIONAL, como é, atualmente, a forma de execução destas unidades?'.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q60a_2 q60b_2 q60c_2 q60d_2 q60e_2 DISPLAY=LABEL
  /TABLE q60a_2 [S][SUM] + q60b_2 [S][SUM] + q60c_2 [S][SUM] + q60d_2 [S][SUM] + q60e_2 [S][SUM]
  /TITLES
    TITLE='q60b_Caso oferte de Acolhimento para criança e adolescentes e/ou jovens de caráter REGIONAL, qual a quantidade de unidades que executam o serviço?'.
Execute.

FREQUENCIES VARIABLES=q61
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q63
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q64
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q65
 /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_66 'Caso sim, quais são os benefícios Eventuais concedidos?' (q66_1 q66_2 q66_3 q66_99(1))
/FREQUENCIES=$mr_66.

MULT RESPONSE GROUPS=$mr_67 'Indique as atividades realizadas pela Secretaria no âmbito do Monitoramento, Avaliação e Vigilância Socioassistencial?' (q67_1 q67_2 q67_3 q67_4 q67_5 q67_6 q67_7 q67_8 q67_9 q67_10 q67_11 q67_12 
q67_13 q67_14 q67_15 q67_16 q67_17 q67_18 q67_19 q67_20 q67_21 q67_22 q67_23 q67_99
(1))
/FREQUENCIES=$mr_67.

FREQUENCIES VARIABLES=q67_qual
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q68
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q69_1 q69_2 q69_3 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q69_1 [S][SUM] + q69_2 [S][SUM] + q69_3 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Caso sim, informe a quantidade de profissionais exclusivos da área de Vigilância '+
    'Socioassistêncial'.

MULT RESPONSE GROUPS=$mr_70 'Quanto à disseminação das informações produzidas pela área de Vigilância Socioassistencial, indique os órgãos e unidades para os quais os documentos, relatórios e indicadores são disponibilizados?' (q70_1 
q70_2 q70_3 q70_4 q70_5 q70_6 q70_7(1))
/FREQUENCIES=$mr_70.

FREQUENCIES VARIABLES=q71
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q72
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q73
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr_74 'Os sistemas utilizados permitem:' (q74_1 q74_2 q74_3 q74_4 q74_5 q74_6 q74_7 q74_8 q74_99(1))
/FREQUENCIES=$mr_74.

FREQUENCIES VARIABLES=q75 q76 q77 q78
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q79 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q79 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Caso sim, quantos?'.


FREQUENCIES VARIABLES=q80  
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q81a_1 q81b_1 q81c_1 q81d_1
/ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=q81a_2 q81b_2 q81c_2 q81d_2 DISPLAY=LABEL
  /TABLE q81a_2 [S][SUM] + q81b_2 [S][SUM] + q81c_2 [S][SUM] + q81d_2 [S][SUM] 
  /TITLES
    TITLE='Número de conselheiros capacitados em 2014'.


CTABLES
  /VLABELS VARIABLES= q82a_1 q82b_1 q82c_1 q82d_1 q82e_1 q82f_1 q82a_2 q82b_2 q82c_2 q82d_2 q82e_2 q82f_2 DISPLAY=LABEL
  /TABLE q82a_1 [S][SUM] + q82b_1 [S][SUM] + q82c_1 [S][SUM] + q82d_1 [S][SUM] + q82e_1 [S][SUM] + q82f_1 [S][SUM] + q82a_2 [S][SUM] + q82b_2 [S][SUM] + q82c_2 [S][SUM] + q82d_2 [S][SUM] + q82e_2 [S][SUM] + q82f_2 [S][SUM]
  /TITLES
    TITLE='Indique qual a composição da CIB de acordo com a representação do porte dos municípios e representação estadual'.

FREQUENCIES VARIABLES=q83 q84 q85 q86
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr_87 'Como o calendário de reuniões ordinárias foi divulgado' (q87_1 q87_2 q87_3(1))
/FREQUENCIES=$mr_87.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q87_1 q87_2 q87_3 DISPLAY=LABEL
  /TABLE q87_1 [COUNT F40.0] + q87_2 [COUNT F40.0] + q87_3 [COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q87_1 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q87_2 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q87_3 [1, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
 /TITLES
    TITLE= 'q87_Como o calendário de reuniões oridinárias é divulgado?'.

FREQUENCIES VARIABLES=q88  
/ORDER=ANALYSIS.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q89 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q89 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuniões a CIB realizou no ano de 2014?'.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q90 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q90 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuniões descentralizadas a CIB realizou no ano de 2014?'.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Ident_10 q91 DISPLAY=LABEL
  /TABLE Ident_10 [C] BY q91 [S][SUM]
  /CATEGORIES VARIABLES=Ident_10 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantas reuniões a CIB realizou no 1o semestre de 2015?'.


MULT RESPONSE GROUPS=$mr_92 'Quais foram os temas de pactuação no 1o semestre de 2015?' (q92_1 q92_2 q92_3 q92_4 q92_5 q92_6 q92_7 q92_8 q92_9 q92_10 q92_11 q92_12 q92_99(1))
/FREQUENCIES=$mr_92.


USE ALL.
COMPUTE filter_$=(q92_99 = 1).
VARIABLE LABEL filter_$ 'q92_99 = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=q92_qual
  /ORDER=ANALYSIS.

USE ALL.

FREQUENCIES VARIABLES=representante_Vigilancia
  /ORDER=ANALYSIS.


****COMANDO PARA EXPORTAR AS TABELAS PARA O EXCEL****










