

*** Abrir arquivo com campos data*****
**Verificar nome, local e formato do arquivo**


GET DATA
  /TYPE=TXT
  /FILE="C:\Users\luisotavio.farias\Documents\Tratamentos\Fundo Municipal\11 - FUNDO "+
    "MUNICIPAL\Dados baixados\lista_rh.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  codigo_ibge F6.0
  v14487 A42
  v14508 EDATE10
  v14509 F1.0
  v14510 F11.0
  v14511 F9.0
  v14512 A6
  v14513 A2
  v14514 F3.0
  v14515 F3.0
  v14516 F3.0
  v14517 F3.0
  v14518 F3.0
  v14519 EDATE10
  CPF_completo A11.
CACHE.
EXECUTE.


