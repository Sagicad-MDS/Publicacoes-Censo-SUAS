* Encoding: UTF-8.


*CENSO SUAS 2017*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************

FREQUENCIES VARIABLES=D30.2.FaixasEtarias
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES= q.30.3  q.30.9 q.30.10  q.30.11 q.30.12 q.30.13  q.30.14
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=Região Porte_pop2010 UF
  /ORDER=ANALYSIS.



DATASET ACTIVATE Conjunto_de_dados2.
FREQUENCIES VARIABLES=D30.9 D30.11
  /ORDER=ANALYSIS.


**** VARIÁVEIS DERIVADAS****


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=Região UF D30.9bin1 D30.9bin2 D30.9bin3 nu_trabalhadores DISPLAY=LABEL
  /TABLE Região + UF BY D30.9bin1 [S][SUM] + D30.9bin2 [S][SUM] + D30.9bin3 [S][SUM] + 
    nu_trabalhadores [SUM]
  /CATEGORIES VARIABLES=Região UF ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=AFTER.
