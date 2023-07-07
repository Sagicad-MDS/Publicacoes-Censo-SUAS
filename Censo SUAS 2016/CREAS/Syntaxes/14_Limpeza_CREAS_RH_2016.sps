* Encoding: UTF-8.
*****Corrigindo idade no banco RH - Trabalhadores podem ter entre 16 e 70 anos.

DATASET ACTIVATE DataSet1.
RECODE D47_2 (Lowest thru 15=SYSMIS) (71 thru Highest=SYSMIS).
EXECUTE.

*****Ajustando escolaridade e função (somente para os cargos técnico superior e técnico médio) - Ex. Um trabalhador na função "técnico de nível superior" não pode ter escolaridade menor do que superior completo. 

DO IF (q49.7 = 251 | q49.7 = 252 | q49.7 = 253 | q49.7 = 254 | q49.7 = 255 | q49.7 = 256).
RECODE q49.10 (249=SYSMIS).
END IF.
EXECUTE.

DO IF (q49.7 = 251 | q49.7 = 252 | q49.7 = 253 | q49.7 = 254 ).
RECODE q49.10 (250=SYSMIS).
END IF.
EXECUTE.


*********************************Limpeza da redundância nas variáveis q49.13.1, q49.13.2 e q49.13.3  ****************************************
*As variáveis q49.13.1, q49.13.2 e q49.13.3  deveriam expressar o principal, segundo e terceiro serviço ao qual o trabalhador de nível médio ou superior estava vinculado.
*Em alguns casos, o serviço descrito na principal atividade foi repetido nas seguintes. A syntax abaixo converte os valores repetidos em missing ****************************
*******************************************

**Essa Syntax é um Recode para a mesma variável, então precisa rodar a primeira parte, e só depois a segunda, senão rodará com erro********


*****O comando abaixo mantém as variáveis originais no banco EX "q49.13.1VELHA"

RECODE q49.13.1 (ELSE=Copy) INTO q49.13.1VELHA.
VARIABLE LABELS  q49.13.1VELHA 'q49.13.1Principal serviço/atividadeORIGINAL'.
EXECUTE.

RECODE q49.13.2 (ELSE=Copy) INTO q49.13.2VELHA.
VARIABLE LABELS  q49.13.2VELHA 'q49.13.2Segundo principal serviço/atividadeORIGINAL'.
EXECUTE.

RECODE q49.13.3 (ELSE=Copy) INTO q49.13.3VELHA.
VARIABLE LABELS  q49.13.3VELHA 'q49.13.3Terceiro principal serviço/atividadeORIGINAL'.
EXECUTE.


***** Primeira etapa: Limpeza da terceira atividade, quando repete a segunda*****************

DO IF (q49.13.2 = 1).
RECODE q49.13.3 (1=SYSMIS).
END IF.

DO IF (q49.13.2 = 2).
RECODE q49.13.3 (2=SYSMIS).
END IF.

DO IF (q49.13.2 = 3).
RECODE q49.13.3 (3=SYSMIS).
END IF.

DO IF (q49.13.2 = 4).
RECODE q49.13.3 (4=SYSMIS).
END IF.

DO IF (q49.13.2 = 5).
RECODE q49.13.3 (5=SYSMIS).
END IF.

DO IF (q49.13.2 = 99).
RECODE q49.13.3 (99=SYSMIS).
END IF.


****** Segunda etapa: limpeza da terceira atividade, quando repete a primeira *************************

DO IF (q49.13.1 = 1).
RECODE q49.13.3 (1=SYSMIS).
END IF.

DO IF (q49.13.1 = 2).
RECODE q49.13.3 (2=SYSMIS).
END IF.

DO IF (q49.13.1 = 3).
RECODE q49.13.3 (3=SYSMIS).
END IF.

DO IF (q49.13.1 = 4).
RECODE q49.13.3 (4=SYSMIS).
END IF.

DO IF (q49.13.1 = 5).
RECODE q49.13.3 (5=SYSMIS).
END IF.

DO IF (q49.13.1 = 99).
RECODE q49.13.3 (99=SYSMIS).
END IF.


****** Terceira etapa: limpeza da segunda atividade, quando repete a primeira *************************

DO IF (q49.13.1 = 1).
RECODE q49.13.2 (1=SYSMIS).
END IF.

DO IF (q49.13.1 = 2).
RECODE q49.13.2 (2=SYSMIS).
END IF.

DO IF (q49.13.1 = 3).
RECODE q49.13.2 (3=SYSMIS).
END IF.

DO IF (q49.13.1 = 4).
RECODE q49.13.2 (4=SYSMIS).
END IF.

DO IF (q49.13.1 = 5).
RECODE q49.13.2 (5=SYSMIS).
END IF.

DO IF (q49.13.1 = 99).
RECODE q49.13.2 (99=SYSMIS).
END IF.


RENAME VARIABLES
q49.13.1 = q49.13.1FINAL
q49.13.2 = q49.13.2FINAL
q49.13.3 = q49.13.3FINAL.
execute. 



