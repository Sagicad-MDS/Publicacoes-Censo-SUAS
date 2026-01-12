
****  Abrir arquivo de Dados, com variável data
** Verificar nome. local e formato do arquivo


GET DATA
  /TYPE=TXT
  /FILE="C:\Users\luisotavio.farias\Documents\Tratamentos\Fundo Municipal\11 - FUNDO "+
    "MUNICIPAL\Dados baixados\dados_gerais.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  codigo_ibge F6.0
  v8362 A59
  v8363 F2.0
  v8364 A36
  v8365 F4.0
  v8366 A41
  v8367 A22
  v8368 A101
  v8369 F8.0
  v8370 A25
  v8371 A2
  v8372 A47
  v8373 F11.0
  v8374 F4.0
  v8375 F10.0
  p_latitude A23
  p_longitude A23
  v8376 A1
  v8377 F1.0
  v14450 F1.0
  v12038 F1.0
  v12039 F2.0
  v14451 F1.0
  v14452 F1.0
  v14453 F1.0
  v14454 F2.0
  v14568_0 F1.0
  v11588 F1.0
  v14534 F1.0
  v14535 F1.0
  v14536 F1.0
  v14537 F1.0
  v14538 F1.0
  v14541 A69
  v9577 F1.0
  v15071 F1.0
  v15072 F1.0
  v15075 A89
  v15087 F1.0
  v15073 F1.0
  v16297_1 F1.0
  v16297_2 F1.0
  v16297_3 F1.0
  v16297_4 F1.0
  v16297_5 F1.0
  v16297_6 F1.0
  v16297_7 F1.0
  v16297_0 F1.0
  v16298_1 F1.0
  v16298_2 F1.0
  v16298_3 F1.0
  v16298_4 F1.0
  v16298_5 F1.0
  v16298_6 F1.0
  v16298_7 F1.0
  v16298_8 F1.0
  v16298_0 F1.0
  v16298_99 F1.0
  v16299 A141
  v16300 F1.0
  v13303 F11.0
  v15090_98 F1.0
  v14542 F10.0
  v15097_98 F1.0
  v14470 F11.0
  v15104_98 F1.0
  v14543 F9.0
  v15111_98 F1.0
  v14544 F10.0
  v15091_98 F1.0
  v14545 F9.0
  v15098_98 F1.0
  v14546 F10.0
  v15105_98 F1.0
  v14547 F9.0
  v15112_98 F1.0
  v14548 F10.0
  v15092_98 F1.0
  v14549 F11.0
  v15099_98 F1.0
  v14550 F10.0
  v15106_98 F1.0
  v14551 F10.0
  v15113_98 F1.0
  v14552 F11.0
  v15093_98 F1.0
  v14553 F9.0
  v15100_98 F1.0
  v14554 F11.0
  v15107_98 F1.0
  v14555 F9.0
  v15114_98 F1.0
  v15078 F10.0
  v15094_98 F1.0
  v15079 F9.0
  v15101_98 F1.0
  v15080 F11.0
  v15108_98 F1.0
  v15081 F9.0
  v15115_98 F1.0
  v14556 F11.0
  v15095_98 F1.0
  v14557 F9.0
  v15102_98 F1.0
  v14558 F11.0
  v15109_98 F1.0
  v14559 F9.0
  v15116_98 F1.0
  v14560 F11.0
  v15096_98 F1.0
  v14561 F11.0
  v15103_98 F1.0
  v14562 F11.0
  v15110_98 F1.0
  v14563 F10.0
  v15117_98 F1.0
  v14807_97 F1.0
  v14520 A37
  v14521 A14
  v14522 EDATE10
  v14523 F2.0
  v14524 A15
  v14525 A47
  v14565_97 F1.0
  v14566 A40
  v14529 A14
  v14530 A14
  v14531 A15
  v14567 A47
  Q_incompletos F1.0.
CACHE.
EXECUTE.
DATASET NAME Conjunto_de_dados1 WINDOW=FRONT.


FILTER OFF.
USE ALL.
SELECT IF (codigo_ibge ~= SYSMIS(codigo_ibge)).
EXECUTE.
