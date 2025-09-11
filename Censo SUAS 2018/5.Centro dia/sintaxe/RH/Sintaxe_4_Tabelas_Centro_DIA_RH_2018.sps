* Encoding: UTF-8.


*CENSO SUAS 2018*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************
***Fazer filtro para a variavel Q_municipio (1 - Municipio; 0 - Estado)

FREQUENCIES VARIABLES=Regiao  Porte_pop2010  UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= Faixas_etarias q_40_3   q_40_9  d_40_9   q_40_10  q_40_11  d_40_11  q_40_12  q_40_13 
  /ORDER=ANALYSIS.




**** VARIÁVEIS DERIVADAS****

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_40_9bin1 d_40_9bin2 d_40_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao [C] BY d_40_9bin1 [COUNT F40.0] + d_40_9bin2 [COUNT F40.0] + d_40_9bin3 [COUNT F40.0] + nu_trabalhadores [COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_40_9bin1 d_40_9bin2 d_40_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_40_9bin1 d_40_9bin2 d_40_9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_40_9bin1 [C][COUNT F40.0] + d_40_9bin2 [C][COUNT F40.0] + d_40_9bin3 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=d_40_9bin1  d_40_9bin2 d_40_9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_40_10bin1_sum d_40_10bin2_sum d_40_10bin3_sum d_40_10bin4_sum d_40_10bin5_sum  nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Regiao [C] BY d_40_10bin1_sum [S][COUNT F40.0] + d_40_10bin2_sum [S][COUNT F40.0] + d_40_10bin3_sum [S][COUNT F40.0] + d_40_10bin4_sum [S][COUNT F40.0] + d_40_10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_40_10bin1_sum d_40_10bin2_sum d_40_10bin3_sum d_40_10bin4_sum d_40_10bin5_sum nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Porte_pop2010 BY d_40_10bin1_sum [S][COUNT F40.0] + d_40_10bin2_sum [S][COUNT F40.0] + d_40_10bin3_sum [S][COUNT F40.0] + d_40_10bin4_sum [S][COUNT F40.0] + d_40_10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Regiao d_40_11bin1_sum d_40_11bin2_sum d_40_11bin3_sum d_40_11bin4_sum  nu_trabalhadores DISPLAY=LABEL
  /TABLE Regiao BY d_40_11bin1_sum [S][COUNT F40.0] + d_40_11bin2_sum [S][COUNT F40.0] + d_40_11bin3_sum [S][COUNT F40.0] + d_40_11bin4_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d_40_11bin1_sum d_40_11bin2_sum d_40_11bin3_sum d_40_11bin4_sum nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d_40_11bin1_sum [COUNT F40.0] + d_40_11bin2_sum [COUNT F40.0] + d_40_11bin3_sum [COUNT F40.0] + d_40_11bin4_sum [COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




