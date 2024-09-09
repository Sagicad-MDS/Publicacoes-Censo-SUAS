* Encoding: UTF-8.

**CENSO SUAS 2023 - Fundo Estadual**


FREQUENCIES VARIABLES=  Nome_UF  Região
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  q1  q2  q3  q4  
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  d5 q6  q7  q8  q9
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.10 'Em 2022, o cofinanciamento realizado (fundo-a-fundo e convênio) foi destinado a:'
(q10_1  q10_2  q10_3  q10_4  q10_5  q10_99  (1))
/FREQUENCIES=$mr.10.

FREQUENCIES VARIABLES=  q11
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  d12_1  d12_2  d12_3
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  d13_1  d13_2  d13_3
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.14 'O estado regulamentou o cofinanciamento dos benefícios eventuais para os municípios'
(q14_0  q14_1  q14_2  q14_3  q14_4   (1))
/FREQUENCIES=$mr.14.


MULT RESPONSE GROUPS=$mr.15 'A CIB pactuou cofinanciamento estadual para benefícios eventuais'
(q15_1  q15_2  q15_3  q15_4 q15_5   (1))
/FREQUENCIES=$mr.15.



FREQUENCIES VARIABLES= q16  q17
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q18_1_1 q18_2_1  q18_3_1   q18_1_2  q18_2_2  q18_3_2  q18_1_3  q18_2_3  q18_3_3  
q18_1_4  q18_2_4  q18_3_4   q18_1_5  q18_2_5  q18_3_5  q18_1_6  q18_2_6  q18_3_6           
    DISPLAY=LABEL
  /TABLE q18_1_1 [MEAN] + q18_2_1 [MEAN] + q18_3_1 [MEAN] 
+ q18_1_2  [MEAN] + q18_2_2 [MEAN] + q18_3_2  [MEAN] 
+ q18_1_3  [MEAN] + q18_2_3 [MEAN] + q18_3_3  [MEAN] 
+ q18_1_4  [MEAN] + q18_2_4  [MEAN] + q18_3_4  [MEAN] 
+  q18_1_5  [MEAN] + q18_2_5 [MEAN] + q18_3_5  [MEAN] 
+  q18_1_6  [MEAN] +  q18_2_6 [MEAN] +  q18_3_6   [MEAN] .


