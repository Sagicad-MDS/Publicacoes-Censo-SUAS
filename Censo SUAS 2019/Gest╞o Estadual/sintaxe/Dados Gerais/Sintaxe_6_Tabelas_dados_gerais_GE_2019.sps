* Encoding: UTF-8.

****************************************************************************************************
SINTAXE TABELAS GESTÃO MUNICIPAL - CENSO SUAS 2016
****************************************************************************************************

********** DADOS GERAIS.

FREQUENCIES Regiao  UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1.

MULT RESPONSE GROUPS = $mr.2
'q2.A qual secretaria a assistência social está associada?'
(q2_1 q2_2  q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr.2.

FREQUENCIES q3_1 q3_2 q3_3 q3_4 q3_5  q3_6  q3_7 q3_8  q3_9   d_4  d_5  d_6 .

MULT RESPONSE GROUPS = $mr.7_1  'q7_1.A Secretaria Estadual de Assistência Social executa diretamente algum serviço Socioassistencial: Proteção Social Básica '
(q7_1_1 q7_1_2 q7_1_3 q7_1_0 (1))
/FREQUENCIES=$mr.7_1.

MULT RESPONSE GROUPS = $mr.7_2  'q7_2.A Secretaria Estadual de Assistência Social executa diretamente algum serviço Socioassistencial: Proteção Social Especial de Média Complexidade '
(q7_2_1 q7_2_2 q7_2_3 q7_2_0 (1))
/FREQUENCIES=$mr.7_2.

MULT RESPONSE GROUPS = $mr.7_3  'q7_3.A Secretaria Estadual de Assistência Social executa diretamente algum serviço Socioassistencial: Proteção Social Especial de Alta Complexidade '
(q7_3_1 q7_3_2 q7_3_3 q7_3_0 (1))
/FREQUENCIES=$mr.7_3.


FREQUENCIES   q8.

MULT RESPONSE GROUPS = $mr.9  'q9.quais são os Benefícios Eventuais concedidos'
 (q9_1 q9_2 q9_3  q9_4 q9_99(1))
/FREQUENCIES=$mr.9.


MULT RESPONSE GROUPS = $mr.10  'q10.Caso o estado conceda Beneficio Eventual em situação de calamidade ou Beneficio Eventual em situação de vulnerabilidade temporária, informe quais'
 (q10_1 q10_2 q10_3 q10_4 q10_5 q10_6 q10_7 q10_8 q10_9  q10_10  q10_11  q10_12  q10_13 q10_99(1))
/FREQUENCIES=$mr.10.


FREQUENCIES q11   q12.


MULT RESPONSE GROUPS = $mr.13  'q13.como é, atualmente, a forma de execução destas unidades'
 (q13_1  q13_2(1))
/FREQUENCIES=$mr.13.


MULT RESPONSE GROUPS = $mr.14  'q14.apoio técnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais de caráter regional (Modelo II)'
 (q14_1 q14_2 q14_3 q14_4  q14_5  q14_6  q14_7  q14_8  q14_9  q14_99 (1))
/FREQUENCIES=$mr.14.

FREQUENCIES q15.

MULT RESPONSE GROUPS = $mr.16  'q16.Como a Assistência Social atende questões de violações de direitos no município'
 (q16_1 q16_2  q16_3  q16_4  q16_5  q16_6  q16_7  q16_8  q16_9(1)) 
/FREQUENCIES=$mr.16.



CTABLES
  /VLABELS VARIABLES=q17_1   q17_1_99 DISPLAY=DEFAULT
  /TABLE  q17_1 [C][COUNT F40.0] + q17_1_99 [S][SUM]
  /CATEGORIES VARIABLES= q17_1 [1] EMPTY=INCLUDE.


CTABLES
  /VLABELS VARIABLES=q17_2   q17_2_99 DISPLAY=DEFAULT
  /TABLE  q17_2 [C][COUNT F40.0] + q17_2_99 [S][SUM]
  /CATEGORIES VARIABLES= q17_2 [1] EMPTY=INCLUDE.

CTABLES
  /VLABELS VARIABLES=q17_3   q17_3_99 DISPLAY=DEFAULT
  /TABLE  q17_3 [C][COUNT F40.0] + q17_3_99 [S][SUM]
  /CATEGORIES VARIABLES= q17_3 [1] EMPTY=INCLUDE.

CTABLES
  /VLABELS VARIABLES=q17_4  q17_4_99  DISPLAY=DEFAULT
  /TABLE  q17_4  [C][COUNT F40.0] + q17_4_99  [S][SUM]
  /CATEGORIES VARIABLES= q17_4 [1] EMPTY=INCLUDE.

FREQUENCIES q18.

MULT RESPONSE GROUPS = $mr.19  'q19.O apoio técnico do Estado aos municípios inclui'
 (q19_1  q19_2  q19_3  q19_4  q19_5  q19_6  q19_99 (1))
/FREQUENCIES=$mr.19.

FREQUENCIES   q20 d_21  d_22.


CTABLES
  /VLABELS VARIABLES= q23_1 q23_1_1  q23_1_99   DISPLAY=DEFAULT
  /TABLE  q23_1 [C][COUNT F40.0] +  q23_1_1 [C][COUNT F40.0] +   q23_1_99  [S][MEAN]   
  /CATEGORIES VARIABLES=q23_1 q23_1_1      ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES= q23_2 q23_2_1  q23_2_99   DISPLAY=DEFAULT
  /TABLE  q23_2 [C][COUNT F40.0] +  q23_2_1 [C][COUNT F40.0] +   q23_2_99  [S][MEAN]   
  /CATEGORIES VARIABLES=q23_2 q23_2_1     ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q23_3 q23_3_1  q23_3_99   DISPLAY=DEFAULT
  /TABLE  q23_3 [C][COUNT F40.0] +  q23_3_1 [C][COUNT F40.0] +   q23_3_99  [S][MEAN]   
  /CATEGORIES VARIABLES=q23_3 q23_3_1       ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q23_4 q23_4_1  q23_4_99   DISPLAY=DEFAULT
  /TABLE  q23_4 [C][COUNT F40.0] +  q23_4_1 [C][COUNT F40.0] +   q23_4_99  [S][MEAN]   
  /CATEGORIES VARIABLES=q23_4 q23_4_1      ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.



CTABLES
  /VLABELS VARIABLES= q24_1 q24_1_99   DISPLAY=DEFAULT
  /TABLE  q24_1 [C][COUNT F40.0] +   q24_1_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q24_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q24_2 q24_2_99   DISPLAY=DEFAULT
  /TABLE  q24_2 [C][COUNT F40.0] +   q24_2_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q24_2    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q24_3 q24_3_99   DISPLAY=DEFAULT
  /TABLE  q24_3 [C][COUNT F40.0] +   q24_3_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q24_3   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q24_4 q24_4_99   DISPLAY=DEFAULT
  /TABLE  q24_4 [C][COUNT F40.0] +   q24_4_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q24_4   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q25_1_1 q25_1_2 DISPLAY=LABEL
  /TABLE BY q25_1_1 [S][MEAN] + q25_1_2 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=d_25_2_1   d_25_2_2 DISPLAY=LABEL
  /TABLE BY q25_2_1 [S][MEAN] + q25_2_2 [S][MEAN].

 
CTABLES
  /VLABELS VARIABLES=d_25_3_1  d_25_3_2  DISPLAY=LABEL
  /TABLE BY q25_3_1 [S][MEAN] + q25_3_2 [S][MEAN].


CTABLES
  /VLABELS VARIABLES=d_25_4_1  d_25_4_2  DISPLAY=LABEL
  /TABLE BY q25_4_1 [S][MEAN] + q25_4_2 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=d_25_5_1  d_25_5_2  DISPLAY=LABEL
  /TABLE BY q25_5_1 [S][MEAN] + q25_5_2 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=d_25_6_1  d_25_6_2  DISPLAY=LABEL
  /TABLE BY q25_6_1 [S][MEAN] + q25_6_2 [S][MEAN].


FREQUENCIES  q26  q27  q28  q29  q30   d_31 d_32 q33.



MULT RESPONSE GROUPS = $mr.34  'q34.O plano de Cargos, Carreiras e Salários dos servidores do órgão gestor da assistência social (PCCS) pertence a qual órgão do estado'
 (q34_1 q34_2 q34_3 q34_99 (1))
/FREQUENCIES=$mr.34.


FREQUENCIES   q35.


CTABLES
  /VLABELS VARIABLES=q36_1_1 q36_1_2 q36_1_3 q36_1_5 DISPLAY=LABEL
  /TABLE BY q36_1_1 [COUNT F40.0] + q36_1_2 [MEAN] + q36_1_3 [COUNT F40.0] + q36_1_5 [MEAN]
  /CATEGORIES VARIABLES=q36_1_1 q36_1_3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


CTABLES
  /VLABELS VARIABLES=q36_2_1 q36_2_2 q36_2_3 q36_2_5 DISPLAY=LABEL
  /TABLE BY q36_2_1 [COUNT F40.0] + q36_2_2 [MEAN] + q36_2_3 [COUNT F40.0] + q36_2_5 [MEAN]
  /CATEGORIES VARIABLES=q36_2_1 q36_2_3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


