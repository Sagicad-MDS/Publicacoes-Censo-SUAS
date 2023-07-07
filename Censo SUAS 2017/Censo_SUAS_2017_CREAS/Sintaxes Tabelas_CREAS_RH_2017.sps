* Encoding: UTF-8.
***TABELAS 2017*****.

***TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=D62_2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62.3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62.6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62.7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62.8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q62.9 D62_10 q62.10 
  /ORDER=ANALYSIS.



***BASE DO RH - ver arquivo 04_Derivadas_Tabelas_CREAS_RH******.

**** VARIÁVEIS DERIVADAS****


FREQUENCIES VARIABLES=D62_8bin1_sum D62_8bin2_sum D62_8bin3_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D62_9bin1_sum D62_9bin2_sum D62_9bin3_sum D62_9bin4_sum D62_9bin5_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D62_10bin1_sum D62_10bin2_sum D62_10bin3_sum D62_10bin4_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= nu_trabalhadores
  /ORDER=ANALYSIS.

MEANS TABLES=D62_8bin1_sum D62_8bin2_sum D62_8bin3_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D62_9bin1_sum D62_9bin2_sum D62_9bin3_sum D62_9bin4_sum D62_9bin5_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D62_10bin1_sum D62_10bin2_sum D62_10bin3_sum D62_10bin4_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.
 
MEANS TABLES=nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.







DATASET ACTIVATE DataSet2.
USE ALL.
COMPUTE filter_$=(D62_8 = 1 | D62_8 = 2).
VARIABLE LABELS filter_$ 'D62_8 = 1 | D62_8 = 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


RECODE D62_14_1bin_Gestão_sum D62_14_1bin_PAEFI_sum D62_14_1bin_MSE_sum D62_14_1bin_Abordagem_sum D62_14_1bin_Cadastramento_sum D62_14_1bin_Outros_sum (SYSMIS=0).
EXECUTE.


MULT RESPONSE GROUPS=$mrD62_14 'Principal serviço/atividade?' 
( D62_14_1bin_Gestão_sum D62_14_1bin_PAEFI_sum D62_14_1bin_MSE_sum D62_14_1bin_Abordagem_sum D62_14_1bin_Cadastramento_sum D62_14_1bin_Outros_sum(1))
 /FREQUENCIES=$mrD62_14.

FREQUENCIES VARIABLES=Gestao PAEFI MSE Abordagem Cadastramento Outros
  /ORDER=ANALYSIS.

