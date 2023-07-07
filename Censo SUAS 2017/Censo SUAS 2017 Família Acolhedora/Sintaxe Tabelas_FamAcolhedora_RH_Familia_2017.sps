* Encoding: UTF-8.


*CENSO SUAS 2017*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************

FREQUENCIES VARIABLES=D28.2.FaixasEtarias
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q.28.3  q.28.9 q.28.10  q.28.11 q.28.12 q.28.13  q.28.14
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=Região Porte_pop2010 UF
  /ORDER=ANALYSIS.



DATASET ACTIVATE Conjunto_de_dados2.
FREQUENCIES VARIABLES=D28.9 D28.11
  /ORDER=ANALYSIS.


**** VARIÁVEIS DERIVADAS****

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Região D28.9bin1 D28.9bin2 D28.9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Região [C] BY D28.9bin1 [COUNT F40.0] + D28.9bin2 [COUNT F40.0] + D28.9bin3 [COUNT F40.0] + nu_trabalhadores [COUNT F40.0]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=D28.9bin1 D28.9bin2 D28.9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 D28.9bin1 D28.9bin2 D28.9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 BY D28.9bin1 [C][COUNT F40.0] + D28.9bin2 [C][COUNT F40.0] + D28.9bin3 [C][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=D28.9bin1 D28.9bin2 D28.9bin3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Região D28.10bin1_sum D28.10bin2_sum D28.10bin3_sum D28.10bin4_sum D28.10bin5_sum nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Região [C] BY D28.10bin1_sum [S][COUNT F40.0] + D28.10bin2_sum [S][COUNT F40.0] + D28.10bin3_sum [S][COUNT F40.0] + D28.10bin4_sum [S][COUNT F40.0] + D28.10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.

* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 D28.10bin1_sum D28.10bin2_sum D28.10bin3_sum D28.10bin4_sum D28.10bin5_sum nu_trabalhadores
    DISPLAY=LABEL
  /TABLE Porte_pop2010 BY D28.10bin1_sum [S][COUNT F40.0] + D28.10bin2_sum [S][COUNT F40.0] + D28.10bin3_sum [S][COUNT F40.0] + D28.10bin4_sum [S][COUNT F40.0] + D28.10bin5_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.



* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Região D28.11bin1_sum D28.11bin2_sum D28.11bin3_sum D28.11bin4_sum nu_trabalhadores DISPLAY=LABEL
  /TABLE Região BY D28.11bin1_sum [S][COUNT F40.0] + D28.11bin2_sum [S][COUNT F40.0] + D28.11bin3_sum [S][COUNT F40.0] + D28.11bin4_sum [S][COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Porte_pop2010 D28.11bin1_sum D28.11bin2_sum D28.11bin3_sum D28.11bin4_sum nu_trabalhadores DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY D28.11bin1_sum [COUNT F40.0] + D28.11bin2_sum [COUNT F40.0] + D28.11bin3_sum [COUNT F40.0] + D28.11bin4_sum [COUNT F40.0] + nu_trabalhadores [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.




