	* Encoding: UTF-8.
****Sintaxe de Tabelas.Centro.POP Censo 2020 ****


FREQUENCIES VARIABLES=  q44_3 q44_9 q44_10 q44_11 q44_12 q44_13 q44_15_1 q44_15_2 q44_15_3
  /ORDER=ANALYSIS.


**TABELAS PARA SEREM RODADAS NA BASE DADOS GERAIS e RH**

* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=d_44_9bin1_sum  d_44_9bin2_sum  d_44_9bin3_sum  Região  DISPLAY=LABEL 
  /TABLE d_44_9bin1_sum  [SUM] + d_44_9bin2_sum [SUM] + d_44_9bin3_sum [SUM]  BY Região [C] 
  /CATEGORIES VARIABLES=Região  ORDER=A KEY=VALUE EMPTY=INCLUDE.
    TITLE='Quantidades de trabalhadores por escolaridade e Região'. 


* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=UF d_44_9bin1_sum  d_44_9bin2_sum  d_44_9bin3_sum DISPLAY=LABEL 
  /TABLE UF  BY d_44_9bin1_sum  [SUM] + d_44_9bin2_sum [SUM] + d_44_9bin3_sum [SUM] 
  /CATEGORIES VARIABLES=UF  ORDER=A KEY=VALUE EMPTY=INCLUDE.
    TITLE='Quantidades de trabalhadores por escolaridade e UF'.

* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=UF d_44_10bin1_sum  d_44_10bin2_sum  d_44_10bin3_sum  d_44_10bin4_sum  d_44_10bin5_sum  DISPLAY=LABEL 
  /TABLE UF [C] BY d_44_10bin1_sum [S][SUM] + d_44_10bin2_sum  [S][SUM] + d_44_10bin3_sum [S][SUM] + d_44_10bin4_sum  [S][SUM] +  d_44_10bin5_sum [S][SUM] 
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE.
    TITLE='Quantidades de trabalhadores por profissão e UF'.


* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES=d_44_10bin1_sum  d_44_10bin2_sum  d_44_10bin3_sum  d_44_10bin4_sum  d_44_10bin5_sum  Região DISPLAY=LABEL 
  /TABLE  d_44_10bin1_sum [S][SUM] + d_44_10bin2_sum  [S][SUM] + d_44_10bin3_sum [S][SUM] + d_44_10bin4_sum  [S][SUM] +  d_44_10bin5_sum [S][SUM]  BY Região 
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE.
 TITLE='Quantidades de trabalhadores por profissão e Região'.

* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES= d_44_11bin1_sum  d_44_11bin2_sum  d_44_11bin3_sum  d_44_11bin4_sum  Região DISPLAY=LABEL 
  /TABLE  d_44_11bin1_sum  [S][SUM] + d_44_11bin2_sum [S][SUM] + d_44_11bin3_sum [S][SUM] +  d_44_11bin4_sum [S][SUM] BY Região [C] 
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
    TITLE='Quantidades de trabalhadores por tipo de vínculo e região'.


* Custom Tables. 
CTABLES 
  /VLABELS VARIABLES= UF d_44_11bin1_sum  d_44_11bin2_sum  d_44_11bin3_sum  d_44_11bin4_sum DISPLAY=LABEL 
  /TABLE UF BY  d_44_11bin1_sum  [S][SUM] + d_44_11bin2_sum [S][SUM] + d_44_11bin3_sum   [S][SUM] +  d_44_11bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=INCLUDE.
TITLE='Quantidades de trabalhadores por tipo de vínculo e UF'.





