recode q41_3 (sysmiss=sysmiss) (else=copy) into q41_3_velha.
execute.
formats q41_3_velha (f12). 

DELETE VARIABLES q41_3.
EXECUTE. 

NUMERIC  CPF_rev (F12).
COMPUTE CPF_rev=q41_3_velha + 100000000000.
EXECUTE.
 
ALTER TYPE CPF_rev (A12).
EXECUTE.
 
STRING q41_3 (A12).
COMPUTE q41_3=CHAR.SUBSTR(CPF_rev, 2,12).
EXECUTE.

VARIABLE LABELS q41_3 'q41_3_CPF'. 
execute.

DELETE VARIABLES CPF_rev.
EXECUTE.

** Colocar variável q41_3 na ordem. 
