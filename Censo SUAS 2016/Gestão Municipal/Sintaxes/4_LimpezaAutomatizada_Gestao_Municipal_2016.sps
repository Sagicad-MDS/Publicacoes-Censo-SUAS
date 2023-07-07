*************************************************************************************************
SINTAXE LIMPEZA AUTOMATIZADA GESTÃO MUNICIPAL - CENSO SUAS 2016
*************************************************************************************************

********************************************************************************************
***** CORREÇÃO DE PULOS DOS INCOMPLETOS REGISTRADOS NA BASE
COMO "NÃO MARCADOS" (0 PARA TODOS OS ITENS DA MULT RESPONSE).

** PULO DA Q2.
DO IF Incompletos = 1 & (q2_1 = 0 & q2_2 = 0 & q2_3 = 0 & q2_4 = 0 & q2_5 = 0 & q2_6 = 0
& q2_7 = 0 & q2_99 = 0).
RECODE q2_1 q2_2 q2_3 q2_4 q2_5 q2_6 q2_7 q2_99 (0=SYSMIS).
END IF.
EXECUTE.


** IMPUTAÇÃO DOS VALORES TOTAL DE TRABALHADORES DA Q18
QUE ESTAVAM EM BRANCO.
DO IF Incompletos = 1 & MISSING(q18_total).
COMPUTE q18_total = q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99.
END IF.
EXECUTE.

** PULO DA Q23.
DO IF Incompletos = 1 & (q23_1 = 0 & q23_2 = 0 & q23_3 = 0 &
q23_4 = 0 & q23_5 = 0).
RECODE q23_1 q23_2 q23_3 q23_4 q23_5 (0=SYSMIS).
END IF.
EXECUTE.

** PULO DA Q38
(IGNORADAS Q38_2 E Q38_3 DEVIDO AO PROBLEMA NO BANCO).
DO IF Incompletos = 1 & (q38_1 = 0 & q38_4 = 0 & q38_5 = 0 &
q38_6 = 0 & q38_7 = 0 & q38_8 = 0).
RECODE q38_1 q38_4 q38_5 q38_6 q38_7 q38_8 (0=SYSMIS).
END IF.
EXECUTE.

** RESPONSÁVEL VIGILÂNCIA.
DO IF Incompletos = 1 & rep_vig_n_possui = 0.
RECODE rep_vig_n_possui (0=SYSMIS).
END IF.
EXECUTE.


******************************************************************************
***** VERIFICAÇÃO DE CRUZAMENTO DOS VALORES DA Q18
TOTAL VS SOMA DOS QUANTITATIVOS.

* BACKUP.
NUMERIC q17_5_3_original(F4).
NUMERIC q18_total_original(F4).
COMPUTE q17_5_3_original = q17_5_3.
COMPUTE q18_total_original = q18_total.
VARIABLE LABELS 
q17_5_3_original 'Original_q17_5_3_Ensino Superior - Total'
q18_total_original 'Original_q18_total_Total de trabalhadores com Ensino Superior'.
EXECUTE.

* VERIFICAÇÕES.
NUMERIC ver_q17_5_3(F4).
COMPUTE ver_q17_5_3 = q17_5_3 - (q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99).
NUMERIC ver_q18_total(F4).
COMPUTE ver_q18_total = q18_total - (q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99).
EXECUTE.
VARIABLE LABELS
ver_q17_5_3 'Verificação de Compatibilidade_q17_5_3_Ensino Superior - Total / Com o somatório dos itens da Questão 18'
ver_q18_total 'Verificação de Compatibilidade_q18_total_Total de trabalhadores com Ensino Superior / Com o somatório dos itens da Questão 18'.
FREQUENCIES ver_q17_5_3 ver_q18_total.

** CORREÇÃO DE CASOS EM QUE O Q18_TOTAL ESTAVA INCOMPATÍVEL
COM O SOMATÓRIO DOS ITENS DA Q18 E A Q17_5_3.

*CORREÇÃO.
DO IF (q17_5_3 = q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99) AND (q18_total ~= q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99).
COMPUTE q18_total = q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99.
END IF.
EXECUTE.

*RECHECAGEM.
NUMERIC chec_q17_5_3(F4).
COMPUTE chec_q17_5_3 = q17_5_3 - (q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99).
NUMERIC chec_q18_total(F4).
COMPUTE chec_q18_total = q18_total - (q18_1 + q18_2 + q18_3 + q18_4 + q18_5
 + q18_6 + q18_7 + q18_8 + q18_9 + q18_10 + q18_11 + q18_12 + q18_13
 + q18_14 + q18_15 + q18_16 + q18_99).
EXECUTE.
VARIABLE LABELS
chec_q17_5_3 'Checagem de correção_q17_5_3_Ensino Superior - Total / Com o somatório dos itens da Questão 18'
chec_q18_total 'Checagem de correção_q18_total_Total de trabalhadores com Ensino Superior / Com o somatório dos itens da Questão 18'.
FREQUENCIES chec_q17_5_3 chec_q18_total.


** MODIFICAÇÃO DA LÓGICA DA REP_VIG_N_POSSUI.
RECODE rep_vig_n_possui (SYSMIS=1) (1=0) (0=2).
VALUE LABELS rep_vig_n_possui
1'Possui representante da vigilância'
0'Não possui representante da vigilância'
2'Erro'.
EXECUTE.
