* Encoding: windows-1252.


*Quantidade de unidades por Regi�o

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=Regiao Qtde_Unidades DISPLAY=LABEL
  /TABLE Regiao [C] BY Qtde_Unidades [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
DELETE VARIABLES Qtde_Unidades. 


*Quantidade de unidades por Porte

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=Porte_pop2010  Qtde_Unidades DISPLAY=LABEL
  /TABLE Porte_pop2010  [C] BY Qtde_Unidades [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Porte_pop2010  ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
DELETE VARIABLES Qtde_Unidades. 


*Quantidade de unidades por UF

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=UF Qtde_Unidades DISPLAY=LABEL
  /TABLE UF [C] BY Qtde_Unidades [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
DELETE VARIABLES Qtde_Unidades. 


* Publico

FREQUENCIES VARIABLES=q_1_1
  /ORDER=ANALYSIS.

*Regi�o

CROSSTABS
  /TABLES=q_1_1 BY Regiao
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


*Porte

CROSSTABS
  /TABLES=q_1_1 BY Porte_pop2010
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

*UF

CROSSTABS
  /TABLES=UF BY q_1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Tempo de Implanta��o (ident_15)

CROSSTABS
  /TABLES=q_1_1 BY Dtempo_2
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Tipo de Unidade (q1.2.)

CROSSTABS
  /TABLES=q_1_1 BY q_1_2
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Casa Lar em Aldeia (q2.1)

FREQUENCIES VARIABLES=q_2
  /ORDER=ANALYSIS.


MEANS TABLES=q_2_1 BY q_1_1
  /CELLS SUM MEAN MIN MAX.


*Natureza desta Unidade (q3)

CROSSTABS
  /TABLES= q_1_1  BY q_3
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Conv�nio/Termo de Parceria (q5)************************************************************************************************************

MULT RESPONSE GROUPS=$q5  'Se a Entidade possui conv�nio/termo de parceria'(q_5_1  q_5_2 q_5_3 q_5_0 q_5_99(1)) 
  /FREQUENCIES=$q5.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1 q_5_1  q_5_2  q_5_3  q_5_0  q_5_99 DISPLAY=LABEL
  /TABLE q_1_1 [C][COUNT F40.0] BY q_5_1  [C] + q_5_2  [C] + q_5_3 [C] + q_5_0 [C] + q_5_99 [C]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_5_1  [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_5_2  [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_5_3 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_5_0 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_5_99 [1] EMPTY=INCLUDE.

* Inscri��o em Conselhos (q6)

NUMERIC Qtde.Unidades (f1.0). 
Recode Qtde.Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q_1_1 q_6_1 q_6_2 q_6_3 q_6_99 q_6_0 Qtde.Unidades DISPLAY=DEFAULT
  /TABLE q_1_1 [C][COUNT F40.0] BY q_6_1 + q_6_2 + q_6_3 + q_6_99 + q_6_0
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES
  /CATEGORIES VARIABLES=q_6_1 q_6_2 q_6_3 q_6_99 q_6_0 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde.Unidades.



CROSSTABS
  /TABLES=q_1_1 BY q_7
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q_1_1 q_7 q_3 Qtde_Unidades DISPLAY=LABEL
  /TABLE q_1_1 [C] BY q_7 [C] > q_3 [C][COUNT F40.0] + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_7  q_3 ORDER=A KEY=VALUE EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades. 


* Capacidade M�xima de Atendimento (q11)

CTABLES
  /VLABELS VARIABLES=q_1_1  q_11 DISPLAY=DEFAULT
  /TABLE q_1_1  [C] BY q_11 [SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q_1_1  ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES.


* Capacidade M�xima de Atendimento segundo modalidade (q11 e q1.2)

CTABLES
  /VLABELS VARIABLES=q_1_2 q_11 DISPLAY=DEFAULT
  /TABLE q_1_2 [C] BY q_11 [SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q_1_2 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES.


* Capacidade M�xima Categorica (D11)

CROSSTABS
  /TABLES=q_1_1 BY D11
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Acolhidos (q12) 

CTABLES
  /VLABELS VARIABLES=q_1_1  q_12 DISPLAY=DEFAULT
  /TABLE q_1_1  [C] BY q_12 [SUM, MEAN, MINIMUM, MAXIMUM] 
  /CATEGORIES VARIABLES=q_1_1  ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES.

* Acolhidos categorica (D12)

CROSSTABS
  /TABLES=q_1_1 BY D12
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


* Retorno a fam�lia de origem (q13)

CTABLES
  /VLABELS VARIABLES=q_1_1 q_13_99 q_13 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_13_99 [C][COUNT F40.0] + q_13 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE  TOTAL=YES
  /CATEGORIES VARIABLES=q_13_99 [1] EMPTY=INCLUDE  TOTAL=YES.


*Reintegra��o (q14)

CTABLES
  /VLABELS VARIABLES=q_1_1 q_14_99 q_14 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_14_99 [C][COUNT F40.0] + q_14 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE  TOTAL=YES
  /CATEGORIES VARIABLES=q_14_99 [1] EMPTY=INCLUDE  TOTAL=YES.





* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1 q_15_1_11 q_15_2_11 DISPLAY=LABEL
  /TABLE q_1_1 BY q_15_1_11 [SUM] + q_15_2_11 [SUM]
  /CATEGORIES VARIABLES=q_1_1 [315, 316, 317, 318, 319, 321, 322, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER.



CTABLES
  /VLABELS VARIABLES=q_1_1 q_16_1 q_16_2 DISPLAY=DEFAULT
  /TABLE q_1_1 BY q_16_1 [SUM] + q_16_2 [SUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_16_1 q_16_2 DISPLAY=DEFAULT
  /TABLE q_1_1 BY q_16_1 [SUM] + q_16_2 [SUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


* Benefici�rios do BPC (q18) por Natureza da Unidade

CTABLES
  /VLABELS VARIABLES=q_1_1   q_3  q_16_1  q_16_2 DISPLAY=LABEL
  /TABLE q_1_1  BY q_3 > (q_16_1 [SUM] + q_16_2 [SUM])
  /CATEGORIES VARIABLES=q_1_1  q_3  ORDER=A KEY=VALUE EMPTY=INCLUDE.




CTABLES
  /VLABELS VARIABLES=q_1_1 q_17 q_17_99 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_17_99 [C][COUNT F40.0] + q_17 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_17_99 [1] EMPTY=INCLUDE.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_18 q_18_99 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_18_99 [C][COUNT F40.0] + q_18 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_18_99 [1] EMPTY=INCLUDE.


* Pessoas por dormit�rios (D16)

MEANS TABLES=q_19  BY q_1_1
  /CELLS MEAN MIN MAX.

CROSSTABS
  /TABLES=q_1_1 BY D19
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



** Encaminhadas de outro munic�pio (q17)

CTABLES
  /VLABELS VARIABLES=q_1_1 q_20 q_20_99 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_20_99 [C][COUNT F40.0] + q_20 [S][SUM, MEAN, MINIMUM, MAXIMUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_20_99 [1] EMPTY=INCLUDE.



CTABLES
  /VLABELS VARIABLES=q_1_1 q_21_1 q_21_2 q_21_3 q_21_4  q_21_5 q_21_6 q_21_7  q_21_8  
    DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_21_1  [SUM] + q_21_2  [SUM] + q_21_3 [SUM] + q_21_4 [SUM] + q_21_5  [SUM] + q_21_6 
    [SUM] + q_21_7  [SUM] + q_21_8 [SUM]   
  /CATEGORIES VARIABLES=q_1_1 EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_22_1_1 D22.1 q_22_1 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_1_1 [C][COUNT F40.0] + D22.1 [C][COUNT F40.0] + q_22_1[S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_1_1  D22.1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_22_2_1 D22.2 q_22_2 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_2_1 [C][COUNT F40.0] + D22.2 [C][COUNT F40.0] + q_22_2 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_2_1  D22.2 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_22_3_1 D22.3 q_22_3 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_3_1 [C][COUNT F40.0] + D22.3 [C][COUNT F40.0] + q_22_3 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_3_1  D22.3 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_22_4_1 D22.4 q_22_4 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_4_1 [C][COUNT F40.0] + D22.4 [C][COUNT F40.0] + q_22_4 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_4_1  D22.4 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_22_5_1 D22.5 q_22_5 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_5_1 [C][COUNT F40.0] + D22.5 [C][COUNT F40.0] + q_22_5 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_5_1  D22.5 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1 q_22_6_1 D22.6 q_22_6 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_6_1 [C][COUNT F40.0] + D22.6 [C][COUNT F40.0] + q_22_6 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_6_1  D22.6 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.



CTABLES
  /VLABELS VARIABLES=q_1_1 q_22_7_1 D22.7 q_22_7 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_7_1 [C][COUNT F40.0] + D22.7 [C][COUNT F40.0] + q_22_7 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_7_1  D22.7 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1  q_22_8_1  D22.8  q_22_8 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_8_1 [C][COUNT F40.0] + D22.8 [C][COUNT F40.0] + q_22_8 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_8_1  D22.8 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1  q_22_9_1  D22.9  q_22_9 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_9_1 [C][COUNT F40.0] + D22.9 [C][COUNT F40.0] + q_22_9 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_9_1  D22.9 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1  q_22_10_1  D22.10  q_22_10  DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_10_1 [C][COUNT F40.0] + D22.10 [C][COUNT F40.0] + q_22_10 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_10_1  D22.10 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


CTABLES
  /VLABELS VARIABLES=q_1_1  q_22_11_1  D22.11  q_22_11 DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_22_11_1 [C][COUNT F40.0] + D22.11 [C][COUNT F40.0] + q_22_11 [S][MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 q_22_11_1  D22.11 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.

CTABLES
  /VLABELS VARIABLES=q_23_1  q_23_2  q_23_3  q_23_4  q_23_5  q_23_6  q_23_7  q_23_8  q_23_9  q_23_10  q_23_16  q_23_11  q_23_12  q_23_13  q_23_14  q_23_15  q_23_0  q_1_1 
    DISPLAY=LABEL
  /TABLE q_23_1 + q_23_2 +  q_23_3 +  q_23_4  + q_23_5  + q_23_6 +  q_23_7 +  q_23_8 +  q_23_9 +  q_23_10  + q_23_16  + q_23_11 +  q_23_12 +  q_23_13 +  q_23_14 + q_23_15 +  q_23_0 BY q_1_1 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=q_23_1  q_23_2  q_23_3  q_23_4  q_23_5  q_23_6  q_23_7  q_23_8  q_23_9  q_23_10  q_23_16  q_23_11  q_23_12  q_23_13  q_23_14  q_23_15  q_23_0 [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_1_1  ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.




CROSSTABS
  /TABLES=q_1_1  BY q_24
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES=q_1_1  BY q_25
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Usa PIA (q24)

CROSSTABS
  /TABLES=q_1_1  BY q_26
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=q_1_1 BY q_27
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES=q_1_1 BY q_28
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1 D29_1  DISPLAY=LABEL
  /TABLE q_1_1 [C][COUNT F40.0] BY D29_1 
  /CATEGORIES VARIABLES=q_1_1 [315, 316, 317, 318, 319, 321, 322, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=D29_1 ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1  D29_2 DISPLAY=LABEL
  /TABLE q_1_1 [C][COUNT F40.0] BY D29_2
  /CATEGORIES VARIABLES=q_1_1 [315, 316, 317, 318, 319, 321, 322, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES= D29_2 ORDER=A KEY=VALUE EMPTY=INCLUDE.



CROSSTABS
  /TABLES=q_1_1  BY q_30
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.




CTABLES
  /VLABELS VARIABLES=q_1_1  q_31_1  q_31_2  DISPLAY=DEFAULT
  /TABLE q_1_1 [C] BY q_31_1  [C][COUNT F40.0] + q_31_2  [C][COUNT F40.0] 
  /CATEGORIES VARIABLES=q_1_1 q_31_1 q_31_2  ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.





NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q_1_1  q_32_1  q_32_2  q_32_3   q_32_98  q_32_99  q_32_0 Qtde_Unidades 
    DISPLAY=LABEL
  /TABLE q_1_1 BY q_32_1  [COUNT F40.0] + q_32_2  [COUNT F40.0] + q_32_3  [COUNT F40.0] + q_32_98  [COUNT 
    F40.0] + q_32_99  [COUNT F40.0] + q_32_0 [COUNT F40.0] + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q_1_1  ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_32_1  q_32_2  q_32_3   q_32_98  q_32_99  q_32_0 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades.  




* Tempo de acompanhamento p�s desligamento (q31)

CROSSTABS
  /TABLES=q_1_1 BY q_33
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


* Articula��o 


CTABLES
  /VLABELS VARIABLES=q_34_1_1  q_34_1_2 q_34_1_3 q_34_1_4 q_34_1_5  q_34_1_6  q_34_1_7 q_34_1_8 q_34_1_0  q_34_1_9 
    DISPLAY=LABEL
  /TABLE q_34_1_1 [COUNT F40.0] + q_34_1_2  [COUNT F40.0] + q_34_1_3  [COUNT F40.0] + q_34_1_4  [COUNT F40.0] + q_34_1_5  [COUNT F40.0] +
 q_34_1_6 [COUNT F40.0] + q_34_1_7 [COUNT F40.0] + q_34_1_8 [COUNT F40.0] + q_34_1_0 [COUNT F40.0] + q_34_1_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_1_1  q_34_1_2 q_34_1_3 q_34_1_4 q_34_1_5  q_34_1_6  q_34_1_7 q_34_1_8 q_34_1_0  q_34_1_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE= 'Conselho Tutelar'.



CTABLES
  /VLABELS VARIABLES=q_34_2_1  q_34_2_2 q_34_2_3 q_34_2_4 q_34_2_5  q_34_2_6  q_34_2_7 q_34_2_8 q_34_2_0  q_34_2_9 
    DISPLAY=LABEL
  /TABLE q_34_2_1 [COUNT F40.0] + q_34_2_2  [COUNT F40.0] + q_34_2_3  [COUNT F40.0] + q_34_2_4  [COUNT F40.0] + q_34_2_5  [COUNT F40.0] +
 q_34_2_6 [COUNT F40.0] + q_34_2_7 [COUNT F40.0] + q_34_2_8 [COUNT F40.0] + q_34_2_0 [COUNT F40.0] + q_34_2_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_2_1  q_34_2_2 q_34_2_3 q_34_2_4 q_34_2_5  q_34_2_6  q_34_2_7 q_34_2_8 q_34_2_0  q_34_2_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='CRAS'.


CTABLES
 /VLABELS VARIABLES=q_34_3_1  q_34_3_2 q_34_3_3 q_34_3_4 q_34_3_5  q_34_3_6  q_34_3_7 q_34_3_8 q_34_3_0  q_34_3_9 
    DISPLAY=LABEL
  /TABLE q_34_3_1 [COUNT F40.0] + q_34_3_2  [COUNT F40.0] + q_34_3_3  [COUNT F40.0] + q_34_3_4  [COUNT F40.0] + q_34_3_5  [COUNT F40.0] +
 q_34_3_6 [COUNT F40.0] + q_34_3_7 [COUNT F40.0] + q_34_3_8 [COUNT F40.0] + q_34_3_0 [COUNT F40.0] + q_34_3_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_3_1  q_34_3_2 q_34_3_3 q_34_3_4 q_34_3_5  q_34_3_6  q_34_3_7 q_34_3_8 q_34_3_0  q_34_3_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='CREAS'.


CTABLES
 /VLABELS VARIABLES=q_34_4_1  q_34_4_2 q_34_4_3 q_34_4_4 q_34_4_5  q_34_4_6  q_34_4_7 q_34_4_8 q_34_4_0  q_34_4_9 
    DISPLAY=LABEL
  /TABLE q_34_4_1 [COUNT F40.0] + q_34_4_2  [COUNT F40.0] + q_34_4_3  [COUNT F40.0] + q_34_4_4  [COUNT F40.0] + q_34_4_5  [COUNT F40.0] +
 q_34_4_6 [COUNT F40.0] + q_34_4_7 [COUNT F40.0] + q_34_4_8 [COUNT F40.0] + q_34_4_0 [COUNT F40.0] + q_34_4_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_4_1  q_34_4_2 q_34_4_3 q_34_4_4 q_34_4_5  q_34_4_6  q_34_4_7 q_34_4_8 q_34_4_0  q_34_4_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Centro Dia'.


CTABLES
  /VLABELS VARIABLES=q_34_5_1  q_34_5_2 q_34_5_3 q_34_5_4 q_34_5_5  q_34_5_6  q_34_5_7 q_34_5_8 q_34_5_0  q_34_5_9 
    DISPLAY=LABEL
  /TABLE q_34_5_1 [COUNT F40.0] + q_34_5_2  [COUNT F40.0] + q_34_5_3  [COUNT F40.0] + q_34_5_4  [COUNT F40.0] + q_34_5_5  [COUNT F40.0] +
 q_34_5_6 [COUNT F40.0] + q_34_5_7 [COUNT F40.0] + q_34_5_8 [COUNT F40.0] + q_34_5_0 [COUNT F40.0] + q_34_5_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_5_1  q_34_5_2 q_34_5_3 q_34_5_4 q_34_5_5  q_34_5_6  q_34_5_7 q_34_5_8 q_34_5_0  q_34_5_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Centro de Refer�ncia Especializado para Popula��o de Rua - Centro POP'.


CTABLES
 /VLABELS VARIABLES=q_34_6_1  q_34_6_2 q_34_6_3 q_34_6_4 q_34_6_5  q_34_6_6  q_34_6_7 q_34_6_8 q_34_6_0  q_34_6_9 
    DISPLAY=LABEL
  /TABLE q_34_6_1 [COUNT F40.0] + q_34_6_2  [COUNT F40.0] + q_34_6_3  [COUNT F40.0] + q_34_6_4  [COUNT F40.0] + q_34_6_5  [COUNT F40.0] +
 q_34_6_6 [COUNT F40.0] + q_34_6_7 [COUNT F40.0] + q_34_6_8 [COUNT F40.0] + q_34_6_0 [COUNT F40.0] + q_34_6_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_6_1  q_34_6_2 q_34_6_3 q_34_6_4 q_34_6_5  q_34_6_6  q_34_6_7 q_34_6_8 q_34_6_0  q_34_6_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Outras Unidades de Acolhimento'.



CTABLES
  /VLABELS VARIABLES=q_34_7_1  q_34_7_2 q_34_7_3 q_34_7_4 q_34_7_5  q_34_7_6  q_34_7_7 q_34_7_8 q_34_7_0  q_34_7_9 
    DISPLAY=LABEL
  /TABLE q_34_7_1 [COUNT F40.0] + q_34_7_2  [COUNT F40.0] + q_34_7_3  [COUNT F40.0] + q_34_7_4  [COUNT F40.0] + q_34_7_5  [COUNT F40.0] +
 q_34_7_6 [COUNT F40.0] + q_34_7_7 [COUNT F40.0] + q_34_7_8 [COUNT F40.0] + q_34_7_0 [COUNT F40.0] + q_34_7_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_7_1  q_34_7_2 q_34_7_3 q_34_7_4 q_34_7_5  q_34_7_6  q_34_7_7 q_34_7_8 q_34_7_0  q_34_7_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Unidades Educacionais'.


CTABLES
 /VLABELS VARIABLES=q_34_8_1  q_34_8_2 q_34_8_3 q_34_8_4 q_34_8_5  q_34_8_6  q_34_8_7 q_34_8_8 q_34_8_0  q_34_8_9 
    DISPLAY=LABEL
  /TABLE q_34_8_1 [COUNT F40.0] + q_34_8_2  [COUNT F40.0] + q_34_8_3  [COUNT F40.0] + q_34_8_4  [COUNT F40.0] + q_34_8_5  [COUNT F40.0] +
 q_34_8_6 [COUNT F40.0] + q_34_8_7 [COUNT F40.0] + q_34_8_8 [COUNT F40.0] + q_34_8_0 [COUNT F40.0] + q_34_8_9 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_34_8_1  q_34_8_2 q_34_8_3 q_34_8_4 q_34_8_5  q_34_8_6  q_34_8_7 q_34_8_8 q_34_8_0  q_34_8_9 [1] 
    EMPTY=INCLUDE
  /TITLES
    TITLE='Servi�os de Sa�de'.


CROSSTABS
  /TABLES=q_1_1  BY q_35
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



* Vizinhan�a (q33)

CROSSTABS
  /TABLES=q_1_1 BY q_36
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


* Transporte p�blico (q34)

CROSSTABS
  /TABLES=q_1_1 BY q_37
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


* Espa�o f�sico (q35)

CTABLES
  /VLABELS VARIABLES=q_1_1  q_38_1  q_38_2  q_38_3   q_38_4  q_38_5  q_38_6  q_38_7  q_38_8  
    DISPLAY=DEFAULT
  /TABLE q_1_1  BY q_38_1 [MEAN] + q_38_2 [MEAN] + q_38_3 [MEAN] + q_38_4  [MEAN] + q_38_5  [MEAN] + q_38_6 [MEAN] + q_38_7  [MEAN] + q_38_8 [MEAN]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE.




CTABLES
  /VLABELS VARIABLES=q_1_1   q_38_9  q_38_10   q_38_11  q_38_12  q_38_13   q_38_14  q_38_15
    DISPLAY=DEFAULT
  /TABLE q_1_1  BY q_38_9  [COUNT F40.0] + q_38_10 [COUNT F40.0] + q_38_11  [COUNT F40.0] + q_38_12 [COUNT 
    F40.0] + q_38_13  [COUNT F40.0] + q_38_14  [COUNT F40.0] + q_38_15 [COUNT F40.0]
  /CATEGORIES VARIABLES=q_1_1  ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_38_9  q_38_10   q_38_11  q_38_12  q_38_13   q_38_14  q_38_15 [1] EMPTY=INCLUDE.



* Equipamentos (q36)

CTABLES
  /VLABELS VARIABLES=q_39_1  q_39_2  q_39_3  q_39_4  q_39_5  q_39_6  q_39_7  q_39_8  q_39_9  q_39_10  q_39_11 q_39_12  q_39_13  q_39_14   q_39_15  q_39_16  q_39_17
q_39_18  q_39_19  q_39_20  q_39_21  q_39_22  q_39_23 q_1_1 
    DISPLAY=LABEL
  /TABLE q_39_1  + q_39_2  + q_39_3 + q_39_4 + q_39_5  + q_39_6  + q_39_7 + q_39_8 + q_39_9 + q_39_10 + q_39_11 + 
    q_39_12 + q_39_13  + q_39_14 + q_39_15 + q_39_16 + q_39_17 + q_39_18  + q_39_19 +  q_39_20 + q_39_21 + q_39_22 + 
     q_39_23  BY q_1_1  [COUNT F40.0]
  /CATEGORIES VARIABLES=q_39_1  q_39_2  q_39_3  q_39_4  q_39_5  q_39_6  q_39_7  q_39_8  q_39_9  q_39_10  q_39_11 q_39_12  q_39_13  q_39_14   q_39_15  q_39_16  q_39_17
q_39_18  q_39_19  q_39_20  q_39_21  q_39_22  q_39_23 [1] 
    EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



* Camas, Arm�rios, televis�es e computadores

CTABLES
  /VLABELS VARIABLES=q_1_1 q_39_20_1  q_39_21_1  q_39_22_1  q_39_23_1 DISPLAY=DEFAULT
  /TABLE q_1_1 BY  q_39_20_1  [MEAN, SUM] + q_39_21_1 [MEAN, SUM] +  q_39_22_1 [MEAN, SUM]  +  q_39_23_1 [MEAN, SUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE total=yes.


* Computadores categorizada

CROSSTABS
  /TABLES=q_1_1 BY D39_23_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



* Acessibilidade (q37)

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q_1_1 q_40_1  q_40_2   q_40_3  q_40_4 Qtde_Unidades DISPLAY=LABEL
  /TABLE q_1_1 [C] BY q_40_1  [COUNT F40.0] + q_40_2  [COUNT F40.0] + q_40_3  [COUNT F40.0] + q_40_4 [COUNT 
    F40.0] + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_40_1  q_40_2   q_40_3  q_40_4 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades. 

********acessibilidade


NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q_1_1  q_41_1 q_41_2 q_41_3 q_41_4 q_41_5 q_41_6 q_41_0  Qtde_Unidades DISPLAY=DEFAULT
  /TABLE q_1_1  BY q_41_1   [COUNT F40.0] + q_41_2  [COUNT F40.0] + q_41_3  [COUNT F40.0] + q_41_4 [COUNT F40.0]  +  q_41_5  [COUNT F40.0] + q_41_6 [COUNT F40.0]  + q_41_0 [COUNT F40.0]   + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES
  /CATEGORIES VARIABLES=q_41_1 q_41_2 q_41_3 q_41_4 q_41_5 q_41_6 q_41_0 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades.


***capacita��o*****************************************

NUMERIC Qtde_Unidades (f1.0). 
Recode Qtde_Unidades (sysmiss=1). 
CTABLES
  /VLABELS VARIABLES=q_1_1  q_42_1 q_42_2 q_42_3 q_42_4  q_42_5  q_42_6  q_42_7  q_42_8  q_42_9  q_42_10  q_42_11  q_42_12  q_42_13  q_42_14  q_42_99  q_42_0 Qtde_Unidades DISPLAY=DEFAULT
  /TABLE q_1_1  BY q_42_1    [COUNT F40.0] + q_42_2  [COUNT F40.0] + q_42_3  [COUNT F40.0] + q_42_4 [COUNT F40.0]  +  q_42_5  [COUNT F40.0] + q_42_6 [COUNT F40.0]  + q_42_7 [COUNT F40.0]    + q_42_8 [COUNT F40.0]
 + q_42_9 [COUNT F40.0]  + q_42_10 [COUNT F40.0]  + q_42_11 [COUNT F40.0]  +  q_42_12 [COUNT F40.0]  + q_42_13 [COUNT F40.0]  + q_42_14 [COUNT F40.0] + q_42_99 [COUNT F40.0]  + q_42_0 [COUNT F40.0]   + Qtde_Unidades [S][SUM]
  /CATEGORIES VARIABLES=q_1_1 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES
  /CATEGORIES VARIABLES=q_42_1 q_42_2 q_42_3 q_42_4  q_42_5  q_42_6  q_42_7  q_42_8  q_42_9  q_42_10  q_42_11  q_42_12  q_42_13  q_42_14  q_42_99  q_42_0 [1] EMPTY=INCLUDE.
DELETE VARIABLES Qtde_Unidades.



CROSSTABS
  /TABLES=q_1_1 BY q_43
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



CROSSTABS
  /TABLES=q_1_1 BY q_44
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1 Regiao nu_trabalhadores DISPLAY=LABEL
  /TABLE q_1_1 [C] BY Regiao [C] > nu_trabalhadores [S][SUM]
  /CATEGORIES VARIABLES=q_1_1 [315, 316, 317, 318, 319, 321, 322, OTHERNM] EMPTY=INCLUDE TOTAL=YES 
    POSITION=AFTER
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1 d_45_9bin1_sum d_45_9bin2_sum d_45_9bin3_sum DISPLAY=LABEL
  /TABLE q_1_1 [C] BY d_45_9bin1_sum [SUM] + d_45_9bin2_sum [SUM] + d_45_9bin3_sum [SUM]
  /CATEGORIES VARIABLES=q_1_1 [315, 316, 317, 318, 319, 321, 322, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1 d_45_10bin1_sum d_45_10bin2_sum d_45_10bin3_sum d_45_10bin4_sum d_45_10bin5_sum DISPLAY=LABEL
  /TABLE q_1_1 [C] BY d_45_10bin1_sum [SUM] + d_45_10bin2_sum [SUM] + d_45_10bin3_sum [SUM] + d_45_10bin4_sum [SUM] + d_45_10bin5_sum [SUM]
  /CATEGORIES VARIABLES=q_1_1 [315, 316, 317, 318, 319, 321, 322, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q_1_1 d_45_11bin1_sum d_45_11bin2_sum d_45_11bin3_sum d_45_11bin4_sum DISPLAY=LABEL
  /TABLE q_1_1 [C] BY d_45_11bin1_sum [SUM] + d_45_11bin2_sum [SUM] + d_45_11bin3_sum [SUM] + d_45_11bin4_sum [SUM]
  /CATEGORIES VARIABLES=q_1_1 [315, 316, 317, 318, 319, 321, 322, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.





