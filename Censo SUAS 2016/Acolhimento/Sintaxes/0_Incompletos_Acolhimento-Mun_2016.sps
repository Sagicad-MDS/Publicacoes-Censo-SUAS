**** Discriminação dos Incompletos adicionados à base.
IF ( id_acolhimento = 3101603303049 |
id_acolhimento = 3122303305323 |
id_acolhimento = 3122503305028 |
id_acolhimento = 3139603305498 |
id_acolhimento = 3300803304397 |
id_acolhimento = 3300903304336 |
id_acolhimento = 3503903302367 |
id_acolhimento = 3503903303428 |
id_acolhimento = 3528403300690 |
id_acolhimento = 3530703301278 |
id_acolhimento = 4106903305248 |
id_acolhimento = 4214003306741 |
id_acolhimento = 4319803304534 |
id_acolhimento = 5211303303701 |
id_acolhimento = 5300103307101 )
Incompletos = 1.
EXECUTE.
VARIABLE LABELS Incompletos'Questionários incompletos incorporados à base final'.
VALUE LABELS Incompletos 1'Incompleto'.

**** Remover incompleto adicionado que não possui RH (Alfenas/MG).
FILTER OFF.
USE ALL.
SELECT IF NOT (id_acolhimento = 3101603303049).
EXECUTE.

****** Quantidade de Casos:
**Dados Gerais
Base Original: 5.710 unidades
Incompletos: 15
Removidos sem RH: 1
Base Final: 5.724 unidades
**RH
Base Completos: 87.593 trabalhadores
Incompletos: 111
Unidade sem RH removida: 1
Total: 87.703 trabalhadores
