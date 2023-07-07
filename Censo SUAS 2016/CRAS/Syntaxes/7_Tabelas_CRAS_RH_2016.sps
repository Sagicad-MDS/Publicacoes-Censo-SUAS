
**********************************************************************************************
**********************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO RH ***************
**********************************************************************************************
**********************************************************************************************

FREQUENCIES VARIABLES=Região Porte_pop2010 UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d43_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q43_3_sexo
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q43_7_esc
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=Região d43_7bin1 d43_7bin2 d43_7bin3 DISPLAY=DEFAULT
  /TABLE Região [C] BY d43_7bin1 [S][SUM] + d43_7bin2 [S][SUM] + d43_7bin3 [S][SUM]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d43_7bin1 d43_7bin2 d43_7bin3 DISPLAY=DEFAULT
  /TABLE Porte_pop2010 [C] BY d43_7bin1 [S][SUM] + d43_7bin2 [S][SUM] + d43_7bin3 [S][SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

FREQUENCIES VARIABLES=q43_8_prof
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q43_9_vinc
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=Região d43_9bin1 d43_9bin2 d43_9bin3 d43_9bin4 DISPLAY=DEFAULT
  /TABLE Região [C] BY d43_9bin1 [SUM] + d43_9bin2 [SUM] + d43_9bin3 [SUM] + d43_9bin4 [SUM]
  /CATEGORIES VARIABLES=Região [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.

CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d43_9bin1 d43_9bin2 d43_9bin3 d43_9bin4 DISPLAY=DEFAULT
  /TABLE Porte_pop2010 [C] BY d43_9bin1 [SUM] + d43_9bin2 [SUM] + d43_9bin3 [SUM] + d43_9bin4 [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


FREQUENCIES VARIABLES=q43_10_função
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q43_13_1 q43_13_2 q43_13_3
  /ORDER=ANALYSIS.
