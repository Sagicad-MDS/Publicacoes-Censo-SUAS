
*** Abrir arquivo com variáveis de Data
*** Observar nome e local do arquivo


GET DATA
  /TYPE=TXT
  /FILE="C:\Users\luisotavio.farias\Documents\Tratamentos\Acolhimento_2022\4 - UNIDADE DE "+
    "ACOLHIMENTO\Limpeza_2022\Dados_2022\RH\RH_2022_CPF tratado.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  id_acolhimento F13.0
  codigo_ibge F6.0
  v11102 A38
  v11103 EDATE10
  v11105 F11.0
  v11104 F1.0
  v11997 A38
  v11106 F11.0
  v11107 A5
  v11108 A2
  v11110 F3.0
  v11111 F3.0
  v11112 F3.0
  v11113 F3.0
  v11114 F3.0
  v11115 EDATE10
  CPF_tratado A11.
CACHE.
EXECUTE.
DATASET NAME RH  WINDOW=FRONT.
