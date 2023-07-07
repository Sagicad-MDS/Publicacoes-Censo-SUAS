

* Nome da Unidade

SORT CASES BY IBGE(A) ident_1_Nome(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_1_Nome
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
formats Duplicados_Numero (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.



* Bairro

SORT CASES BY IBGE(A) ident_6_Bairro(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_6_Bairro
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


SORT CASES BY IBGE(A) ident_8_CEP(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_8_CEP
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

SORT CASES BY IBGE(A) ident_11_Email(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_11_Email
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

SORT CASES BY IBGE(A) ident_12_Tel(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_12_Tel
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

SORT CASES BY IBGE(A) ident_15_Data(A).
MATCH FILES
  /FILE=*
  /BY IBGE ident_15_Data
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

RENAME VARIABLES InDupGrp=Duplicados_CNPJ. 
formats Duplicados_CNPJ (f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

IF (q4=1) Duplicados_CNPJ=0.
Execute.


* Vagas

SORT CASES BY IBGE(A) q18(A).
MATCH FILES
  /FILE=*
  /BY IBGE q18
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

SORT CASES BY IBGE(A) q19(A).
MATCH FILES
  /FILE=*
  /BY IBGE q19
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
formats Duplicados_esfera(f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.


* Publico

SORT CASES BY IBGE(A) q2_2(A).
MATCH FILES
  /FILE=*
  /BY IBGE q2_2
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
formats Duplicados_publico(f2.0).

DELETE VARIABLES MatchSequence PrimaryLast PrimaryFirst.

* Natureza

SORT CASES BY IBGE(A) q4(A).
MATCH FILES
  /FILE=*
  /BY IBGE q4
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



** Somatório das características

Compute Suspeita_duplicacao = Duplicados_Nome + Duplicados_Endereco + Duplicados_Numero + Duplicados_Bairro + Duplicados_CEP + Duplicados_Email + Duplicados_Telefone + Duplicados_Data + Duplicados_CNPJ + Duplicados_Vagas + Duplicados_Acolhidos + 
Duplicados_esfera + Duplicados_publico + Duplicados_natureza.
execute. 

FREQUENCIES Suspeita_duplicacao.
execute.

* Salvar o arquivo com outro nome. 

FILTER OFF.
USE ALL.
SELECT IF (Suspeita_duplicacao > 0).
EXECUTE.

SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2016_Censo_SUAS\_Bases Censo SUAS 2016 - Tratamento\Acolhimento\Municipal\Suspeita de duplicação.sav'
  /COMPRESSED.

* Retirar casos sem suspeita. 

FILTER OFF.
USE ALL.
SELECT IF (Suspeita_duplicacao > 0).
EXECUTE.



*****Rodar no banco Suspeita de duplicação******


* Identificar casos duplicados. 

SORT CASES BY resp_CPF(A) ident_4(A).
MATCH FILES
  /FILE=*
  /BY resp_CPF ident_4
 /DROP = MatchSequence1  /FIRST=PrimaryFirst
  /LAST=PrimaryLast1.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast1.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast1 'Indicador de cada último caso correspondente como Principal'.
VALUE LABELS  PrimaryLast1 0 'Caso duplicado' 1 'Caso principal'.
VARIABLE LEVEL  PrimaryLast1 (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast1.
EXECUTE.
