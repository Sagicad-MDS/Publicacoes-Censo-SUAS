* Encoding: UTF-8.


*CENSO SUAS 2023*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************
*****Filtarq7 (1-Estadual; 2-Municipal)

FREQUENCIES VARIABLES=Regiao  Porte_pop2022  UF
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q48_3 d48_2_Faixas_etarias  q48_9 q48_10 q48_11 q48_12 
  /ORDER=ANALYSIS.




**** VARIÁVEIS DERIVADAS****d48_9bin1 nu_familias_acolhedoras UF

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d48_9bin1  d48_9bin2 d48_9bin3  nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE Regiao BY d48_9bin1 [C][COUNT F40.0] + d48_9bin2 [C][COUNT F40.0] + d48_9bin3 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d48_9bin1  d48_9bin2 d48_9bin3  ORDER=A KEY=VALUE EMPTY=INCLUDE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES= Porte_pop2022  d48_9bin1  d48_9bin2 d48_9bin3 nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE Porte_pop2022 BY d48_9bin1 [C][COUNT F40.0] + d48_9bin2 [C][COUNT F40.0] + d48_9bin3 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES= Porte_pop2022  ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d48_9bin1  d48_9bin2 d48_9bin3   ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF d48_9bin1  d48_9bin2 d48_9bin3 nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE UF BY d48_9bin1 [C][COUNT F40.0] + d48_9bin2 [C][COUNT F40.0] + d48_9bin3 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d48_9bin1  d48_9bin2 d48_9bin3   ORDER=A KEY=VALUE EMPTY=INCLUDE.






* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d48_10bin1  d48_10bin2 d48_10bin3    d48_10bin4  d48_10bin5   nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE Regiao BY d48_10bin1 [C][COUNT F40.0] + d48_10bin2 [C][COUNT F40.0] + d48_10bin3 [C][COUNT F40.0] +  d48_10bin4 [C][COUNT F40.0] + d48_10bin5 [C][COUNT F40.0]  +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d48_10bin1  d48_10bin2 d48_10bin3    d48_10bin4  d48_10bin5     ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES= Porte_pop2022   d48_10bin1  d48_10bin2 d48_10bin3    d48_10bin4  d48_10bin5   nu_familias_acolhedoras  DISPLAY=LABEL
  /TABLE Porte_pop2022 BY  d48_10bin1 [C][COUNT F40.0] +  d48_10bin2 [C][COUNT F40.0] +  d48_10bin3 [C][COUNT F40.0] +  d48_10bin4 [C][COUNT F40.0] +  d48_10bin5 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES= Porte_pop2022  ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES= d48_10bin1  d48_10bin2 d48_10bin3    d48_10bin4  d48_10bin5    ORDER=A KEY=VALUE EMPTY=INCLUDE.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF   d48_10bin1  d48_10bin2 d48_10bin3    d48_10bin4  d48_10bin5    nu_familias_acolhedoras  DISPLAY=LABEL
  /TABLE UF BY  d48_10bin1 [C][COUNT F40.0] +  d48_10bin2 [C][COUNT F40.0] + d48_10bin3 [C][COUNT F40.0] +  d48_10bin4 [C][COUNT F40.0] +  d48_10bin5 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES= d48_10bin1  d48_10bin2 d48_10bin3    d48_10bin4  d48_10bin5    ORDER=A KEY=VALUE EMPTY=INCLUDE.







* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao  d48_11bin1  d48_11bin2 d48_11bin3  d48_11bin4  nu_familias_acolhedoras  DISPLAY=LABEL
  /TABLE Regiao BY d48_11bin1 [C][COUNT F40.0] + d48_11bin2 [C][COUNT F40.0] + d48_11bin3 [C][COUNT F40.0] +  d48_11bin4 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d48_11bin1  d48_11bin2 d48_11bin3  d48_11bin4    ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES= Porte_pop2022  d48_11bin1  d48_11bin2 d48_11bin3  d48_11bin4   nu_familias_acolhedoras     DISPLAY=LABEL
  /TABLE Porte_pop2022  BY d48_11bin1 [C][COUNT F40.0] + d48_11bin2 [C][COUNT F40.0] + d48_11bin3 [C][COUNT F40.0] +  d48_11bin4 [C][COUNT F40.0] + nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES= Porte_pop2022 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER  
/CATEGORIES VARIABLES=d48_11bin1  d48_11bin2 d48_11bin3  d48_11bin4    ORDER=A KEY=VALUE EMPTY=INCLUDE.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=UF  d48_11bin1  d48_11bin2 d48_11bin3  d48_11bin4   nu_familias_acolhedoras DISPLAY=LABEL
  /TABLE UF BY d48_11bin1 [C][COUNT F40.0] + d48_11bin2 [C][COUNT F40.0] + d48_11bin3 [C][COUNT F40.0] +  d48_11bin4 [C][COUNT F40.0] +  nu_familias_acolhedoras [S][COUNT F40.0]
  /CATEGORIES VARIABLES=UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d48_11bin1  d48_11bin2 d48_11bin3  d48_11bin4    ORDER=A KEY=VALUE EMPTY=INCLUDE.



