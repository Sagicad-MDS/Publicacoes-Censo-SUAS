* Encoding: UTF-8.


*CENSO SUAS 2018*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************



FREQUENCIES VARIABLES= q_30_3  d_30_2_Faixas_etarias q_30_9 q_30_10 q_30_11  q_30_12 q_30_13  d_30_9
d_30_11
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=Regiao  Porte_pop2010  UF
  /ORDER=ANALYSIS.


**** VARIÁVEIS DERIVADAS****

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_30_9bin1 d_30_9bin2 d_30_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao [C] BY d_30_9bin1 [COUNT F40.0] + d_30_9bin2 [COUNT F40.0] + d_30_9bin3 [COUNT F40.0] + nu_trabalhadores [COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_30_9bin1 d_30_9bin22 d_30_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_30_9bin1 d_30_9bin2 d_30_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_30_9bin1 [C][COUNT F40.0] + d_30_9bin2 [C][COUNT F40.0] + d_30_9bin3 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_30_9bin1  d_30_9bin2 d_30_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_30_10bin1_sum d_30_10bin2_sum d_30_10bin3_sum d_30_10bin4_sum d_30_10bin5_sum  nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Regiao [C] BY d_30_10bin1_sum [S][COUNT F40.0] + d_30_10bin2_sum [S][COUNT F40.0] + d_30_10bin3_sum [S][COUNT F40.0] + d_30_10bin4_sum [S][COUNT F40.0] + d_30_10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_30_10bin1_sum d_30_10bin2_sum d_30_10bin3_sum d_30_10bin4_sum d_30_10bin5_sum nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_30_10bin1_sum [S][COUNT F40.0] + d_30_10bin2_sum [S][COUNT F40.0] + d_30_10bin3_sum [S][COUNT F40.0] + d_30_10bin4_sum [S][COUNT F40.0] + d_30_10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_30_11bin1_sum d_30_11bin2_sum d_30_11bin3_sum d_30_11bin4_sum  nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao BY d_30_11bin1_sum [S][COUNT F40.0] + d_30_11bin2_sum [S][COUNT F40.0] + d_30_11bin3_sum [S][COUNT F40.0] + d_30_11bin4_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_30_11bin1_sum d_30_11bin2_sum d_30_11bin3_sum d_30_11bin4_sum nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d_30_11bin1_sum [COUNT F40.0] + d_30_11bin2_sum [COUNT F40.0] + d_30_11bin3_sum [COUNT F40.0] + d_30_11bin4_sum [COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




