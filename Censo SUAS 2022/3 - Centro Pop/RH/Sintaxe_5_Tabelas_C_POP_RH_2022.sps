﻿* Encoding: UTF-8.


*CENSO SUAS 2021*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************


FREQUENCIES VARIABLES=Regiao  Porte_pop2010  UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= Faixas_etarias q44_3 q44_9  d44_9
  /ORDER=ANALYSIS.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2010 UF d44_9bin1   d44_9bin2   d44_9bin3 DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2010 [C] + UF [C] BY d44_9bin1 [S][SUM, COLPCT.COUNT PCT40.1] + 
    d44_9bin2 [S][SUM, COLPCT.COUNT PCT40.1] + d44_9bin3 [S][SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

FREQUENCIES VARIABLES=  q44_10 
  /ORDER=ANALYSIS.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2010 UF d44_10bin1   d44_10bin2   d44_10bin3   d44_10bin4    d44_10bin5 
    DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2010 [C] + UF [C] BY d44_10bin1 [SUM, COLPCT.COUNT PCT40.1] + 
    d44_10bin2 [SUM, COLPCT.COUNT PCT40.1] + d44_10bin3 [SUM, COLPCT.COUNT PCT40.1] + d44_10bin4 
    [SUM, COLPCT.COUNT PCT40.1] + d44_10bin5 [SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.




FREQUENCIES VARIABLES=   q44_11  d44_11
  /ORDER=ANALYSIS.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao Porte_pop2010 UF   d44_11bin1   d44_11bin2    d44_11bin3    d44_11bin4 
    DISPLAY=LABEL
  /TABLE Regiao [C] + Porte_pop2010 [C] + UF [C] BY d44_11bin1 [SUM, COLPCT.COUNT PCT40.1] + 
    d44_11bin2 [SUM, COLPCT.COUNT PCT40.1] + d44_11bin3 [SUM, COLPCT.COUNT PCT40.1] + d44_11bin4 
    [SUM, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.




FREQUENCIES VARIABLES=   q44_12 q44_13 
  /ORDER=ANALYSIS.


