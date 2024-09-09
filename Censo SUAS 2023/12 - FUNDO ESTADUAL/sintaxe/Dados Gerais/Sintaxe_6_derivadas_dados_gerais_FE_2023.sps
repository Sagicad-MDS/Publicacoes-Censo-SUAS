* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS Fundo Estadual - CENSO SUAS 2023
****************************************************************************************************



*******q5 ****************************************************


RECODE q5  ( 0=0)(1 thru 20=1) (21 thru 40=2) (41 thru 70=3) (71 thru 100=4) (100 thru Highest=5) INTO d5.

VALUE LABELS  d5
0"nenhuma entidade"
1"Entre 1 e 20 entidades"  
2"Entre 21 e 40 entidades"  
3"Entre 41 e 70 entidades"  
4"Entre 71 e 100 entidades"  
5"Mais de 100 entidades"  .
EXECUTE.


VARIABLE LABELS
 d5 ' d5.    Quantas entidades receberam, em 2022, recurso do órgão gestor estadual por convênio/termo de parceria por bloco?'.
EXECUTE.




*******q12 ****************************************************


RECODE q12_1  ( 0=0)(1 thru 50=1) (51 thru 100=2) (101 thru 150=3) (151 thru 300=4) (301 thru Highest=5) INTO d12_1.

VALUE LABELS  d12_1
0"nenhum municipio"
1"Entre 1 e 50 municipios"  
2"Entre 51 e 100 municipios"  
3"Entre 101 e 150 municipios"  
4"Entre 151 e 300 municipios"  
5"Mais de 300 municipios"    .
EXECUTE.


VARIABLE LABELS
 d12_1  ' d12_1. TOTAL DE MUNICÍPIOS COM COFINANCIAMENTO ESTADUAL (convênio e/ou fundo-a-fundo)'.
EXECUTE.




RECODE q12_2  ( 0=0)(1 thru 50=1) (51 thru 100=2) (101 thru 150=3) (151 thru 300=4) (301 thru Highest=5) INTO d12_2.

VALUE LABELS  d12_2
0"nenhum municipio"
1"Entre 1 e 50 municipios"  
2"Entre 51 e 100 municipios"  
3"Entre 101 e 150 municipios"  
4"Entre 151 e 300 municipios"  
5"Mais de 300 municipios"    .
EXECUTE.


VARIABLE LABELS
 d12_2  ' d12_2.  Quantidade de municípios que possuem cofinanciamento estadual FUNDO-A-FUNDO'.
EXECUTE.



RECODE q12_3  ( 0=0)(1 thru 50=1) (51 thru 100=2) (101 thru 150=3) (151 thru 300=4) (301 thru Highest=5) INTO d12_3.

VALUE LABELS  d12_3
0"nenhum municipio"
1"Entre 1 e 50 municipios"  
2"Entre 51 e 100 municipios"  
3"Entre 101 e 150 municipios"  
4"Entre 151 e 300 municipios"  
5"Mais de 300 municipios"    .
EXECUTE.


VARIABLE LABELS
 d12_3  ' d12_3. Quantidade de municípios que possuem cofinanciamento estadual por meio de CONVÊNIO'.
EXECUTE.





*******q13 ****************************************************


RECODE q13_1  ( 0=0)(1 thru 50=1) (51 thru 100=2) (101 thru 150=3) (151 thru 300=4) (301 thru Highest=5) INTO d13_1.

VALUE LABELS  d13_1
0"nenhum municipio"
1"Entre 1 e 50 municipios"  
2"Entre 51 e 100 municipios"  
3"Entre 101 e 150 municipios"  
4"Entre 151 e 300 municipios"  
5"Mais de 300 municipios"    .
EXECUTE.


VARIABLE LABELS
 d13_1  ' d13_1.Quantidade total de municípios com cofinanciamento estadual (fundo-a-fundo e/ou convênio).'.
EXECUTE.




RECODE q13_2  ( 0=0)(1 thru 50=1) (51 thru 100=2) (101 thru 150=3) (151 thru 300=4) (301 thru Highest=5) INTO d13_2.

VALUE LABELS  d13_2
0"nenhum municipio"
1"Entre 1 e 50 municipios"  
2"Entre 51 e 100 municipios"  
3"Entre 101 e 150 municipios"  
4"Entre 151 e 300 municipios"  
5"Mais de 300 municipios"    .
EXECUTE.


VARIABLE LABELS
 d13_2  ' d13_2. Quantidade de municípios com cofinanciamento estadual fundo-a-fundo'.
EXECUTE.



RECODE q13_3  ( 0=0)(1 thru 50=1) (51 thru 100=2) (101 thru 150=3) (151 thru 300=4) (301 thru Highest=5) INTO d13_3.

VALUE LABELS  d13_3
0"nenhum municipio"
1"Entre 1 e 50 municipios"  
2"Entre 51 e 100 municipios"  
3"Entre 101 e 150 municipios"  
4"Entre 151 e 300 municipios"  
5"Mais de 300 municipios"    .
EXECUTE.


VARIABLE LABELS
 d13_3  ' d13_3. Quantidade de municípios que possuem cofinanciamento estadual por meio de convênio'.
EXECUTE.
