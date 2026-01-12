* Encoding: UTF-8.


*CENSO SUAS 2022*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************
*****Filtar Estadual (1-Estadual; 2-Municipal)

FREQUENCIES VARIABLES=Regiao  Porte_pop2010  UF
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q37_3 d_30_2_Faixas_etarias  q37_9 q37_10 q37_11 q37_12 
  /ORDER=ANALYSIS.




**** VARIÁVEIS DERIVADAS****d37_9bin1 nu_familias_acolhedoras UF

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d37_9bin1  d37_9bin2 d37_9bin3  nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE Regiao BY d37_9bin1 [C][COUNT F40.0] + d37_9bin2 [C][COUNT F40.0] + d37_9bin3 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d37_9bin1  d37_9bin2d37_9bin3  ORDER=A KEY=VALUE EMPTY=INCLUDE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d37_9bin1  d37_9bin2 d37_9bin3 nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d37_9bin1 [C][COUNT F40.0] + d37_9bin2 [C][COUNT F40.0] + d37_9bin3 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d37_9bin1  d37_9bin2 d37_9bin3   ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF d37_9bin1  d37_9bin2 d37_9bin3 nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE UF BY d37_9bin1 [C][COUNT F40.0] + d37_9bin2 [C][COUNT F40.0] + d37_9bin3 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d37_9bin1  d37_9bin2 d37_9bin3   ORDER=A KEY=VALUE EMPTY=INCLUDE.






* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d37_10bin1  d37_10bin2 d37_10bin3    d37_10bin4  d37_10bin5   nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE Regiao BY d37_10bin1 [C][COUNT F40.0] + d37_10bin2 [C][COUNT F40.0] + d37_10bin3 [C][COUNT F40.0] +  d37_10bin4 [C][COUNT F40.0] + d37_10bin5 [C][COUNT F40.0]  +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d37_10bin1  d37_10bin2 d37_10bin3    d37_10bin4  d37_10bin5     ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010   d37_10bin1  d37_10bin2 d37_10bin3    d37_10bin4  d37_10bin5   nu_familias_acolhedoras  DISPLAY=LABEL
  /TABLE Porte_pop2010 BY  d37_10bin1 [C][COUNT F40.0] +  d37_10bin2 [C][COUNT F40.0] +  d37_10bin3 [C][COUNT F40.0] +  d37_10bin4 [C][COUNT F40.0] +  d37_10bin5 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES= d37_10bin1  d37_10bin2 d37_10bin3    d37_10bin4  d37_10bin5    ORDER=A KEY=VALUE EMPTY=INCLUDE.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF   d37_10bin1  d37_10bin2 d37_10bin3    d37_10bin4  d37_10bin5    nu_familias_acolhedoras  DISPLAY=LABEL
  /TABLE UF BY  d37_10bin1 [C][COUNT F40.0] +  d37_10bin2 [C][COUNT F40.0] + d37_10bin3 [C][COUNT F40.0] +  d37_10bin4 [C][COUNT F40.0] +  d37_10bin5 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES= d37_10bin1  d37_10bin2 d37_10bin3    d37_10bin4  d37_10bin5    ORDER=A KEY=VALUE EMPTY=INCLUDE.







* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d37_11bin1  d37_11bin2 d37_11bin3  d37_11bin4  nu_familias_acolhedoras  DISPLAY=LABEL
  /TABLE Regiao BY d37_11bin1 [C][COUNT F40.0] + d37_11bin2 [C][COUNT F40.0] + d37_11bin3 [C][COUNT F40.0] +  d37_11bin4 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d37_11bin1  d37_11bin2 d37_11bin3  d37_11bin4    ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010  d37_11bin1  d37_11bin2 d37_11bin3  d37_11bin4   nu_familias_acolhedoras     DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d37_11bin1 [C][COUNT F40.0] + d37_11bin2 [C][COUNT F40.0] + d37_11bin3 [C][COUNT F40.0] +  d37_11bin4 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES=d37_11bin1  d37_11bin2 d37_11bin3  d37_11bin4    ORDER=A KEY=VALUE EMPTY=INCLUDE.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF  d37_11bin1  d37_11bin2 d37_11bin3  d37_11bin4   nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE UF BY d37_11bin1 [C][COUNT F40.0] + d37_11bin2 [C][COUNT F40.0] + d37_11bin3 [C][COUNT F40.0] +  d37_11bin4 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d37_11bin1  d37_11bin2 d37_11bin3  d37_11bin4    ORDER=A KEY=VALUE EMPTY=INCLUDE.



