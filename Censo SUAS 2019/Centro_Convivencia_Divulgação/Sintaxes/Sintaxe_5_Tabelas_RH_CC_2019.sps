* Encoding: UTF-8.


*CENSO SUAS 2018*
****************************************************************************
***** TABELAS PARA SEREM RODADAS NA BASE DO RH ****
*****************************************************************************
***Fazer filtro para a variavel Q_municipio (1 - Municipio; 0 - Estado)

FREQUENCIES VARIABLES=Regiao  Porte_pop2010  UF
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= Faixas_etarias q31_3   q31_9  d_31_9   q31_10  q31_11  d_31_11  q31_12  q31_13 
  /ORDER=ANALYSIS.



