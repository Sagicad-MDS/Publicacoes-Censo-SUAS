* Encoding: UTF-8.


*CENSO SUAS 2018*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************


FREQUENCIES VARIABLES=Regiao  Porte_pop2010  UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= q_33_3  d_33_2_Faixas_etarias q_33_9  q_33_10  q_33_11  q_33_12 q_33_13  d_33_9
d_33_11
  /ORDER=ANALYSIS.




**** VARIÁVEIS DERIVADAS****

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_33_9bin1 d_33_9bin2 d_33_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao [C] BY d_33_9bin1 [COUNT F40.0] + d_33_9bin2 [COUNT F40.0] + d_33_9bin3 [COUNT F40.0] + nu_trabalhadores [COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_33_9bin1 d_33_9bin2 d_33_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_33_9bin1 d_33_9bin2 d_33_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_33_9bin1 [C][COUNT F40.0] + d_33_9bin2 [C][COUNT F40.0] + d_33_9bin3 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_33_9bin1  d_33_9bin2 d_33_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_33_10bin1_sum d_33_10bin2_sum d_33_10bin3_sum d_33_10bin4_sum d_33_10bin5_sum  nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Regiao [C] BY d_33_10bin1_sum [S][COUNT F40.0] + d_33_10bin2_sum [S][COUNT F40.0] + d_33_10bin3_sum [S][COUNT F40.0] + d_33_10bin4_sum [S][COUNT F40.0] + d_33_10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_33_10bin1_sum d_33_10bin2_sum d_33_10bin3_sum d_33_10bin4_sum d_33_10bin5_sum nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_33_10bin1_sum [S][COUNT F40.0] + d_33_10bin2_sum [S][COUNT F40.0] + d_33_10bin3_sum [S][COUNT F40.0] + d_33_10bin4_sum [S][COUNT F40.0] + d_33_10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_33_11bin1_sum d_33_11bin2_sum d_33_11bin3_sum d_33_11bin4_sum  nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao BY d_33_11bin1_sum [S][COUNT F40.0] + d_33_11bin2_sum [S][COUNT F40.0] + d_33_11bin3_sum [S][COUNT F40.0] + d_33_11bin4_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_33_11bin1_sum d_33_11bin2_sum d_33_11bin3_sum d_33_11bin4_sum nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d_33_11bin1_sum [COUNT F40.0] + d_33_11bin2_sum [COUNT F40.0] + d_33_11bin3_sum [COUNT F40.0] + d_33_11bin4_sum [COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




