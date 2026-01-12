* Encoding: UTF-8.

**CENSO SUAS 2018 - Familia Acolhedora**


FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q1  q2  q3
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.4 'Esta unidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
(q4_1 q4_2 q4_3 q4_0 q4_98 (1))
/FREQUENCIES=$mr.4.

MULT RESPONSE GROUPS=$mr.5 'Conselho(s) no(s) qual(is) a entidade possui inscrição/registro'
(q5_1  q5_2 q5_99  q5_0 (1))
/FREQUENCIES=$mr.5.

FREQUENCIES VARIABLES=q6  q7 
  /ORDER=ANALYSIS.




FREQUENCIES VARIABLES= q9_1  q9_2  q9_3 q9_4  q10 q11  q12   d_13_faixa   d_14_faixa    d_15_faixa
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q16_1_1  q16_1_2  q16_1_3  q16_1_4  q16_1_5  q16_1_6  q_16_1_7_recod 
    DISPLAY=LABEL
  /TABLE BY q16_1_1 [S][SUM] + q16_1_2 [S][SUM] + q16_1_3 [S][SUM] + q16_1_4 [S][SUM] + q16_1_5 [S][SUM] + q16_1_6 [S][SUM] + q_16_1_7_recod [S][SUM].



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q16_2_1  q16_2_2  q16_2_3  q16_2_4  q16_2_5  q16_2_6  q_16_2_7_recod
    DISPLAY=LABEL
  /TABLE BY q16_2_1 [S][SUM] + q16_2_2 [S][SUM] + q16_2_3 [S][SUM] + q16_2_4 [S][SUM] + q16_2_5 [S][SUM] + q16_2_6 [S][SUM] + q_16_2_7_recod [S][SUM].



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q17_1 q17_2  q17_3 q17_4  q17_5  q17_6  q17_7  q17_8  q_17_9_recod
    DISPLAY=LABEL
  /TABLE BY q17_1 [S][SUM] + q17_2 [S][SUM] + q17_3 [S][SUM] + q17_4 [S][SUM] + q17_5  [S][SUM] + q17_6 [S][SUM] + q17_7 [S][SUM] + q17_8  [S][SUM] + q_17_9_recod [S][SUM]                  .





* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q18_1 q18_1_98 q18_2 q18_2_98 DISPLAY=LABEL
  /TABLE q18_1 [S][SUM] + q18_1_98 [COUNT F40.0] + q18_2 [S][SUM] + q18_2_98 [COUNT F40.0]
  /CATEGORIES VARIABLES=q18_1_98  q18_2_98 ORDER=A KEY=VALUE EMPTY=EXCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q19_1 q19_1_98 q19_2 q19_2_98 q19_3 q19_3_98 q19_4  q19_4_98  DISPLAY=LABEL
  /TABLE q19_1 [S][SUM] + q19_1_98 [COUNT F40.0] + q19_2 [S][SUM] + q19_2_98 [COUNT F40.0] + q19_3  [S][SUM] + q19_3_98 [COUNT F40.0] + q19_4 [S][SUM] + q19_4_98 [COUNT F40.0]
  /CATEGORIES VARIABLES=q19_1_98  q19_2_98 q19_3_98 q19_4_98 ORDER=A KEY=VALUE EMPTY=EXCLUDE.




FREQUENCIES VARIABLES=q20  q21_1  q21_1_1  q21_2  q21_2_1 q22 q23 q24 q25
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.26 'Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço'
(q26_1  q26_2 q26_3 q26_4 q26_5 q26_6 q26_7 q26_8 q26_9 q26_10 q26_11 q26_12 q26_13 q26_14 q26_15 q26_16 q26_17 q26_18 q26_19 q26_20 q26_21 q26_22 q26_23 q26_24
 q26_25 q26_0  (1))
/FREQUENCIES=$mr.26.

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.28  'Quem realiza o acompanhamento dos usuarios após o seu desligamento do serviço'
(q28_1 q28_2 q28_3 q28_98 q28_99 q28_0 (1))
/FREQUENCIES=$mr.28.


FREQUENCIES VARIABLES=q29
  /ORDER=ANALYSIS.


**********Bloco 3  Familia acolhedora 

FREQUENCIES VARIABLES=q30_97
  /ORDER=ANALYSIS.

**********Bloco 4  Gestão de pessoas 

FREQUENCIES VARIABLES=q31 q32
  /ORDER=ANALYSIS.





