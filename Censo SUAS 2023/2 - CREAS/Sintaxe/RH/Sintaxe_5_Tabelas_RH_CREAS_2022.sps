﻿* Encoding: UTF-8.
**Utilizar base completa RH  CRAS**



*****TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=Regiao Porte_pop2022 UF
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=  Faixas_etarias q47_3  q47_8   d_47_8
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao  Porte_pop2022   UF d_47_8bin1   d_47_8bin2   d_47_8bin3 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022  [C] + UF [C] BY d_47_8bin1 [S][SUM, COLPCT.COUNT PCT40.1] +     d_47_8bin2 [S][SUM, COLPCT.COUNT PCT40.1] + d_47_8bin3 [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022  ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


FREQUENCIES VARIABLES=   q47_9  d_47_9
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 UF d_47_9bin1   d_47_9bin2   d_47_9bin3   d_47_9bin4    d_47_9bin5 
    DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022 [C] + UF [C] BY d_47_9bin1 [SUM, COLPCT.COUNT PCT40.1] + d_47_9bin2 [SUM, COLPCT.COUNT PCT40.1] + d_47_9bin3 [SUM, COLPCT.COUNT PCT40.1] + d_47_9bin4  [SUM, COLPCT.COUNT PCT40.1] 
+ d_47_9bin5   [SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.




FREQUENCIES VARIABLES=   q47_10  d_47_10
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2022 UF  d_47_10bin1   d_47_10bin2    d_47_10bin3    d_47_10bin4
    DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2022  [C] + UF [C] BY d_47_10bin1  [SUM, COLPCT.COUNT PCT40.1] +     d_47_10bin2  [SUM, COLPCT.COUNT PCT40.1] + d_47_10bin3  [SUM, COLPCT.COUNT PCT40.1] + d_47_10bin4 [SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2022 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



FREQUENCIES VARIABLES=   q47_11   q47_12     
  /ORDER=ANALYSIS.





