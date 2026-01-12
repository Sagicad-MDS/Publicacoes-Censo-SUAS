* Encoding: UTF-8.

**CENSO SUAS 2018 - Familia Acolhedora**


FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q_1  q_2  q_3
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.4 'Esta unidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
(q_4_1 q_4_2 q_4_3 q_4_0 q_4_99 (1))
/FREQUENCIES=$mr.4.

MULT RESPONSE GROUPS=$mr.5 'Conselho(s) no(s) qual(is) a entidade possui inscrição/registro'
(q_5_1  q_5_2 q_5_99  q_5_0 (1))
/FREQUENCIES=$mr.5.

FREQUENCIES VARIABLES=q_6  q_7 
  /ORDER=ANALYSIS.




FREQUENCIES VARIABLES= q_9_1  q_9_2  q_9_3 q_9_4  q_10 q_11  q_12   d_13_faixa   d_14_faixa    d_15_faixa
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q_16_1_1  q_16_1_2  q_16_1_3  q_16_1_4  q_16_1_5  q_16_1_6  q_16_1_7_recod 
    DISPLAY=LABEL
  /TABLE BY q_16_1_1 [S][SUM] + q_16_1_2 [S][SUM] + q_16_1_3 [S][SUM] + q_16_1_4 [S][SUM] + q_16_1_5 [S][SUM] + q_16_1_6 [S][SUM] + q_16_1_7_recod [S][SUM].



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q_16_2_1  q_16_2_2  q_16_2_3  q_16_2_4  q_16_2_5  q_16_2_6  q_16_2_7_recod
    DISPLAY=LABEL
  /TABLE BY q_16_2_1 [S][SUM] + q_16_2_2 [S][SUM] + q_16_2_3 [S][SUM] + q_16_2_4 [S][SUM] + q_16_2_5 [S][SUM] + q_16_2_6 [S][SUM] + q_16_2_7_recod [S][SUM].



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q_17_1 q_17_2  q_17_3 q_17_4  q_17_5  q_17_6  q_17_7  q_17_8  q_17_9_recod
    DISPLAY=LABEL
  /TABLE BY q_17_1 [S][SUM] + q_17_2 [S][SUM] + q_17_3 [S][SUM] + q_17_4 [S][SUM] + q_17_5  [S][SUM] + q_17_6 [S][SUM] + q_17_7 [S][SUM] + q_17_8  [S][SUM] + q_17_9_recod [S][SUM]                  .





* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q_18_1 q_18_1_99 q_18_2 q_18_2_99 DISPLAY=LABEL
  /TABLE q_18_1 [S][SUM] + q_18_1_99 [COUNT F40.0] + q_18_2 [S][SUM] + q_18_2_99 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_18_1_99  q_18_2_99 ORDER=A KEY=VALUE EMPTY=EXCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q_19_1 q_19_1_99 q_19_2 q_19_2_99 q_19_3 q_19_3_99 q_19_4  q_19_4_99  DISPLAY=LABEL
  /TABLE q_19_1 [S][SUM] + q_19_1_99 [COUNT F40.0] + q_19_2 [S][SUM] + q_19_2_99 [COUNT F40.0] + q_19_3  [S][SUM] + q_19_3_99 [COUNT F40.0] + q_19_4 [S][SUM] + q_19_4_99 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_19_1_99  q_19_2_99 q_19_3_99 q_19_4_99 ORDER=A KEY=VALUE EMPTY=EXCLUDE.




FREQUENCIES VARIABLES=q_20  q_21_1  q_21_1_0  q_21_2  q_21_2_0 q_22 q_23 q_24 q_25
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.26 'Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço'
(q_26_1  q_26_2 q_26_3 q_26_4 q_26_5 q_26_6 q_26_7 q_26_8 q_26_9 q_26_10 q_26_11 q_26_12 q_26_13 q_26_14 q_26_15 q_26_16 q_26_17 q_26_18 q_26_19 q_26_20 q_26_21 q_26_22 q_26_23 q_26_24
 q_26_25 q_26_0  (1))
/FREQUENCIES=$mr.26.

FREQUENCIES VARIABLES=q_27
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.28  'Quem realiza o acompanhamento dos usuarios após o seu desligamento do serviço'
(q_28_1 q_28_2 q_28_3 q_28_98 q_28_99 q_28_0 (1))
/FREQUENCIES=$mr.28.


FREQUENCIES VARIABLES=q_29
  /ORDER=ANALYSIS.


**********Bloco 3  Familia acolhedora 

FREQUENCIES VARIABLES=q_30_99
  /ORDER=ANALYSIS.

**********Bloco 4  Gestão de pessoas 

FREQUENCIES VARIABLES=q_31 q_32
  /ORDER=ANALYSIS.





