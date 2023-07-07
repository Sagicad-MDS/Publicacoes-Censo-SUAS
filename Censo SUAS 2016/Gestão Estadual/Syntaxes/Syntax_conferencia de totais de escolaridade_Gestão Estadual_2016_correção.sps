

*conferindo os valores e totais das variáveis de escolaridade dos funcionários Estatutários - Ensino Fundamental/Médio/Superior - Sede

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q8_1_4 = q8_1_1 + q8_1_2 + q8_1_3).
VARIABLE LABELS filter_$ 'q8_1_4 = q8_1_1 + q8_1_2 + q8_1_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Celetistas - Ensino Fundamental/Médio/Superior - Sede

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q8_2_4 = q8_2_1 + q8_2_2 + q8_2_3).
VARIABLE LABELS filter_$ 'q8_2_4 = q8_2_1 + q8_2_2 + q8_2_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Somente Comissionados - Ensino Fundamental/Médio/Superior - Sede

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q8_3_4 = q8_3_1 + q8_3_2 + q8_3_3).
VARIABLE LABELS filter_$ 'q8_3_4 = q8_3_1 + q8_3_2 + q8_3_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Outros Vínculos - Ensino Fundamental/Médio/Superior - Sede

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q8_4_4 = q8_4_1 + q8_4_2 + q8_4_3).
VARIABLE LABELS filter_$ 'q8_4_4 = q8_4_1 + q8_4_2 + q8_4_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Total - Ensino Fundamental/Médio/Superior - Sede

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q8_5_4 = q8_4_4 + q8_3_4 + q8_2_4 + q8_1_4).
VARIABLE LABELS filter_$ 'q8_5_4 = q8_5_1 + q8_5_2 + q8_5_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.



*conferindo os valores e totais das variáveis de escolaridade dos funcionários Estatutários - Ensino Fundamental/Médio/Superior - Total da Secretaria Estadual de Assistencia

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q9_1_4 = q9_1_1 + q9_1_2 + q9_1_3).
VARIABLE LABELS filter_$ 'q9_1_4 = q9_1_1 + q9_1_2 + q9_1_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Celetistas - Ensino Fundamental/Médio/Superior - Total da Secretaria Estadual de Assistencia

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q9_2_4 = q9_2_1 + q9_2_2 + q9_2_3).
VARIABLE LABELS filter_$ 'q9_2_4 = q9_2_1 + q9_2_2 + q9_2_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Somente Comissionados - Total da Secretaria Estadual de Assistencia

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q9_3_4 = q9_3_1 + q9_3_2 + q9_3_3).
VARIABLE LABELS filter_$ 'q9_3_4 = q9_3_1 + q9_3_2 + q9_3_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Outros Vínculos - Ensino Fundamental/Médio/Superior - Total da Secretaria Estadual de Assistencia

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q9_4_4 = q9_4_1 + q9_4_2 + q9_4_3).
VARIABLE LABELS filter_$ 'q9_4_4 = q9_4_1 + q9_4_2 + q9_4_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


*conferindo os valores e totais das variáveis de escolaridade dos funcionários Total - Ensino Fundamental/Médio/Superior - Total da Secretaria Estadual de Assistencia

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q9_5_4 = q9_4_4 + q9_3_4 + q9_2_4 + q9_1_4).
VARIABLE LABELS filter_$ 'q9_5_4 = q9_5_1 + q9_5_2 + q9_5_3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.



*conferindo os valores e totais das variáveis de profissionais de ensino superior - q10_18_Total de trabalhadores de Ensino Superior

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q10_18 = q10_1 + q10_2 + q10_3 + q10_4 + q10_5 + q10_6 + q10_7 + q10_8 + q10_9 + q10_10 + q10_11 + q10_12 + q10_13 + q10_14 + q10_15 + q10_16 + q10_17).
VARIABLE LABELS filter_$ 'q10_18 = q10_1 + q10_2 + q10_3 + q10_4 + q10_5 + q10_6 + q10_7 + q10_8 + q10_9 + q10_10 + q10_11 + q10_12 + q10_13 + q10_14 + q10_15 + q10_16 + q10_17 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.



*conferindo os valores e totais das variáveis de Profissionais exclusivos da Vigilância Ensino Médio/Superior - Total

DATASET ACTIVATE Conjunto_de_dados1.
USE ALL.
COMPUTE filter_$=(q13_3 = q13_1 + q13_2).
VARIABLE LABELS filter_$ 'q13_3 = q13_1 + q13_2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.






