* Encoding: UTF-8.

****************************************************************************************************
SINTAXE TABELAS GESTÃO MUNICIPAL - CENSO SUAS 2016
****************************************************************************************************

********** DADOS GERAIS.

FREQUENCIES Regiao  
Porte_pop2010 UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1.

MULT RESPONSE GROUPS = $mr.2
'q2.A qual secretaria a assistência social está associada?'
(q2_1 q2_2  q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr.2.

FREQUENCIES q3_1 q3_2 q3_3 q3_4 q3_5  q3_6  q3_7 q3_8  q3_9  q4  d_5  q5_1 .

MULT RESPONSE GROUPS = $mr.6  'q6.conteúdo previsto na Lei Municipal de regulamentação do Sistema Único de Assistência Social'
(q6_1 q6_2 q6_3 q6_4 q6_5  q6_6  q6_7 q6_8  q6_9  q6_10  q6_11  q6_12  q6_13  q6_14  q6_15  q6_16   q6_17  q6_18  q6_19  q6_20  q6_21  q6_22  q6_99(1))
/FREQUENCIES=$mr.6.

FREQUENCIES  q7  q8.

MULT RESPONSE GROUPS = $mr.9  'q9.Nos últimos 12 meses, quais formas de apoio técnico o município recebeu do estado'
 (q9_1 q9_2 q9_3  q9_4   q9_5 q9_6  q9_7  q9_8  q9_99(1))
/FREQUENCIES=$mr.9.

FREQUENCIES q10  q11   d_12   q13   q14  q15  q16  d_17.


MULT RESPONSE GROUPS = $mr.18  'q18.Como a Assistência Social atende questões de violações de direitos no município'
 (q18_1  q18_2  q18_3  q18_4  q18_5 q18_6  q18_99  q18_0(1))
/FREQUENCIES=$mr.18.

MULT RESPONSE GROUPS = $mr.19  'q19.Como a Assistência Social atende questões de violações de direitos no município'
 (q19_1  q19_2  q19_3  q19_4  q19_5   q19_6  q19_7  q19_99  q19_0(1))
/FREQUENCIES=$mr.19.

MULT RESPONSE GROUPS = $mr.20  'q20.Quais atividades a(o) técnica(o) ou a equipe de referência do órgão gestor realiza'
 (q20_1  q20_2  q20_3  q20_4  q20_5  q20_6  q20_7   q20_8  q20_0(1))
/FREQUENCIES=$mr.20.

FREQUENCIES   q21.

MULT RESPONSE GROUPS = $mr.22  'q22.Em qual(is) unidade(s) o serviço é ofertado'
 (q22_1  q22_2  q22_3  q22_4   q22_5(1))
/FREQUENCIES=$mr.22.

FREQUENCIES   q23  q24 q25  q26  d_27  d_28  q29.


MULT RESPONSE GROUPS = $mr.30  'q30.Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município?'
 (q30_1 q30_2 q30_3 q30_4 q30_5 q30_6 q30_0 (1))
/FREQUENCIES=$mr.30.

MULT RESPONSE GROUPS = $mr.31  'q31.Nos casos de acolhimento de crianças e adolescentes, quais atividades de gestão e monitoramento são realizadas pelo órgão gestor da Assistência Social'
 (q31_1	q31_2	q31_3	q31_4	q31_5	q31_6	q31_7	q31_8	q31_9	q31_0 (1))
/FREQUENCIES=$mr.31.


FREQUENCIES  q32  d_33   q34  d_35  q36 q37  .

MULT RESPONSE GROUPS = $mr.38  'q38.Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, as(os) usuárias(os) da assistência social?'
 (q38_1  q38_2  q38_3  q38_4  q38_5  q38_6   q38_7  q38_8  q38_99(1))
/FREQUENCIES=$mr.38.


MULT RESPONSE GROUPS = $mr.39  'q39.Existe delimitação de usuárias(os) prioritárias(os) para o atendimento do Acesuas Trabalho'
 (q39_0  q39_1  q39_2  q39_3  q39_4  q39_5  q39_6  q39_7  q39_8  q39_9  q39_10   q39_11  q39_12   q39_99(1))
/FREQUENCIES=$mr.39.


MULT RESPONSE GROUPS = $mr.40  'q40.Especifique quais as ações relativas ao Benefício de Prestação Continuada (BPC) são desenvolvidas pela Assistência Social no município'
 (q40_1 q40_2  q40_3  q40_4  q40_5  q40_6  q40_7  q40_8  q40_9  q40_99  q40_0 (1))
/FREQUENCIES=$mr.40.

*****q41

CTABLES
  /VLABELS VARIABLES= q41_1_1  q41_1_2  q41_1_3    q41_1_4 DISPLAY=DEFAULT
  /TABLE  q41_1_1 [C][COUNT F40.0] +  q41_1_2 [C][COUNT F40.0] +   q41_1_3 [S][MEAN]   + q41_1_4 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q41_1_1  q41_1_2 q41_1_4   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q41_2_1  q41_2_2  q41_2_3    q41_2_4 DISPLAY=DEFAULT
  /TABLE  q41_2_1 [C][COUNT F40.0] +  q41_2_2 [C][COUNT F40.0] +   q41_2_3 [S][MEAN]   + q41_2_4 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q41_2_1  q41_2_2 q41_2_4   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q41_3_1  q41_3_2  q41_3_3    q41_3_4 DISPLAY=DEFAULT
  /TABLE  q41_3_1 [C][COUNT F40.0] +  q41_3_2 [C][COUNT F40.0] +   q41_3_3 [S][MEAN]   + q41_3_4 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q41_3_1  q41_3_2 q41_3_4   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q41_4_1  q41_4_2  q41_4_3    q41_4_4 DISPLAY=DEFAULT
  /TABLE  q41_4_1 [C][COUNT F40.0] +  q41_4_2 [C][COUNT F40.0] +   q41_4_3 [S][MEAN]   + q41_4_4 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q41_4_1  q41_4_2 q41_4_4   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

FREQUENCIES  q42 d_43  d_44  .

*****q45

MULT RESPONSE GROUPS=$mr.45_1 'q45_1  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: Na sede do órgão gestor/Secretaria de Assistência '
(q45_1_1 q45_1_2 q45_1_3 q45_1_4 q45_1_0 (1))
/FREQUENCIES=$mr.45_1.


MULT RESPONSE GROUPS=$mr.45_2 'q45_2  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: Nos CRAS '
(q45_2_1 q45_2_2 q45_2_3 q45_2_4 q45_2_0 (1))
/FREQUENCIES=$mr.45_2.


MULT RESPONSE GROUPS=$mr.45_3 'q45_3  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: Em unidades/postos fixos exclusivos para cadastramento '
(q45_3_1 q45_3_2 q45_3_3 q45_3_4 q45_3_0 (1))
/FREQUENCIES=$mr.45_3.


MULT RESPONSE GROUPS=$mr.45_4 'q45_4  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: Em unidades móveis ou postos temporários '
(q45_4_1 q45_4_2 q45_4_3 q45_4_4 q45_4_0 (1))
/FREQUENCIES=$mr.45_4.

MULT RESPONSE GROUPS=$mr.45_5 'q45_5  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: Em outras unidades da Assistência Social '
(q45_5_1 q45_5_2 q45_5_3 q45_5_4 q45_5_0 (1))
/FREQUENCIES=$mr.45_5.


MULT RESPONSE GROUPS=$mr.45_6 'q45_6  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: Em unidades de outras políticas públicas '
(q45_6_1 q45_6_2 q45_6_3 q45_6_4 q45_6_0 (1))
/FREQUENCIES=$mr.45_6.


MULT RESPONSE GROUPS=$mr.45_7 'q45_7  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: No domicílio das famílias '
(q45_7_1 q45_7_2 q45_7_3 q45_7_4 q45_7_0 (1))
/FREQUENCIES=$mr.45_7.


MULT RESPONSE GROUPS=$mr.45_8  'q45_8  locais do município onde são realizados o cadastramento e a atualização cadastral do CadÚnico: Outros '
(q45_8_1 q45_8_2 q45_8_3 q45_8_4 q45_8_0 (1))
/FREQUENCIES=$mr.45_8.

FREQUENCIES q46 q47.

MULT RESPONSE GROUPS = $mr.48  'q48.Quais estratégias de fomento à participação de cidadã(o) e usuária(o) são utilizadas pelo órgão gestor da Assistência Social no município'
 (q48_1  q48_2  q48_3  q48_4  q48_5  q48_6  q48_7  q48_8  q48_9  q48_99  q48_0 (1))
/FREQUENCIES=$mr.48.



FREQUENCIES q49.

MULT RESPONSE GROUPS = $mr.50  'q50.Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor de Assistência Social em 2018'
 (q50_1 q50_2  q50_3  q50_4  q50_5  q50_6  q50_7  q50_8  q50_9  q50_10  q50_11  q50_12  q50_13  q50_14   q50_15 q50_99 (1))
/FREQUENCIES=$mr.50.


FREQUENCIES  d_51_1_2   d_51_1_4    d_51_2_2    d_51_2_4  q52   q53  d_54    q55    d_56_1  d_56_2  q57 d_58  q59   q60   q61  d_62   q63  q64 .







