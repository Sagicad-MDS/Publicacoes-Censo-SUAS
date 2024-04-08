* Encoding: UTF-8.

****************************************************************************************************
SINTAXE TABELAS GEST�O MUNICIPAL - CENSO SUAS 2016
****************************************************************************************************

********** DADOS GERAIS.

FREQUENCIES Regiao  UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1.

MULT RESPONSE GROUPS = $mr.2 'q2.A qual secretaria a assist�ncia social est� associada?'
(q2_1 q2_2  q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (1))
/FREQUENCIES=$mr.2.

FREQUENCIES q3_1 q3_2 q3_3 q3_4 q3_5  q3_6  q3_7 q3_8  q3_9 q3_10  .

FREQUENCIES    q4  q4_97  q5  q5_97 q6  q6_99 .

MULT RESPONSE GROUPS = $mr.7_1  'q7_1.A Secretaria Estadual de Assist�ncia Social executa diretamente algum servi�o Socioassistencial: Prote��o Social B�sica '
(q7_1_1 q7_1_2 q7_1_0 (1))
/FREQUENCIES=$mr.7_1.

MULT RESPONSE GROUPS = $mr.7_2  'q7_2.A Secretaria Estadual de Assist�ncia Social executa diretamente algum servi�o Socioassistencial: Prote��o Social Especial de M�dia Complexidade '
(q7_2_1 q7_2_2 q7_2_3 q7_2_4 q7_2_5 q7_2_0 (1))
/FREQUENCIES=$mr.7_2.

MULT RESPONSE GROUPS = $mr.7_3  'q7_3.A Secretaria Estadual de Assist�ncia Social executa diretamente algum servi�o Socioassistencial: Prote��o Social Especial de Alta Complexidade '
(q7_3_1 q7_3_2 q7_3_3 q7_3_4  q7_3_0 (1))
/FREQUENCIES=$mr.7_3.

MULT RESPONSE GROUPS = $mr.8  'q8. O estado realiza diretamente oferta de Benef�cios Eventuais da assist�ncia social e quais s�o os Benef�cios Eventuais concedidos?'
 (  q8_0 q8_1 q8_2 q8_3  q8_4 (1))
/FREQUENCIES=$mr.8.



FREQUENCIES   q9  q10.


MULT RESPONSE GROUPS = $mr.12  'q12. Indique quais as a��es relativas � gest�o de benef�cios do Programa Bolsa Fam�lia (PBF) s�o desenvolvidas pela Assist�ncia Social no estado:'
 (q12_0 q12_1 q12_2  q12_3 q12_4 q12_5  q12_6  q12_7  q12_8  q12_9  q12_10  q12_11  q12_99(1))
/FREQUENCIES=$mr.12.



MULT RESPONSE GROUPS = $mr.13  'q13.dificuldades enfrentadas em rela��o � gest�o de benef�cios do PBF:'
 (q13_0 q13_1 q13_2 q13_3 q13_4  q13_5  q13_6  q13_7  q13_99 (1))
/FREQUENCIES=$mr.13.


MULT RESPONSE GROUPS = $mr.14  'q14. Em 2020, para preven��o das emerg�ncias e calamidade, a Gest�o Estadual:'
 (q14_1 q14_2  q14_3  q14_4  q14_5  q14_6  q14_7  q14_8  q14_9  q14_10  q14_99  q14_0 (1))
/FREQUENCIES=$mr.14.

FREQUENCIES q15.

MULT RESPONSE GROUPS = $mr.16  'q16. Caso oferte PAEFI de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades'
 (q16_1 q16_2  (1)) 
/FREQUENCIES=$mr.16.

FREQUENCIES q16_1_1  q16_2_1.

MULT RESPONSE GROUPS = $mr.17  'q17. Indique as a��es de apoio t�cnico e monitoramento desenvolvidas pelo Estado com os CREAS municipais regionalizado (Modelo II)'
 (q17_1 q17_2 q17_3 q17_4  q17_5  q17_6  q17_7  q17_8  q17_9  q17_99  (1))  
/FREQUENCIES=$mr.17.


FREQUENCIES q18.


MULT RESPONSE GROUPS = $mr.19  'q19. Caso oferte PAEFI de car�ter REGIONAL, como �, atualmente, a forma de execu��o destas unidades'
 (q19_1 q19_2  q19_3  q19_4  q19_5  q19_6 q19_7  q19_8  q19_9  (1)) 
/FREQUENCIES=$mr.19.


FREQUENCIES q20.


MULT RESPONSE GROUPS = $mr.21  'q21.  Quais a��es de apoio t�cnico foram ofertadas aos munic�pios em 2020?'
 (q21_1  q21_2  q21_3   q21_4  q21_5  q21_6  q21_7  q21_8  q21_9  q21_10  q21_99 (1)) 
/FREQUENCIES=$mr.21.


FREQUENCIES q23.


MULT RESPONSE GROUPS = $mr.24  'q24.  Quais a��es de apoio t�cnico foram ofertadas aos munic�pios em 2020?'
 (q24_1 q24_2 q24_3 q24_4 q24_99 (1)) 
/FREQUENCIES=$mr.24.


FREQUENCIES q25.



CTABLES
  /VLABELS VARIABLES=q26_1_1 q26_1_2 DISPLAY=LABEL
  /TABLE BY q26_1_1 [S][MEAN] + q26_1_2 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=q26_2_1   q26_2_2 DISPLAY=LABEL
  /TABLE BY q26_2_1 [S][MEAN] + q26_2_2 [S][MEAN].

 
CTABLES
  /VLABELS VARIABLES=q_26_3_1  q_26_3_2  DISPLAY=LABEL
  /TABLE BY q26_3_1 [S][MEAN] + q26_3_2 [S][MEAN].


CTABLES
  /VLABELS VARIABLES=q26_4_1  q26_4_2  DISPLAY=LABEL
  /TABLE BY q26_4_1 [S][MEAN] + q26_4_2 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=q26_5_1  q26_5_2  DISPLAY=LABEL
  /TABLE BY q26_5_1 [S][MEAN] + q26_5_2 [S][MEAN].

CTABLES
  /VLABELS VARIABLES=q26_6_1  q26_6_2  DISPLAY=LABEL
  /TABLE BY q26_6_1 [S][MEAN] + q26_6_2 [S][MEAN].


FREQUENCIES  q27  q28   q29  q30   q31  q32  q33  q34  q35.

MULT RESPONSE GROUPS = $mr.36  'q36. De que maneira as resolu��es e materiais das reuni�es da CIB s�o publicizados (tornam-se de conhecimento para a sociedade)'
 (q36_1 q36_2 q36_3  q36_4  q36_5  q36_0 (1)) 
/FREQUENCIES=$mr.36.


MULT RESPONSE GROUPS = $mr.37  'q37. a��es realizadas no �mbito da gest�o da Assist�ncia Social durante a pandemia decorrente do Coronav�rus � COVID-19.'
 (q37_0 q37_1  q37_2  q37_3  q37_4  q37_5  q37_6  q37_7  q37_8  q37_99 (1)) 
/FREQUENCIES=$mr.37.


MULT RESPONSE GROUPS = $mr.38  'q38. Com rela��o � situa��o de emerg�ncia em decorrente da Covid-19, como foi organizada a jornada de trabalho dos profissionais da gest�o estadual do SUAS'
 (q38_1  q38_2  q38_3  q38_4  q38_99 (1)) 
/FREQUENCIES=$mr.38.


FREQUENCIES  q39.



CTABLES
  /VLABELS VARIABLES= q40_1 q40_1_99   DISPLAY=DEFAULT
  /TABLE  q40_1 [C][COUNT F40.0] +   q40_1_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q40_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q40_2 q40_2_99   DISPLAY=DEFAULT
  /TABLE  q40_2 [C][COUNT F40.0] +   q40_2_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q40_2    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q40_3 q40_3_99   DISPLAY=DEFAULT
  /TABLE  q40_3 [C][COUNT F40.0] +   q40_3_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q40_3   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q40_4 q40_4_99   DISPLAY=DEFAULT
  /TABLE  q40_4 [C][COUNT F40.0] +   q40_4_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q40_4   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.




CTABLES
  /VLABELS VARIABLES= q41_1 q41_1_99   DISPLAY=DEFAULT
  /TABLE  q41_1 [C][COUNT F40.0] +   q41_1_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q41_1    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q41_2 q41_2_99   DISPLAY=DEFAULT
  /TABLE  q41_2 [C][COUNT F40.0] +   q41_2_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q41_2    ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q41_3 q41_3_99   DISPLAY=DEFAULT
  /TABLE  q41_3 [C][COUNT F40.0] +   q41_3_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q41_3   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES= q41_4 q41_4_99   DISPLAY=DEFAULT
  /TABLE  q41_4 [C][COUNT F40.0] +   q41_4_99   [S][MEAN]   
  /CATEGORIES VARIABLES=q41_4   ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


FREQUENCIES   d_42   q43 q44 q45 .



CTABLES
  /VLABELS VARIABLES=q46_1_1 q46_1_2 q46_1_3 q46_1_5 DISPLAY=LABEL
  /TABLE BY q46_1_1 [COUNT F40.0] + q46_1_2 [MEAN] + q46_1_3 [COUNT F40.0] + q46_1_5 [MEAN]
  /CATEGORIES VARIABLES=q36_1_1 q36_1_3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


CTABLES
  /VLABELS VARIABLES=q46_2_1 q46_2_2 q46_2_3 q46_2_5 DISPLAY=LABEL
  /TABLE BY q46_2_1 [COUNT F40.0] + q46_2_2 [MEAN] + q46_2_3 [COUNT F40.0] + q46_2_5 [MEAN]
  /CATEGORIES VARIABLES=q46_2_1 q46_2_3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


FREQUENCIES  q47  q48 q48_1_99  q48_2_99 q49 q50.








