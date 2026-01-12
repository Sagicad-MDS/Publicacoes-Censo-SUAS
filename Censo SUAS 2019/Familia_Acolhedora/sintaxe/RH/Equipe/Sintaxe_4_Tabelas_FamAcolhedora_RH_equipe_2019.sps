* Encoding: UTF-8.


*CENSO SUAS 2019*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************
*****Filtar Estado (1-Estadual; 2-Municipal)

FREQUENCIES VARIABLES=Regiao  Porte_pop2010  UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= q33_3  d_33_2_Faixas_etarias q33_9  q33_10  q33_11  q33_12 q33_13  d_33_9
d_33_11
  /ORDER=ANALYSIS.




**** VARIÁVEIS DERIVADAS****

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d_33_9bin1 d_33_9bin2 d_33_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao BY d_33_9bin1 [C][COUNT F40.0] + d_33_9bin2 [C][COUNT F40.0] + d_33_9bin3 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_33_9bin1  d_33_9bin2 d_33_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_33_9bin1 d_33_9bin2 d_33_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_33_9bin1 [C][COUNT F40.0] + d_33_9bin2 [C][COUNT F40.0] + d_33_9bin3 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_33_9bin1  d_33_9bin2 d_33_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d_33_10bin1 d_33_10bin2 d_33_10bin3 d_33_10bin4 d_33_10_5 nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao BY d_33_10bin1 [C][COUNT F40.0] + d_33_10bin2 [C][COUNT F40.0] + d_33_10bin3 [C][COUNT F40.0] +  d_33_10bin4 [C][COUNT F40.0] + d_33_10bin5 [C][COUNT F40.0]  + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_33_10bin1 d_33_10bin2 d_33_10bin3 d_33_10bin4 d_33_10bin5  ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010  d_33_10bin1 d_33_10bin2 d_33_10bin3 d_33_10bin4 d_33_10_5 nu_trabalhadores     DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_33_10bin1 [C][COUNT F40.0] + d_33_10bin2 [C][COUNT F40.0] + d_33_10bin3 [C][COUNT F40.0] + d_33_10bin4 [C][COUNT F40.0] + d_33_10bin5 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES=d_33_10bin1  d_33_10bin2  d_33_10bin3  d_33_10bin4  d_33_10bin5  ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d_33_11bin1 d_33_11bin2 d_33_10bin3 d_33_11bin4  nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao BY d_33_11bin1 [C][COUNT F40.0] + d_33_11bin2 [C][COUNT F40.0] + d_33_11bin3 [C][COUNT F40.0] +  d_33_11bin4 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_33_11bin1 d_33_11bin2 d_33_11bin3 d_33_11bin4  ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010  d_33_11bin1 d_33_11bin2 d_33_10bin3 d_33_11bin4  nu_trabalhadores     DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_33_11bin1 [C][COUNT F40.0] + d_33_11bin2 [C][COUNT F40.0] + d_33_11bin3 [C][COUNT F40.0] +  d_33_11bin4 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES=d_33_11bin1 d_33_11bin2 d_33_11bin3 d_33_11bin4  ORDER=A KEY=VALUE EMPTY=INCLUDE.
