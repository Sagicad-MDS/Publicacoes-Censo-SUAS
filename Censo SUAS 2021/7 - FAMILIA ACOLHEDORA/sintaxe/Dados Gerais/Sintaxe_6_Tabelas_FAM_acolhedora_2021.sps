* Encoding: UTF-8.

**CENSO SUAS 2021 - Familia Acolhedora**


*********-  estado (1) e muncipio (2)


FREQUENCIES VARIABLES=Regiao Porte_pop2010  UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q1  q2  
  /ORDER=ANALYSIS.




MULT RESPONSE GROUPS=$mr.4 'Esta unidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
(q4_1 q4_2 q4_3 q4_0 q4_98 (1))
/FREQUENCIES=$mr.4.

MULT RESPONSE GROUPS=$mr.5 'Conselho(s) no(s) qual(is) a entidade possui inscrição/registro'
(q5_1  q5_2 q5_99  q5_0 (1))
/FREQUENCIES=$mr.5.

FREQUENCIES VARIABLES=q6 q7 q8 q9  q10 q11 d12_faixa  q12_98 q13 q14  
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  d15_faixa  d16_faixa  q16_98
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q17_1_1 q17_1_2 q17_1_3 q17_1_4 q17_1_5 q17_1_6 q17_1_7 q17_1_8 q17_1_9 
    q17_2_1 q17_2_2 q17_2_3 q17_2_4 q17_2_5 q17_2_6 q17_2_7 q17_2_8 q17_2_9 
    DISPLAY=LABEL
  /TABLE q17_1_1 [S][SUM] + q17_1_2 [S][SUM] + q17_1_3 [S][SUM] + q17_1_4 [S][SUM] + q17_1_5 
    [S][SUM] + q17_1_6 [S][SUM] + q17_1_7 [S][SUM] + q17_1_8 [S][SUM] + q17_1_9 [S][SUM] + q17_2_1 
    [S][SUM] + q17_2_2 [S][SUM] + q17_2_3 [S][SUM] + q17_2_4 [S][SUM] + q17_2_5 [S][SUM] + q17_2_6 
    [S][SUM] + q17_2_7 [S][SUM] + q17_2_8 [S][SUM] + q17_2_9 [S][SUM].



FREQUENCIES VARIABLES=  d17_total_faixa 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=  d18_1_faixa  q18_1_98   d18_2_faixa    q18_2_98    d18_3_faixa  q18_3_98
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  d19_1_faixa d19_2_faixa d19_3_faixa d19_4_faixa  d19_5_faixa  d19_6_faixa d19_7_faixa d19_8_faixa  d19_9_faixa
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  d20_1_faixa   q20_1_98   d20_2_faixa   q20_2_98    d20_3_faixa   q20_3_98   d20_4_faixa   q20_4_98   d20_5_faixa    q20_5_98     d20_6_faixa  q20_6_98
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=   d21_1_faixa    q21_1_98  d21_2_faixa     q21_2_98         d21_3_faixa     q21_3_98
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=   d22_1_faixa   q22_1_98      d22_2_faixa     q22_2_98       d22_3_faixa    q22_3_98        d22_4_faixa   q22_4_98       d22_5_faixa  q22_5_98
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=   d23_faixa   q23_98
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.24  'atividades promovidas sistematicamente pelo serviço'
(q24_1 q24_2 q24_3 q24_4 q24_5 q24_6  q24_7 q24_8 q24_9 q24_10  q24_11 q24_12 q24_13  q24_14  q24_15 q24_16  q24_17 q24_18 q24_19  q24_20 q24_21 q24_22 q24_23 q24_24 q24_25 q24_26 (1))
/FREQUENCIES=$mr.24.

FREQUENCIES VARIABLES=   q25
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=   d26_1_faixa d26_2_faixa
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.27  'unidade possui os seguintes instrumentais'
(q27_1 q27_2 q27_3 q27_99 q27_0 (1))
/FREQUENCIES=$mr.27.


FREQUENCIES VARIABLES=   q28 q29
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.30  'Quem realiza o acompanhamento das(os) crianças/adolescentes após o seu desligamento'
(q30_1 q30_2 q30_3 q30_4 q30_99 q30_98 q30_0 (1))
/FREQUENCIES=$mr.30.


FREQUENCIES VARIABLES=   q31 q32_1 q32_2
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.33  'Houve neste serviço de família acolhedora, pessoas que tenham contraído COVID-19'
(q33_1 q33_2 q33_3 q33_0 (1))
/FREQUENCIES=$mr.33.


MULT RESPONSE GROUPS=$mr.34  'Houve neste serviço de família acolhedora, pessoas que tenham falecido devido à COVID-19?'
(q34_1 q34_2 q34_3 q34_4 (1))
/FREQUENCIES=$mr.34.

MULT RESPONSE GROUPS=$mr.35  'medidas foram adotadas no serviço como forma de prevenir e isolar casos suspeitos e confirmados'
(q35_1 q35_2 q35_3 q35_4 q35_5 q35_6 q35_99 q35_0 (1))
/FREQUENCIES=$mr.35.


MULT RESPONSE GROUPS=$mr.36  'fluxo de atendimento durante a pandemia'
(q36_1 q36_2 q36_3 q36_98 (1))
/FREQUENCIES=$mr.36.




FREQUENCIES VARIABLES=   q37  q38  q39
  /ORDER=ANALYSIS.