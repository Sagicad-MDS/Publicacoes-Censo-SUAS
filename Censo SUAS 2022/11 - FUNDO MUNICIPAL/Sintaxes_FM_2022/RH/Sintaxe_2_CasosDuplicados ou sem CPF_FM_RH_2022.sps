***Identificando casos duplicados na mesma Unidade, mantendo a função mais alta como principal***


RECODE q15_11 (48=1) (389=2) (21=3) (249=4) (ELSE=5) INTO func.
EXECUTE.

SORT CASES BY func(A).



* Identificar casos duplicados.
SORT CASES BY IBGE(A) q15_4(A).
MATCH FILES
  /FILE=*
  /BY IBGE q15_4
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryLast InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryFirst 'Indicador de cada primeiro caso correspondente como Principal'.
VALUE LABELS  PrimaryFirst 0 'Caso duplicado' 1 'Caso principal'.
VARIABLE LEVEL  PrimaryFirst (ORDINAL).
FREQUENCIES VARIABLES=PrimaryFirst.
EXECUTE.

* Casos duplicados = 	57.
* Casos válidos(principal) = 9824	


FILTER OFF.
USE ALL.
SELECT IF (PrimaryFirst = 1).
EXECUTE.


DELETE VARIABLES
func
PrimaryFirst .
Execute.



FILTER OFF.
USE ALL.
SELECT IF (q15_4 ~= SYSMIS(q15_4)).
EXECUTE.
