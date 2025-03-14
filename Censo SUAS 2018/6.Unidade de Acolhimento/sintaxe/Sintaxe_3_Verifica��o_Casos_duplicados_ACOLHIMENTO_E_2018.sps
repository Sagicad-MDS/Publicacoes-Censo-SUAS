
* Identificar casos duplicados - 

*******************************
*Por n�mero identificador 
*******************************


* Identify Duplicate Cases.
SORT CASES BY NU_IDENTIFICADOR(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence1=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence1=MatchSequence1+1.
END IF.
LEAVE  MatchSequence1.
FORMATS  MatchSequence1 (f7).
COMPUTE  InDupGrp=MatchSequence1>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence1.
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

* ----Duplica��o por N�mero Identificador (NU_IDENTIFICADOR): 0 casos

DELETE VARIABLES PrimaryLast.