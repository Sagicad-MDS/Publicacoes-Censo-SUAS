﻿* Encoding: UTF-8.

** Na base de DADOS GERAIS

****acrescentar RH em dados gerais****************************************************************************

****FILTRAR NATUREZA Estadual ou Municipal






CROSSTABS
  /TABLES=q1_1 BY Regiao
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



CROSSTABS
  /TABLES=q1_1 BY Porte_pop2022
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

*UF

CROSSTABS
  /TABLES= UF BY q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* Tempo de Implantação (ident_15)


CROSSTABS
  /TABLES=q1_1 BY  Faixas_etarias
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES=q1_1 BY  q51_3
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES= q51_9 BY q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



CROSSTABS
  /TABLES=d51_9   BY  q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



CROSSTABS
  /TABLES=q51_10  BY  q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



CROSSTABS
  /TABLES=d51_10 BY  q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES=q51_11 BY  q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES= d51_11  BY  q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES= q51_12 BY    q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


CROSSTABS
  /TABLES=q51_13   BY   q1_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.



