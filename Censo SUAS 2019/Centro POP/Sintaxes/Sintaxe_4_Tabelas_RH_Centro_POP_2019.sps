	* Encoding: UTF-8.
****Sintaxe de Tabelas.Centro.POP Censo 2019 ****


FREQUENCIES VARIABLES=  q33_3 q33_9 q33_10 q33_11 q33_12 q33_13 q33_15_1 q33_15_2 q33_15_3
  /ORDER=ANALYSIS.


**TABELAS PARA SEREM RODADAS NA BASE DADOS GERAIS e RH**

* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=d_33_9bin1  d_33_9bin2  d_33_9bin3  Regiao  DISPLAY=LABEL 
  /TABLE d_33_9bin1  [SUM] + d_33_9bin2 [SUM] + d_33_9bin3 [SUM]  BY Regiao [C] 
  /CATEGORIES VARIABLES=Regiao  ORDER=A KEY=VALUE EMPTY=INCLUDE.
    TITLE='Quantidades de trabalhadores por escolaridade e Região'.


* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=UF d_33_9bin1  d_33_9bin2  d_33_9bin3 DISPLAY=LABEL 
  /TABLE UF  BY d_33_9bin1  [SUM] + d_33_9bin2 [SUM] + d_33_9bin3 [SUM] 
  /CATEGORIES VARIABLES=UF  ORDER=A KEY=VALUE EMPTY=INCLUDE.
    TITLE='Quantidades de trabalhadores por escolaridade e UF'.

* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=UF d_33_10bin1  d_33_10bin2  d_33_10bin3  d_33_10bin4  d_33_10bin5  DISPLAY=LABEL 
  /TABLE UF [C] BY d_33_10bin1 [S][SUM] + d_33_10bin2  [S][SUM] + d_33_10bin3 [S][SUM] + d_33_10bin4  [S][SUM] +  d_33_10bin5 [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE.
    TITLE='Quantidades de trabalhadores por profissão e UF'.


* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=d_33_10bin1  d_33_10bin2  d_33_10bin3  d_33_10bin4  d_33_10bin5  Regiao DISPLAY=LABEL 
  /TABLE  d_33_10bin1 [S][SUM] + d_33_10bin2  [S][SUM] + d_33_10bin3 [S][SUM] + d_33_10bin4  [S][SUM] +  d_33_10bin5 [S][SUM]  BY Regiao 
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=INCLUDE.
 TITLE='Quantidades de trabalhadores por profissão e Região'.

* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES= d_33_11bin1  d_33_11bin2  d_33_11bin3  d_33_11bin4  Regiao DISPLAY=LABEL 
  /TABLE  d_33_11bin1  [S][SUM] + d_33_11bin2 [S][SUM] + d_33_11bin3   [S][SUM] +  d_33_11bin4 [S][SUM] BY Regiao [C] 
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
    TITLE='Quantidades de trabalhadores por tipo de vínculo e região'.


* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES= UF d_33_11bin1  d_33_11bin2  d_33_11bin3  d_33_11bin4 DISPLAY=LABEL 
  /TABLE UF BY  d_33_11bin1  [S][SUM] + d_33_11bin2 [S][SUM] + d_33_11bin3   [S][SUM] +  d_33_11bin4 [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE.
TITLE='Quantidades de trabalhadores por tipo de vínculo e UF'.





