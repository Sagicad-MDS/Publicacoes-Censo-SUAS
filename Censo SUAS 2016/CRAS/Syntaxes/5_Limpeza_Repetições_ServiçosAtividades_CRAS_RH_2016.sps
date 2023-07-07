**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR RESPOSTAS REPETIDAS DA QUESTÃO Q55_12 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************* VERIFICAÇÃO DE NÃO PREENCHIMENTO DA q43_13_1 ***********

IF  (MISSING(q43_13_1) &
NOT (q43_7_esc=251 | q43_7_esc = 252 | q43_7_esc = 253 | q43_7_esc = 254)) q43_13_verif=1.
EXECUTE.

IF  (MISSING(q43_13_1) & 
(q43_7_esc=251 | q43_7_esc = 252 | q43_7_esc = 253 | q43_7_esc = 254)) q43_13_verif=2.
EXECUTE.

IF  (NOT MISSING(q43_13_1) & 
(q43_7_esc=251 | q43_7_esc = 252 | q43_7_esc = 253 | q43_7_esc = 254)) q43_13_verif=3.
EXECUTE.

VARIABLE LABELS q43_13_verif'Verificação de preenchimento - Principal Serviço/Atividade'.
EXECUTE.

VALUE LABELS 
/q43_13_verif
1'Não preencheu questão obrigatória'
2'Sem escolaridade mínima para preenchimento'
3'Preencheu sem a escolaridade mínima'.
EXECUTE.

**********************************Limpeza da redundância nas variáveis q43_13_1, q43_13_2 e q43_13_3  ****************************************
*As variáveis q43_13_1, q43_13_2 e q43_13_3 deveriam expressar o principal, segundo e terceiro serviço ao qual o trabalhador de nível médio ou superior estava vinculado.
*Em alguns casos, o serviço descrito na principal atividade foi repetido nas seguintes. A syntax abaixo converte os valores repetidos em missing ****************************
*******************************************


*** BACKUP Var q43_13 Original (Atividades)

COMPUTE q43_13_1_original = q43_13_1.
VARIABLE LABELS q43_13_1_original 'Original - q43_13_1_Serviços/Atividade a qual o profissional está vinculado - Principal serviço/atividade'.
VALUE LABELS 
/q43_13_1_original
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Integral à Família (PAIF)"
3    "Serviço de Convivência e Fortalecimento de Vínculos"
4    "Cadastramento e/ou Atualização Cadastral (CadÚnico)"
99   "Outros".
EXECUTE.

COMPUTE q43_13_2_original = q43_13_2.
VARIABLE LABELS q43_13_2_original 'Original - q43_13_2_Serviços/Atividade a qual o profissional está vinculado - Segundo principal serviço/atividade'.
VALUE LABELS 
/q43_13_2_original
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Integral à Família (PAIF)"
3    "Serviço de Convivência e Fortalecimento de Vínculos"
4    "Cadastramento e/ou Atualização Cadastral (CadÚnico)"
99   "Outros".
EXECUTE.

COMPUTE q43_13_3_original = q43_13_3.
VARIABLE LABELS q43_13_3_original 'Original - q43_13_3_Serviços/Atividade a qual o profissional está vinculado - Terceiro principal serviço/atividade'.
VALUE LABELS 
/q43_13_3_original
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Integral à Família (PAIF)"
3    "Serviço de Convivência e Fortalecimento de Vínculos"
4    "Cadastramento e/ou Atualização Cadastral (CadÚnico)"
99   "Outros".
EXECUTE.


*** APAGAR DADOS DA q43_13 DE TRABALHADORES SEM ESCOLARIDADE MÍNIMA (MÉDIO COMPLETO)

DO IF (q43_13_verif=3).
RECODE q43_13_1 q43_13_2 q43_13_3 (ELSE=SYSMIS).
END IF.
EXECUTE.


***** LIMPEZA DE q43_13_2 e q43_13_3 SE AS 3 RESPOSTAS FOREM IGUAIS *****

** as 3 iguais > limpar 2ª e 3ª

DO IF (q43_13_1_original = 1 & q43_13_2_original = 1 & q43_13_3_original = 1).
RECODE q43_13_2 q43_13_3 (1=SYSMIS).
END IF.

DO IF (q43_13_1_original = 2 & q43_13_2_original = 2 & q43_13_3_original = 2).
RECODE q43_13_2 q43_13_3 (2=SYSMIS).
END IF.

DO IF (q43_13_1_original = 3 & q43_13_2_original = 3 & q43_13_3_original = 3).
RECODE q43_13_2 q43_13_3 (3=SYSMIS).
END IF.

DO IF (q43_13_1_original = 4 & q43_13_2_original = 4 & q43_13_3_original = 4).
RECODE q43_13_2 q43_13_3 (4=SYSMIS).
END IF.

DO IF (q43_13_1_original = 99 & q43_13_2_original = 99 & q43_13_3_original = 99).
RECODE q43_13_2 q43_13_3 (99=SYSMIS).
END IF.

EXECUTE.

******** LIMPEZA DE q43_13 SE 2 FOREM IGUAIS ********

** 1ª e 3ª iguais > limpar 3ª

DO IF (q43_13_1_original = 1 & q43_13_3_original = 1).
RECODE q43_13_3 (1=SYSMIS).
END IF.

DO IF (q43_13_1_original = 2 & q43_13_3_original = 2).
RECODE q43_13_3 (2=SYSMIS).
END IF.

DO IF (q43_13_1_original = 3 & q43_13_3_original = 3).
RECODE q43_13_3 (3=SYSMIS).
END IF.

DO IF (q43_13_1_original = 4 & q43_13_3_original = 4).
RECODE q43_13_3 (4=SYSMIS).
END IF.

DO IF (q43_13_1_original = 99 & q43_13_3_original = 99).
RECODE q43_13_3 (99=SYSMIS).
END IF.

EXECUTE.

** 2ª e 3ª iguais > limpar 3ª

DO IF (q43_13_2_original = 1 & q43_13_3_original = 1).
RECODE q43_13_3 (1=SYSMIS).
END IF.

DO IF (q43_13_2_original = 2 & q43_13_3_original = 2).
RECODE q43_13_3 (2=SYSMIS).
END IF.

DO IF (q43_13_2_original = 3 & q43_13_3_original = 3).
RECODE q43_13_3 (3=SYSMIS).
END IF.

DO IF (q43_13_2_original = 4 & q43_13_3_original = 4).
RECODE q43_13_3 (4=SYSMIS).
END IF.

DO IF (q43_13_2_original = 99 & q43_13_3_original = 99).
RECODE q43_13_3 (99=SYSMIS).
END IF.

EXECUTE.

** 1ª e 2ª iguais > limpar 2ª

DO IF (q43_13_1_original = 1 & q43_13_2_original = 1).
RECODE q43_13_2 (1=SYSMIS).
END IF.

DO IF (q43_13_1_original = 2 & q43_13_2_original = 2).
RECODE q43_13_2 (2=SYSMIS).
END IF.

DO IF (q43_13_1_original = 3 & q43_13_2_original = 3).
RECODE q43_13_2 (3=SYSMIS).
END IF.

DO IF (q43_13_1_original = 4 & q43_13_2_original = 4).
RECODE q43_13_2 (4=SYSMIS).
END IF.

DO IF (q43_13_1_original = 99 & q43_13_2_original = 99).
RECODE q43_13_2 (99=SYSMIS).
END IF.

EXECUTE.



