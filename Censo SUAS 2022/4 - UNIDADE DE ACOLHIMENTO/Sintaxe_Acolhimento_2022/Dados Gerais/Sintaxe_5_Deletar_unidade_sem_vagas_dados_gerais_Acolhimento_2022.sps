
***** UNIDADES COM ZERO VAGAS E ZERO PESSOAS ACOLHIDAS

IF  (q10 = 0 & q11 = 0) ZERO_VAGA=1.
EXECUTE.

*** 1 caso encontrado:  4109403300231

FILTER OFF.
USE ALL.
SELECT IF (NU_IDENTIFICADOR ~= 4109403300231).
EXECUTE.

DELETE VARIABLES ZERO_VAGA.
