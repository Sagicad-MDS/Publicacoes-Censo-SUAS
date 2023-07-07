* Encoding: UTF-8.

***TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=D47_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49.3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49.7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49.8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49.9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q49.10 D47_10 q49.11 
  /ORDER=ANALYSIS.


***BASE DO RH - ver arquivo 04_Derivadas_Tabelas_CREAS_RH****** 

**** VARIÁVEIS DERIVADAS****


FREQUENCIES VARIABLES=D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum D47_9bin4_sum D47_9bin5_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= nu_trabalhadores
  /ORDER=ANALYSIS.

MEANS TABLES=D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum D47_9bin4_sum D47_9bin5_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.
 
MEANS TABLES=nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.



DATASET ACTIVATE DataSet2.
USE ALL.
COMPUTE filter_$=(D47_8 = 1 | D47_8 = 2).
VARIABLE LABELS filter_$ 'D47_8 = 1 | D47_8 = 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

MULT RESPONSE GROUPS=$mrD47_14 'Principal serviço/atividade?' 
( D47_14_1bin_Gestão_sum D47_14_1bin_PAEFI_sum D47_14_1bin_MSE_sum D47_14_1bin_Abordagem_sum D47_14_1bin_Cadastramento_sum D47_14_1bin_Outros_sum(1))
 /FREQUENCIES=$mrD47_14.

FREQUENCIES VARIABLES=Gestao PAEFI MSE Abordagem Cadastramento Outros
  /ORDER=ANALYSIS.

