

* Nome da Unidade

SORT CASES BY IBGE(A) ident_1(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_1
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Nome. 
formats Duplicados_Nome (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.


* Endereço


SORT CASES BY IBGE(A) ident_3(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_3
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Endereco. 
formats Duplicados_Endereco (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

* Número

SORT CASES BY IBGE(A) ident_4(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_4
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Numero. 
formats Duplicados_CNPJ (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.



* Bairro

SORT CASES BY IBGE(A) ident_6(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_6
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Bairro. 
formats Duplicados_Bairro (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.


* CEP


SORT CASES BY IBGE(A) ident_8(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_8
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_CEP. 
formats Duplicados_CEP (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.


* Email

SORT CASES BY IBGE(A) ident_11(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_11
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Email. 
formats Duplicados_Email (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

* Telefone

SORT CASES BY IBGE(A) ident_8(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_8
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Telefone. 
formats Duplicados_Telefone (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

* Data de Implantação

SORT CASES BY IBGE(A) ident_15(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_15
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Data. 
formats Duplicados_Data (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.


* CNPJ

SORT CASES BY IBGE(A) q6(A).
MATCH FILES
  /FILE=*
  /BY IBGE q6
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_CNPJ. 
formats Duplicados_CNPJ (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

IF (q5=1) Duplicados_CNPJ=0.
Execute.


* Vagas

SORT CASES BY IBGE(A) q14_1(A).
MATCH FILES
  /FILE=*
  /BY IBGE q14_1
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Vagas. 
formats Duplicados_Vagas (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

* Acolhidos

SORT CASES BY IBGE(A) q14_2(A).
MATCH FILES
  /FILE=*
  /BY IBGE q14_2
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_Acolhidos. 
formats Duplicados_Acolhidos(f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.


* Esfera

SORT CASES BY IBGE(A) q1(A).
MATCH FILES
  /FILE=*
  /BY IBGE q1
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_esfera. 
formats Duplicados_Esfera(f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.


* Publico

SORT CASES BY IBGE(A) q3(A).
MATCH FILES
  /FILE=*
  /BY IBGE q3
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_publico. 
formats Duplicados_Publico(f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

* Natureza

SORT CASES BY IBGE(A) q5(A).
MATCH FILES
  /FILE=*
  /BY IBGE q5
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
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

RENAME VARIABLES InDupGrp=Duplicados_natureza. 
formats Duplicados_natureza(f2.0).


DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

* Natureza

** Somatório das características

compute Suspeita_duplicacao = Duplicados_Nome + Duplicados_Endereco + Duplicados_Bairro + Duplicados_CEP + Duplicados_Email + Duplicados_Telefone + Duplicados_Data + Duplicados_CNPJ + Duplicados_Numero + Duplicados_Vagas + Duplicados_Acolhidos + Duplicados_esfera + Duplicados_publico + Duplicados_natureza.
execute. 


freq Suspeita_duplicacao.


* Salvar o arquivo com outro nome. 

FILTER OFF.
USE ALL.
SELECT IF (Suspeita_duplicacao > 0).
EXECUTE.

SAVE OUTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ '+
    'Tratamento\Acolhimento\Base de Dados\Bases Recortadas\Suspeita de duplicação.sav'
  /COMPRESSED.

* Retirar casos sem suspeita. 



FILTER OFF.
USE ALL.
SELECT IF (Suspeita_duplicacao > 0).
EXECUTE.
