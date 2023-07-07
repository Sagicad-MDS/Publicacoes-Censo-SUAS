*****************************************Syntax Limpeza **************************************************
***Conselho 2015 **********************************



****Limpeza inconsistência dos valores  q44

RECODE q44 (ELSE=Copy) INTO q44_VELHA.
VARIABLE LABELS  q44_VELHA 'q44_Velha'.
EXECUTE.

**Jussara/GO, IBGE 521220, respondeu que havia 2007 entidades no município. Foi limpo manualmente, apenas esse caso.
*Alguns municípios PPI e II informaram ter mais de 100 entidades. Estes valores não foram limpos, pois batem com o informado no ano anterior.



****Limpeza inconsistência dos pulos  q47 (e q48a a q48e) e q49 (e q50) _ incompletos ************

**q47***


DO IF (Incompletos = 1 & q47 = 0).
RECODE q48a (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q47 = 0).
RECODE q48b (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q47 = 0).
RECODE q48c (0=SYSMIS).
END IF.
EXECUTE.


DO IF (Incompletos = 1 & q47 = 0).
RECODE q48d (0=SYSMIS).
END IF.
EXECUTE.


DO IF (Incompletos = 1 & q47 = 0).
RECODE q48e (0=SYSMIS).
END IF.
EXECUTE.


***q49*****

***criando a cópia da variável velha***

RECODE q50a (ELSE=Copy) INTO q50a_VELHA.
VARIABLE LABELS  q50a_VELHA 'q50a_Velha'.
EXECUTE.

RECODE q50b (ELSE=Copy) INTO q50b_VELHA.
VARIABLE LABELS  q50b_VELHA 'q50b_Velha'.
EXECUTE.

RECODE q50c (ELSE=Copy) INTO q50c_VELHA.
VARIABLE LABELS  q50c_VELHA 'q50c_Velha'.
EXECUTE.

RECODE q50d (ELSE=Copy) INTO q50d_VELHA.
VARIABLE LABELS  q50d_VELHA 'q50d_Velha'.
EXECUTE.

RECODE q50e (ELSE=Copy) INTO q50e_VELHA.
VARIABLE LABELS  q50e_VELHA 'q50e_Velha'.
EXECUTE.



**Limpeza ****

DO IF (Incompletos = 1 & q49 = 0).
RECODE q50a (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q49 = 0).
RECODE q50b (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q49 = 0).
RECODE q50c (0=SYSMIS).
END IF.
EXECUTE.


DO IF (Incompletos = 1 & q49 = 0).
RECODE q50d (0=SYSMIS).
END IF.
EXECUTE.


DO IF (Incompletos = 1 & q49 = 0).
RECODE q50e (0=SYSMIS).
END IF.
EXECUTE.


***************************************************************************************
**********************Limpeza inconsistência q56  *******************************
***************************************************************************************

*Detecção da inconsistência (Se marcou sim na 56c, não poderia ter marcado sim na 56a ou 56b)


IF  (q56c = 1 & (q56a = 1 | q56b = 1)) LIMP_inconsist_q56=1.
EXECUTE.


***criando a cópia da variável velha***


RECODE q56a (ELSE=Copy) INTO q56a_VELHA.
VARIABLE LABELS  q56a_VELHA 'q56a_Velha'.
EXECUTE.

RECODE q56b (ELSE=Copy) INTO q56b_VELHA.
VARIABLE LABELS  q56b_VELHA 'q56b_Velha'.
EXECUTE.

RECODE q56c (ELSE=Copy) INTO q56c_VELHA.
VARIABLE LABELS  q56c_VELHA 'q56c_Velha'.
EXECUTE.

*****

*Se o conselho possui conselheiro usuário, a q56c foi recodificada para "Não"

IF  (LIMP_inconsist_q56=1 AND D63_5bin1_sum >=1) q56c=0.
EXECUTE.


*Se o conselho NÂO possui conselheiro usuário, a q56b foi recodificada para "Não"

IF  (LIMP_inconsist_q56=1 AND D63_5bin1_sum =0) q56b=0.
EXECUTE.




************Limpeza inconsistência na q59 e q 60 ( incompletos)


***criando a cópia da variável velha***


RECODE q60a (ELSE=Copy) INTO q60a_VELHA.
VARIABLE LABELS  q60a_VELHA 'q60a_Velha'.
EXECUTE.

RECODE q60b (ELSE=Copy) INTO q60b_VELHA.
VARIABLE LABELS  q60b_VELHA 'q60b_Velha'.
EXECUTE.

RECODE q60c (ELSE=Copy) INTO q60c_VELHA.
VARIABLE LABELS  q60c_VELHA 'q60c_Velha'.
EXECUTE.

RECODE q60d (ELSE=Copy) INTO q60d_VELHA.
VARIABLE LABELS  q60d_VELHA 'q60d_Velha'.
EXECUTE.

RECODE q60e (ELSE=Copy) INTO q60e_VELHA.
VARIABLE LABELS  q60e_VELHA 'q60e_Velha'.
EXECUTE.


RECODE q60f (ELSE=Copy) INTO q60f_VELHA.
VARIABLE LABELS  q60f_VELHA 'q60f_Velha'.
EXECUTE.

RECODE q60g (ELSE=Copy) INTO q60g_VELHA.
VARIABLE LABELS  q60g_VELHA 'q60g_Velha'.
EXECUTE.


RECODE q60h (ELSE=Copy) INTO q60h_VELHA.
VARIABLE LABELS  q60h_VELHA 'q60h_Velha'.
EXECUTE.

RECODE q60i (ELSE=Copy) INTO q60i_VELHA.
VARIABLE LABELS  q60i_VELHA 'q60i_Velha'.
EXECUTE.



**Limpeza ****

DO IF (Incompletos = 1 & q59 = 0).
RECODE q60a (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q59 = 0).
RECODE q60b (0=SYSMIS).
END IF.
EXECUTE.


DO IF (Incompletos = 1 & q59 = 0).
RECODE q60c (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q59 = 0).
RECODE q60d (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q59 = 0).
RECODE q60e (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q59 = 0).
RECODE q60f (0=SYSMIS).
END IF.
EXECUTE.


DO IF (Incompletos = 1 & q59 = 0).
RECODE q60g (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q59 = 0).
RECODE q60h (0=SYSMIS).
END IF.
EXECUTE.

DO IF (Incompletos = 1 & q59 = 0).
RECODE q60i (0=SYSMIS).
END IF.
EXECUTE.



