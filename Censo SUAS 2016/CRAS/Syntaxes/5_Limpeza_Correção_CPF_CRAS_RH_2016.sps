recode q43_4_cpf (sysmiss=sysmiss) (else=copy) into q43_4_cpf_velha.
execute.
formats q43_4_cpf_velha (f12). 

DELETE VARIABLES q43_4_cpf.
EXECUTE. 

NUMERIC  CPF_rev (F12).
COMPUTE CPF_rev=q43_4_cpf_velha + 100000000000.
EXECUTE.
 
ALTER TYPE CPF_rev (A12).
EXECUTE.
 
STRING q43_4_cpf (A12).
COMPUTE q43_4_cpf=CHAR.SUBSTR(CPF_rev, 2,12).
EXECUTE.

VARIABLE LABELS q43_4_cpf 'q43_4_cpf'. 
execute.

DELETE VARIABLES CPF_rev.
EXECUTE.

** Colocar variável q43_4_cpf na ordem. 
