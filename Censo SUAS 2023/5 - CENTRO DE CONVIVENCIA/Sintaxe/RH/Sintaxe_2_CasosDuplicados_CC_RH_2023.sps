
**Identifica casos duplicados dentro de uma mesma Unidade e mantém apenas o Cargo mais elevado, apagando os demais duplicados***


RECODE q36_12 (21=0) (218=1)  (217=2) (216=3) (ELSE=99) INTO Função_recode.
EXECUTE.

SORT CASES BY NU_IDENTIFICADOR(A) q36_4(A) Função_recode(A).

* Identificar casos duplicados.
SORT CASES BY NU_IDENTIFICADOR(A) q36_4(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR q36_4
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

****388 casos duplicados

FILTER OFF.
USE ALL.
SELECT IF (PrimaryFirst = 1).
EXECUTE.

DELETE VARIABLES PrimaryFirst Função_recode .
