recode q42_3_cpf (sysmiss=sysmiss) (else=copy) into q42_3_cpf_velha.
execute.
formats q42_3_cpf_velha (f12). 

DELETE VARIABLES q42_3_cpf.
EXECUTE. 

NUMERIC  CPF_rev (F12).
COMPUTE CPF_rev=q42_3_cpf_velha + 100000000000.
EXECUTE.
 
ALTER TYPE CPF_rev (A12).
EXECUTE.
 
STRING q42_3_cpf (A12).
COMPUTE q42_3_cpf=CHAR.SUBSTR(CPF_rev, 2,12).
EXECUTE.

VARIABLE LABELS q42_3_cpf 'q42_3_cpf_CPF'. 
execute.

DELETE VARIABLES CPF_rev.
EXECUTE.

** Colocar variável q41_3 na ordem. 
