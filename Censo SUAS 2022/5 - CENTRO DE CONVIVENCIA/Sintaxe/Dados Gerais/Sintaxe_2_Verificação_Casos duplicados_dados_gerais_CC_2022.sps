* Encoding: UTF-8.

* Identificar casos duplicados - Por número identificador 

DATASET ACTIVATE Conjunto_de_dados1.
* Identificar casos duplicados.
SORT CASES BY NU_IDENTIFICADOR(A).
MATCH FILES
  /FILE=*
  /BY NU_IDENTIFICADOR
 /DROP = PrimaryFirst MatchSequence  /FIRST=PrimaryFirst
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
  /DROP=PrimaryLast InDupGrp.
VARIABLE LABELS  PrimaryFirst 'Indicador de cada primeiro caso correspondente como Principal' 
    MatchSequence 'Contagem sequencial de casos correspondentes'.
VALUE LABELS  PrimaryFirst 0 'Caso duplicado' 1 'Caso principal'.
VARIABLE LEVEL  PrimaryFirst (ORDINAL) /MatchSequence (SCALE).
FREQUENCIES VARIABLES=PrimaryFirst MatchSequence.
EXECUTE.




* Identificar casos duplicados - Por endereço


* Identificar casos duplicados.
SORT CASES BY q02(A) q03(A) q04(A) q05(A) q06(A) q07(A) q08(A) q09(A).
MATCH FILES
  /FILE=*
  /BY q02 q03 q04 q05 q06 q07 q08 q09
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
  /DROP=PrimaryLast InDupGrp.
VARIABLE LABELS  PrimaryFirst 'Indicador de cada primeiro caso correspondente como Principal' 
    MatchSequence 'Contagem sequencial de casos correspondentes'.
VALUE LABELS  PrimaryFirst 0 'Caso duplicado' 1 'Caso principal'.
VARIABLE LEVEL  PrimaryFirst (ORDINAL) /MatchSequence (SCALE).
FREQUENCIES VARIABLES=PrimaryFirst MatchSequence.
EXECUTE.


******  40 Unidades com duplicação, resultando em 99 casos

