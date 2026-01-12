
*** Verificar nome, formato e lçocal do arquivo

****  Abrir arquivo com variáveis data 


GET DATA
  /TYPE=TXT
  /FILE="C:\Users\luisotavio.farias\Documents\Tratamentos\Centro Convivência_2022\5 - CENTRO DE "+
    "CONVIVENCIA\Dados baixados\rh.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  codigo_ibge F6.0
  IBGE_Loc F6.0
  id_convivencia F13.0
  v10716 A48
  co_seq_dirigente F7.0
  v10718 EDATE10
  v10719 F1.0
  v10720 F11.0
  v10721 F11.0
  v10722 A5
  v10723 A2
  v11952 A36
  v10724 F3.0
  v10726 F3.0
  v10727 F3.0
  v10729 F3.0
  v10730 F3.0
  v10731 EDATE10
  CPF_completo A11.
CACHE.
EXECUTE.
DATASET NAME Conjunto_de_dados4 WINDOW=FRONT.
