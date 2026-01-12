* Encoding: UTF-8.

**CENSO SUAS 2021 - Fundo Estadual**


FREQUENCIES VARIABLES=  Nome_UF  Região
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q1  q2  q3  q4  
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Região q5_1 q5_2 q5_3 q5_4 q5_5_rec DISPLAY=LABEL
  /TABLE Região [C] BY q5_1 [S][SUM] + q5_2 [S][SUM] + q5_3 [S][SUM] + q5_4 [S][SUM] + q5_5_rec [S][SUM]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Nome_UF q5_1 q5_2 q5_3 q5_4 q5_5_rec DISPLAY=LABEL
  /TABLE Nome_UF  BY q5_1 [S][SUM] + q5_2 [S][SUM] + q5_3 [S][SUM] + q5_4 [S][SUM] + q5_5_rec [S][SUM]
  /CATEGORIES VARIABLES=Nome_UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.

FREQUENCIES VARIABLES= q6 q7 q8 q9 q10 q11  q12
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr.13 'Em 2019, o cofinanciamento realizado (fundo-a-fundo e convênio) foi destinado a:'
(q13_1 q13_2 q13_3 q13_4 q13_5  q13_99(1))
/FREQUENCIES=$mr.13.

FREQUENCIES VARIABLES= q14
  /ORDER=ANALYSIS.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q15_1_1 q15_1_2 q15_1_3 DISPLAY=LABEL
  /TABLE BY q15_1_1 [S][MEAN] + q15_1_2 [S][MEAN] + q15_1_3 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=q15_2_1 q15_2_2 q15_2_3 DISPLAY=LABEL
  /TABLE BY q15_2_1 [S][MEAN] + q15_2_2 [S][MEAN] + q15_2_3 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=q15_3_1 q15_3_2 q15_3_3 DISPLAY=LABEL
  /TABLE BY q15_3_1 [S][MEAN] + q15_3_2 [S][MEAN] + q15_3_3 [S][MEAN].


CTABLES
  /VLABELS VARIABLES=q15_4_1 q15_4_2 q15_4_3 DISPLAY=LABEL
  /TABLE BY q15_4_1 [S][MEAN] + q15_4_2 [S][MEAN] + q15_4_3 [S][MEAN].



CTABLES
  /VLABELS VARIABLES=q16_1 q16_2 q16_3 DISPLAY=LABEL
  /TABLE BY q16_1 [S][MEAN] + q16_2 [S][MEAN] + q16_3 [S][MEAN].


MULT RESPONSE GROUPS=$mr.17 'O estado regulamentou o cofinanciamento dos benefícios eventuais para os municípios'
(q17_0 q17_1 q17_2 q17_3 q17_4 (1))
/FREQUENCIES=$mr.17.



MULT RESPONSE GROUPS=$mr.18 'A CIB pactuou cofinanciamento estadual para benefícios eventuais?'
(q18_1 q18_2 q18_3 q18_4 q18_5 q18_0 (1))
/FREQUENCIES=$mr.18.


FREQUENCIES VARIABLES= q19
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr.20 ' Indique quem participa do planejamento de utilização dos recursos do IGD-PBF'
(q20_1 q20_2 q20_3 q20_4  q20_5  q20_6 q20_99 (1))
/FREQUENCIES=$mr.20.


MULT RESPONSE GROUPS=$mr.21 'dificuldades na execução dos recursos do IGD-PBF:'
(q21_1 q21_2 q21_3 q21_4 q21_5 q21_6 q21_7 q21_0 (1))
/FREQUENCIES=$mr.21.


MULT RESPONSE GROUPS=$mr.22 'recursos IGD-PBF são:'
(q22_1 q22_2 q22_3  q22_4  q22_5  q22_6    q22_7 q22_8 q22_99 (1))
/FREQUENCIES=$mr.22.


FREQUENCIES VARIABLES= q23
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q24_1_1 q24_2_1  q24_3_1   q24_1_2  q24_2_2  q24_3_2  q24_1_3  q24_2_3  q24_3_3  
q24_1_4  q24_2_4  q24_3_4   q24_1_5  q24_2_5  q24_3_5  q24_1_6  q24_2_6  q24_3_6           
    DISPLAY=LABEL
  /TABLE q24_1_1 [MEAN] + q24_2_1 [MEAN] + q24_3_1 [MEAN] 
+ q24_1_2  [MEAN] + q24_2_2 [MEAN] + q24_3_2  [MEAN] 
+ q24_1_3  [MEAN] + q24_2_3 [MEAN] + q24_3_3  [MEAN] 
+ q24_1_4  [MEAN] + q24_2_4  [MEAN] + q24_3_4  [MEAN] 
+  q24_1_5  [MEAN] + q24_2_5 [MEAN] + q24_3_5  [MEAN] 
+  q24_1_6  [MEAN] +  q24_2_6 [MEAN] +  q24_3_6   [MEAN] .


