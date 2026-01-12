
*****recodificar

*q5*********************************

DO IF (q4=0).
RECODE q5_1 (ELSE=SYSMIS).
RECODE q5_2 (ELSE=SYSMIS).
RECODE q5_3 (ELSE=SYSMIS).
RECODE q5_4 (ELSE=SYSMIS).
RECODE q5_5 (ELSE=SYSMIS).
END IF.
EXECUTE.

Compute q5_5_velha = q5_5.
Execute.

COMPUTE q5_5_rec=SUM(q5_1,q5_2,q5_3,q5_4).
EXECUTE.

IF  (q5_5 > q5_5_rec) q5_5=q5_5_rec.
EXECUTE.

IF  (q5_5 = 0 & q5_5_rec > 0) q5_5=q5_5_rec.
EXECUTE.


DELETE VARIABLES q5_5_rec.

**q6*****************

DO IF (q6_0=1).
RECODE q6_1 (ELSE=SYSMIS).
RECODE q6_2 (ELSE=SYSMIS).
RECODE q6_3 (ELSE=SYSMIS).
RECODE q6_4 (ELSE=SYSMIS).
RECODE q6_5 (ELSE=SYSMIS).
RECODE q6_6 (ELSE=SYSMIS).
RECODE q7 (ELSE=SYSMIS).
END IF.
EXECUTE.


DO IF (q6_1=0 & q6_2=0 & q6_3=0 &  q6_4=0  &  q6_5=0 & q6_6=0 ).
RECODE q7 (ELSE=SYSMIS).
END IF.
EXECUTE.


RECODE q6_0 (0=SYSMIS).
EXECUTE.


*******************



VARIABLE LABELS
q5_5_velha	 'q5_5_Total de entidades' .



COMMENT BOOKMARK;LINE_NUM=43;ID=7.
