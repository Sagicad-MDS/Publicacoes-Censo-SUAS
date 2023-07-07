
*** LIMPEZA DAS MÚLTIPLAS RESPOSTAS DOS INCOMPLETOS ***


******* q6 (pulo da q5)

DO IF (q6_1 = 0 & q6_2 = 0 & q6_3 = 0 & q6_4 = 0 & q6_5 = 0 & q6_6 = 0 & q6_7 = 0 & q6_8 = 0 & q6_9 
    = 0 & q6_10 = 0 & q6_99 = 0).
RECODE q6_1 q6_2 q6_3 q6_4 q6_5 q6_6 q6_7 q6_8 q6_9 q6_10 q6_99 (ELSE=SYSMIS).
END IF.
EXECUTE.

******* q7 (pulo da q5)

DO IF (q7_1 = 0 & q7_2 = 0 & q7_3 = 0 & q7_4 = 0 & q7_5 = 0 & q7_6 = 0 & q7_7 = 0 & q7_8 = 0 & q7_9 = 0 & q7_10 = 0 & q7_11 = 0 & q7_12 = 0).
RECODE q7_1 q7_2 q7_3 q7_4 q7_5 q7_6 q7_7 q7_8 q7_9 q7_10 q7_11 q7_12 (ELSE=SYSMIS).
END IF.
EXECUTE.


******* q14 - Correção nos Limites de Corte do RMA - Valores Discrepantes

compute q14_1_original = q14_1.
execute. 
compute q14_2_original = q14_2.
execute.

VARIABLE LABELS
q14_1_original'Original q14_1_A.1. Total de famílias em acompanhamento pelo PAIF em Agosto de 2015'
q14_2_original'Original q14_2_A.2. Quantidade de novas famílias inseridas em acompanhamento no PAIF durante o mês de referência de Agosto de 2015'
.
EXECUTE.

**critérios de porte A1 - acima do valor de corte apagar q14

do if ((Porte_pop2010 = 1 & q14_1_original > 750 ) |
(Porte_pop2010 = 2 & q14_1_original > 1000) | 
(Porte_pop2010 = 3 & q14_1_original > 2000) | 
(Porte_pop2010 = 4 & q14_1_original > 2000) | 
(Porte_pop2010 = 5 & q14_1_original > 2000)).
recode q14_1 q14_2
(ELSE=SYSMIS).
end if.
execute.

**critérios de porte A2 - acima do valor de corte apagar q14

do if (Porte_pop2010 = 1 & q14_2_original > 375 | 
Porte_pop2010 = 2 & q14_2_original > 500 | 
Porte_pop2010 = 3 & q14_2_original > 1000 | 
Porte_pop2010 = 4 & q14_2_original > 1000 | 
Porte_pop2010 = 5 & q14_2_original > 1000).
recode q14_1 q14_2
(ELSE=SYSMIS).
end if.
execute.

**  A2>A1 - apagar q14

do if (q14_2_original > q14_1_original).
recode q14_1 q14_2
(ELSE=SYSMIS).
end if.
execute.

**************

***** q19 - limpar 2 casos que vieram com 0 e marcaram "não sabe"

DO IF (q19_ns = 1 & NOT(MISSING(q19))).
RECODE q19 (ELSE=SYSMIS).
END IF.
EXECUTE.


****** q19_ns limpeza dos casos incompletos

DO IF (casos_incluidos = 1 & q19_ns = 0).
RECODE q19_ns (ELSE=SYSMIS).
END IF.
EXECUTE.

****** q23 limpeza dos incompletos

DO IF (casos_incluidos = 1 & q18_0 = 1 & q23_1 = 0 & q23_2 = 0 & 
q23_3 = 0 & q23_4 = 0 & q23_5 = 0 & q23_6 = 0 & q23_7 = 0 & 
q23_8 = 0 & q23_9 = 0 & q23_0 = 0).
RECODE q23_1 q23_2 q23_3 q23_4 q23_5 q23_6 q23_7 q23_8 q23_9 q23_0 (0=SYSMIS).
END IF.
EXECUTE.


****** q25 limpeza dos incompletos

DO IF (casos_incluidos = 1 & q18_0 = 1 & q25_1 = 0 & q25_2 = 0 & 
q25_3 = 0 & q25_4 = 0 & q25_99 = 0).
RECODE q25_1 q25_2 q25_3 q25_4 q25_99 (0=SYSMIS).
END IF.
EXECUTE.


****** q28 limpeza dos incompletos

DO IF (casos_incluidos = 1 & q26 = 0 & q28_1 = 0 & q28_2 = 0 & 
q28_3 = 0 & q28_4 = 0 & q28_5 = 0 & q28_6 = 0 & q28_7 = 0 & 
q28_8 = 0 & q28_99 = 0).
RECODE q28_1 q28_2 q28_3 q28_4 q28_5 q28_6 q28_7 q28_8 q28_99 (0=SYSMIS).
END IF.
EXECUTE.

****** q31 limpeza dos incompletos

DO IF (q31_1 = 0 & q31_2 = 0 & q31_3 = 0 & q31_4 = 0 & q31_5 = 0 & 
q31_6 = 0 & q31_7 = 0 & q31_8 = 0 & q31_9 = 0).
RECODE q31_1 q31_2 q31_3 q31_4 q31_5 q31_6 q31_7 q31_8 q31_9 (0=SYSMIS).
END IF.
EXECUTE.

****** q32 limpeza dos incompletos

DO IF (q32_1 = 0 & q32_2 = 0 & q32_3 = 0 & q32_4 = 0 & q32_5 = 0 & 
q32_6 = 0 & q32_0 = 0).
RECODE q32_1 q32_2 q32_3 q32_4 q32_5 q32_6 q32_0 (0=SYSMIS).
END IF.
EXECUTE.

****** q36 limpeza dos incompletos

DO IF (q36_1 = 0 & q36_2 = 0 & q36_3 = 0 & q36_4 = 0 & q36_99 = 0).
RECODE q36_1 q36_2 q36_3 q36_4 q36_99 (0=SYSMIS).
END IF.
EXECUTE.

****** q40_ns limpeza dos incompletos

DO IF (casos_incluidos = 1 & q40_ns = 0).
RECODE q40_ns (0=SYSMIS).
END IF.
EXECUTE.

****** q42 limpeza dos incompletos

DO IF (q42_1 = 0 & q42_2 = 0 & q42_3 = 0 & q42_4 = 0 & q42_5 = 0 & q42_99 = 0).
RECODE q42_1 q42_2 q42_3 q42_4 q42_5 q42_99 (0=SYSMIS).
END IF.
EXECUTE.

******* q45 limpeza dos incompletos

DO IF (q45_1 = 0 & q45_2 = 0 & q45_3 = 0 & q45_4 = 0 & q45_5 = 0 & q45_99 = 0).
RECODE q45_1 q45_2 q45_3 q45_4 q45_5 q45_99 (0=SYSMIS).
END IF.
EXECUTE.

******* q46 limpeza dos incompletos

DO IF (q46_0 = 0 & q46_1 = 0 & q46_2 = 0 & q46_3 = 0 & q46_4 = 0 & q46_5 = 0 & q46_6 = 0).
RECODE q46_0 q46_1 q46_2 q46_3 q46_4 q46_5 q46_6 (0=SYSMIS).
END IF.
EXECUTE.

********* Verificação de Articulação - q53

DATASET COPY  q53.
DATASET ACTIVATE  q53.
FILTER OFF.
USE ALL.
SELECT IF ((q53_1_1 = 0 & q53_1_2 = 0 & q53_1_3 = 0 & q53_1_4 = 0 & q53_1_5 = 0 & q53_1_6 = 0 & 
    q53_1_7 = 0 & q53_1_8 = 0 & q53_1_0 = 0 & q53_1_9 = 0) | (q53_2_1 = 0 & q53_2_2 = 0 & q53_2_3 = 0 & 
    q53_2_4 = 0 & q53_2_5 = 0 & q53_2_6 = 0 & q53_2_7 = 0 & q53_2_8 = 0 & q53_2_0 = 0 & q53_2_9 = 0) | 
    (q53_3_1 = 0 & q53_3_2 = 0 & q53_3_3 = 0 & q53_3_4 = 0 & q53_3_5 = 0 & q53_3_6 = 0 & q53_3_7 = 0 & 
    q53_3_8 = 0 & q53_3_0 = 0 & q53_3_9 = 0) | (q53_4_1 = 0 & q53_4_2 = 0 & q53_4_3 = 0 & q53_4_4 = 0 & 
    q53_4_5 = 0 & q53_4_6 = 0 & q53_4_7 = 0 & q53_4_8 = 0 & q53_4_0 = 0 & q53_4_9 = 0) | (q53_5_1 = 0 & 
    q53_5_2 = 0 & q53_5_3 = 0 & q53_5_4 = 0 & q53_5_5 = 0 & q53_5_6 = 0 & q53_5_7 = 0 & q53_5_8 = 0 & 
    q53_5_0 = 0 & q53_5_9 = 0) | (q53_6_1 = 0 & q53_6_2 = 0 & q53_6_3 = 0 & q53_6_4 = 0 & q53_6_5 = 0 & 
    q53_6_6 = 0 & q53_6_7 = 0 & q53_6_8 = 0 & q53_6_0 = 0 & q53_6_9 = 0) | (q53_7_1 = 0 & q53_7_2 = 0 & 
    q53_7_3 = 0 & q53_7_4 = 0 & q53_7_5 = 0 & q53_7_6 = 0 & q53_7_7 = 0 & q53_7_8 = 0 & q53_7_0 = 0 & 
    q53_7_9 = 0) | (q53_8_1 = 0 & q53_8_2 = 0 & q53_8_3 = 0 & q53_8_4 = 0 & q53_8_5 = 0 & q53_8_6 = 0 & 
    q53_8_7 = 0 & q53_8_8 = 0 & q53_8_0 = 0 & q53_8_9 = 0) | (q53_9_1 = 0 & q53_9_2 = 0 & q53_9_3 = 0 & 
    q53_9_4 = 0 & q53_9_5 = 0 & q53_9_6 = 0 & q53_9_7 = 0 & q53_9_8 = 0 & q53_9_0 = 0 & q53_9_9 = 0) | 
    (q53_10_1 = 0 & q53_10_2 = 0 & q53_10_3 = 0 & q53_10_4 = 0 & q53_10_5 = 0 & q53_10_6 = 0 & q53_10_7 
    = 0 & q53_10_8 = 0 & q53_10_0 = 0 & q53_10_9 = 0) | (q53_11_1 = 0 & q53_11_2 = 0 & q53_11_3 = 0 & 
    q53_11_4 = 0 & q53_11_5 = 0 & q53_11_6 = 0 & q53_11_7 = 0 & q53_11_8 = 0 & q53_11_0 = 0 & q53_11_9 
    = 0) | (q53_12_1 = 0 & q53_12_2 = 0 & q53_12_3 = 0 & q53_12_4 = 0 & q53_12_5 = 0 & q53_12_6 = 0 & 
    q53_12_7 = 0 & q53_12_8 = 0 & q53_12_0 = 0 & q53_12_9 = 0) | (q53_13_1 = 0 & q53_13_2 = 0 & 
    q53_13_3 = 0 & q53_13_4 = 0 & q53_13_5 = 0 & q53_13_6 = 0 & q53_13_7 = 0 & q53_13_8 = 0 & q53_13_0 
    = 0 & q53_13_9 = 0) | (q53_14_1 = 0 & q53_14_2 = 0 & q53_14_3 = 0 & q53_14_4 = 0 & q53_14_5 = 0 & 
    q53_14_6 = 0 & q53_14_7 = 0 & q53_14_8 = 0 & q53_14_0 = 0 & q53_14_9 = 0) | (q53_15_1 = 0 & 
    q53_15_2 = 0 & q53_15_3 = 0 & q53_15_4 = 0 & q53_15_5 = 0 & q53_15_6 = 0 & q53_15_7 = 0 & q53_15_8 
    = 0 & q53_15_0 = 0 & q53_15_9 = 0) | (q53_16_1 = 0 & q53_16_2 = 0 & q53_16_3 = 0 & q53_16_4 = 0 & 
    q53_16_5 = 0 & q53_16_6 = 0 & q53_16_7 = 0 & q53_16_8 = 0 & q53_16_0 = 0 & q53_16_9 = 0)).
EXECUTE.






