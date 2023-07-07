****************************************************************************************************
SINTAXE TABELAS GESTÃO MUNICIPAL - CENSO SUAS 2016
****************************************************************************************************

********** DADOS GERAIS.
FREQUENCIES Região Porte_pop2010 UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1.

MULT RESPONSE GROUPS = $mr_2
'q2_A qual secretaria a assistência social está associada?'
(q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr_2.

MULT RESPONSE GROUPS = $mr_3
'q3_Subdivisões administrativas na estrutura do órgão gestor:'
(q3_1 q3_2 q3_3 q3_4 q3_5 q3_6 q3_7 q3_8 (1))
/FREQUENCIES=$mr_3.

FREQUENCIES q4_1 q4_2 q4_3 q4_4 q4_5 q4_6 q4_7 q4_99.

FREQUENCIES d5 d6 q7 q8.

MULT RESPONSE GROUPS = $mr_9
'q9_Quais formas de apoio técnico o município recebeu do estado, dos últimos 12 meses?'
(q9_1 q9_2 q9_3 q9_4 q9_5 q9_6 q9_99(1))
/FREQUENCIES=$mr_9.

FREQUENCIES q10 q11.

FREQUENCIES q12 q13 /FORMAT=DVALUE.

CTABLES
  /VLABELS VARIABLES=q14_1 q14_2 q14_3 q14_4 DISPLAY=LABEL
  /TABLE q14_1 [SUM, MEAN, MEDIAN, MAXIMUM] + q14_2 [SUM, MEAN, MEDIAN, MAXIMUM] + q14_3 [SUM, 
    MEAN, MEDIAN, MAXIMUM] + q14_4 [SUM, MEAN, MEDIAN, MAXIMUM]
  /TITLES TITLE='q14_Receitas e Despesas do município na área de assistência social no ano de 2015'.

CTABLES
  /VLABELS VARIABLES=q14_1 q14_2 q14_3 q14_4 DISPLAY=LABEL
  /TABLE q14_1 [MEAN] + q14_2 [MEAN] + q14_3 [MEAN] + q14_4 [MEAN]
BY Porte_pop2010
  /TITLES TITLE='q14_Média de Receitas e Despesas do município na área de assistência social no ano de 2015'.

FREQUENCIES q15 d16 d17_total.

CTABLES
  /VLABELS VARIABLES=q17_1_1 q17_1_2 q17_1_3 q17_1_4 DISPLAY=LABEL
  /TABLE BY q17_1_1 [SUM] + q17_1_2 [SUM] + q17_1_3 [SUM] + q17_1_4 [SUM]
  /TITLES TITLE='q17_1_Quantidade de trabalhadores Estatutários por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q17_2_1 q17_2_2 q17_2_3 q17_2_4 DISPLAY=LABEL
  /TABLE BY q17_2_1 [SUM] + q17_2_2 [SUM] + q17_2_3 [SUM] + q17_2_4 [SUM]
  /TITLES TITLE='q17_2_Quantidade de trabalhadores Celetistas por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q17_3_1 q17_3_2 q17_3_3 q17_3_4 DISPLAY=LABEL
  /TABLE BY q17_3_1 [SUM] + q17_3_2 [SUM] + q17_3_3 [SUM] + q17_3_4 [SUM]
  /TITLES TITLE='q17_3_Quantidade de trabalhadores Comissionados por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q17_4_1 q17_4_2 q17_4_3 q17_4_4 DISPLAY=LABEL
  /TABLE BY q17_4_1 [SUM] + q17_4_2 [SUM] + q17_4_3 [SUM] + q17_4_4 [SUM]
  /TITLES TITLE='q17_4_Quantidade de trabalhadores com Outros Vínculos por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q17_5_1 q17_5_2 q17_5_3 q17_total DISPLAY=LABEL
  /TABLE BY q17_5_1 [SUM] + q17_5_2 [SUM] + q17_5_3 [SUM] + q17_total [SUM]
  /TITLES TITLE='q17_5_Quantidade total de trabalhadores por escolaridade'.

FREQUENCIES d18_total.

CTABLES
  /VLABELS VARIABLES=q18_1 q18_2 q18_3 q18_4 q18_5 q18_6 q18_7 q18_8 q18_9 q18_10 q18_11 q18_12 
    q18_13 q18_14 q18_15 q18_16 q18_99 
    DISPLAY=LABEL
  /TABLE q18_1 [SUM] + q18_2 [SUM] + q18_3 [SUM] + q18_4 [SUM] + q18_5 [SUM] + q18_6 [SUM] + q18_7 
    [SUM] + q18_8 [SUM] + q18_9 [SUM] + q18_10 [SUM] + q18_11 [SUM] + q18_12 [SUM] + q18_13 [SUM] + 
    q18_14 [SUM] + q18_15 [SUM] + q18_16 [SUM] + q18_99 [SUM]
  /TITLES TITLE='q18_Quantidade de trabalhadores de nível superior por profissão'.

FREQUENCIES q19_1 /FORMAT=DVALUE.

CTABLES
  /VLABELS VARIABLES=q19_1_1 q19_1_3 DISPLAY=LABEL
  /TABLE q19_1_1 [SUM] + q19_1_3 [SUM] BY Porte_pop2010
  /TITLES TITLE='q19_1_Soma da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Superior por Porte'.

CTABLES
  /VLABELS VARIABLES=q19_1_1 q19_1_3 DISPLAY=LABEL
  /TABLE q19_1_1 [MEAN] + q19_1_3 [MEAN] BY Porte_pop2010
  /TITLES TITLE='q19_1_Média da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Superior por Porte'.

FREQUENCIES q19_2 /FORMAT=DVALUE.

CTABLES
  /VLABELS VARIABLES=q19_2_1 q19_2_3 DISPLAY=LABEL
  /TABLE q19_2_1 [SUM] + q19_2_3 [SUM] BY Porte_pop2010
  /TITLES TITLE='q19_2_Soma da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Médio por Porte'.

CTABLES
  /VLABELS VARIABLES=q19_2_1 q19_2_3 DISPLAY=LABEL
  /TABLE q19_2_1 [MEAN] + q19_2_3 [MEAN] BY Porte_pop2010
  /TITLES TITLE='q19_2_Média da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Médio por Porte'.

FREQUENCIES q20 /FORMAT=DVALUE.

MULT RESPONSE GROUPS=$mr_21
'q21_Como o município atende questões de violações de direitos?'
(q21_1 q21_2 q21_3 q21_4 q21_5 q21_6 q21_99 q21_0 (1))
/FREQUENCIES=$mr_21.

FREQUENCIES q22 /FORMAT=DVALUE.

MULT RESPONSE GROUPS=$mr_23
'q23_Em qual(is) unidade(s) o serviço é ofertado?'
(q23_1 q23_2 q23_3 q23_4 q23_5(1))
/FREQUENCIES=$mr_23.

MULT RESPONSE GROUPS=$mr_24
'q24_Como o município atende adolescentes em cumprimento de Medida Socioeducativa?'
(q24_1 q24_2 q24_3 q24_4 q24_5 q24_6 q24_7 q24_99 q24_0(1))
/FREQUENCIES=$mr_24.

MULT RESPONSE GROUPS=$mr_25
'q25_Ações realizadas pela política de Assistência Social no município para enfrentamento do Trabalho Infantil?'
(q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 q25_8 q25_9 q25_10
q25_11 q25_12(1))
/FREQUENCIES=$mr_25.

FREQUENCIES q26.

FREQUENCIES q27 /FORMAT=DVALUE.

MULT RESPONSE GROUPS=$mr_28
'q28_Para qual(is) público(s) o município oferta serviços de acolhimento?'
(q28_1 q28_2 q28_3 q28_4 q28_5 q28_6 q28_7(1))
/FREQUENCIES=$mr_28.

FREQUENCIES q29 q30 q31 /FORMAT=DVALUE.

FREQUENCIES d32 d33.

MULT RESPONSE GROUPS=$mr_34
'q34_Quais atividades de gestão, monitoramento e supervisão são realizadas pelo órgão'+
' gestor da Assistência Social?'
(q34_1 q34_2 q34_3 q34_4 q34_5 q34_6 q34_7 q34_8 q34_9 q34_0(1))
/FREQUENCIES=$mr_34.

FREQUENCIES q35 q36 q37 /FORMAT=DVALUE.

MULT RESPONSE GROUPS=$mr_38
'q38_Especifique quais as ações relativas ao BPC são desenvolvidas pela '
+'Assistência Social no município:'
(q38_1 q38_2 q38_3 q38_4 q38_5 q38_6 q38_7 q38_8(1))
/FREQUENCIES=$mr_38.

CTABLES
  /VLABELS VARIABLES=q39_1_1 q39_1_2 q39_1_3 DISPLAY=LABEL
  /TABLE BY q39_1_1 [COUNT F40.0] + q39_1_2 [COUNT F40.0] + q39_1_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_1_1 q39_1_2 q39_1_3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q39_1_Como é concedido o benefício de Auxílio Funeral?'.

CTABLES
  /VLABELS VARIABLES=q39_2_1 q39_2_2 q39_2_3 DISPLAY=LABEL
  /TABLE BY q39_2_1 [COUNT F40.0] + q39_2_2 [COUNT F40.0] + q39_2_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_2_1 q39_2_2 q39_2_3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q39_2_Como é concedido o benefício de Auxílio Natalidade?'.

CTABLES
  /VLABELS VARIABLES=q39_3_1 q39_3_2 q39_3_3 DISPLAY=LABEL
  /TABLE BY q39_3_1 [COUNT F40.0] + q39_3_2 [COUNT F40.0] + q39_3_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_3_1 q39_3_2 q39_3_3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q39_3_Como é concedido o Benefício Eventual para situação de '+
'calamidade pública?'.

CTABLES
  /VLABELS VARIABLES=q39_4_1 q39_4_2 q39_4_3 DISPLAY=LABEL
  /TABLE BY q39_4_1 [COUNT F40.0] + q39_4_2 [COUNT F40.0] + q39_4_3 [COUNT F40.0]
  /CATEGORIES VARIABLES=q39_4_1 q39_4_2 q39_4_3 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='q39_4_Como são concedidos outros benefícios eventuais para '+
'famílias em situação de vulnerabilidade temporária?'.

FREQUENCIES q40.

FREQUENCIES q41 /FORMAT=DVALUE.

FREQUENCIES d42_1 d42_2 d42_total.

FREQUENCIES q43 /FORMAT=DVALUE.

FREQUENCIES d44 q45.

FREQUENCIES q46 /FORMAT=DVALUE.

FREQUENCIES q47.

FREQUENCIES q48 /FORMAT=DVALUE.

FREQUENCIES q49.

FREQUENCIES q50 /FORMAT=DVALUE.

FREQUENCIES q51.

MULT RESPONSE GROUPS=$mr_52
'q52_O órgão gestor realiza as seguintes atividades de monitoramento da qualidade '+
'dos serviços prestados pela rede socioassistencial:'
(q52_1 q52_2 q52_3 q52_4(1))
/FREQUENCIES=$mr_52.

FREQUENCIES rep_vig_n_possui /FORMAT=DVALUE.

*******


