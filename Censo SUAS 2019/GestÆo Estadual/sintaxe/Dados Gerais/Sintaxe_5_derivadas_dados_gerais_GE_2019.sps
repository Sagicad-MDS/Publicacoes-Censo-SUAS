* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARI�VEIS DERIVADAS GEST�O ESTADUAL - CENSO SUAS 2019
****************************************************************************************************

********************************************** quest�o 4

RECODE q4_97 (1=0) INTO d_4.
RECODE q4   (2019=1)  (2018=2) (2017=3) (2016=4) (2015=5) (2011 THRU 2014 = 6) (2006 THRU 2010 = 7) (LOWEST THRU 2005 = 8) INTO d_4.
VARIABLE LABELS d_4 'd_4. Ano da Lei Estadual de regulamenta��o do SUAS'.
VALUE LABELS d_4
0 'N�o possui Lei'
1 '2019'
2 '2018'
3 '2017'
4 '2016'
5 '2015'
6 'De 2011 a 2014'
7 'De 2006 a 2010'
8 'At� de 2005'.
EXECUTE.

********************************************** quest�o 5

RECODE q5_97 (1=0) INTO d_5.
RECODE q5   (2019=1)  (2018=2) (2017=3) (2016=4) (2015=5) (2011 THRU 2014 = 6) (2006 THRU 2010 = 7) (LOWEST THRU 2005 = 8) INTO d_5.
VARIABLE LABELS d_5 'd_5. Ano de atualiza��o do Plano Estadual de Assit�ncia Social'.
VALUE LABELS d_5
0 'N�o possui Lei'
1 '2019'
2 '2018'
3 '2017'
4 '2016'
5 '2015'
6 'De 2011 a 2014'
7 'De 2006 a 2010'
8 'At� de 2005'.
EXECUTE.


********************************************** quest�o 6

RECODE q6_97 (1=0) INTO d_6.
RECODE q6   (2019=1)  (2018=2) (2017=3) (2016=4) (2015=5) (2011 THRU 2014 = 6) (2006 THRU 2010 = 7) (LOWEST THRU 2005 = 8) INTO d_6.
VARIABLE LABELS d_6 'd_6. Ano de atualiza��o do Plano Estadual de Capacita��o'.
VALUE LABELS d_6
0 'N�o possui Lei'
1 '2019'
2 '2018'
3 '2017'
4 '2016'
5 '2015'
6 'De 2011 a 2014'
7 'De 2006 a 2010'
8 'At� de 2005'.
EXECUTE.


*******************************quest�o 17

RECODE q17_1 (0=0) INTO d_17_1.
RECODE q17_1_99 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d_17_1.
VARIABLE LABELS d_17_1 'd_17_1.Execu��o direta do servi�o pelo governo estadual'.
VALUE LABELS d_17_1
0 'Nenhuma Unidade' 
1 'At� 5 Unidades' 
2 '6 a 10 Unidades' 
3 '11 a 50  Unidades'  
4 '51 a 200 Unidades'
5 '201 a 500 Unidades' 
6 'mais de 500 Unidades'. 
EXECUTE.


RECODE q17_2 (0=0) INTO d_17_2.
RECODE q17_2_99 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru Highest=6) INTO d_17_2.
VARIABLE LABELS d_17_2 'd_17_2.Repasse direto do estado para entidade da rede privada'.
VALUE LABELS d_17_2
0 'Nenhuma Unidade' 
1 'At� 5 Unidades' 
2 '6 a 10 Unidades' 
3 '11 a 50  Unidades'  
4 '51 a 200 Unidades'
5 '201 a 500 Unidades' 
6 'mais de 500 Unidades'. 
EXECUTE.

RECODE q17_3 (0=0) INTO d_17_3.
RECODE q17_3_99 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru Highest=6) INTO d_17_3.
VARIABLE LABELS d_17_3 'd_17_3.Repasse de recursos do estado para os munic�pios-sede'.
VALUE LABELS d_17_3
0 'Nenhuma Unidade' 
1 'At� 5 Unidades' 
2 '6 a 10 Unidades' 
3 '11 a 50  Unidades'  
4 '51 a 200 Unidades'
5 '201 a 500 Unidades' 
6 'mais de 500 Unidades'. 
EXECUTE.

RECODE q17_4 (0=0) INTO d_17_4.
RECODE q17_4_99 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru Highest=6) INTO d_17_4.
VARIABLE LABELS d_17_4 'd_17_4.Cons�rcio P�blico'.
VALUE LABELS d_17_4
0 'Nenhuma Unidade' 
1 'At� 5 Unidades' 
2 '6 a 10 Unidades' 
3 '11 a 50  Unidades'  
4 '51 a 200 Unidades'
5 '201 a 500 Unidades' 
6 'mais de 500 Unidades'. 
EXECUTE.

*******************************quest�o 21

RECODE q21 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d_21.
VARIABLE LABELS d_21   'd_21.Quantos munic�pios comp�em o plano de provid�ncia e/ou de apoio t�cnico do Estado'.
VALUE LABELS   d_21
0 'Nenhum Munic�pio' 
1 'At� 5 Munic�pios' 
2 '6 a 10 Munic�pios' 
3 '11 a 50  Munic�pios'  
4 '51 a 200 Munic�pios'
5 '201 a 500 Munic�pios' 
6 'mais de 500 Munic�pios'. 
EXECUTE.


*******************************quest�o 22

RECODE q22 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d_22.
VARIABLE LABELS d_22   'd_22.Quantos munic�pios do estado receberam visitas t�cnicas da Secretaria Estadual de Assist�ncia Social'.
VALUE LABELS   d_22
0 'Nenhum Munic�pio' 
1 'At� 5 Munic�pios' 
2 '6 a 10 Munic�pios' 
3 '11 a 50  Munic�pios'  
4 '51 a 200 Munic�pios'
5 '201 a 500 Munic�pios' 
6 'mais de 500 Munic�pios'. 
EXECUTE.



****************************************quest�o 23

RECODE q23_1 (0=1) INTO d_23_1.
RECODE q23_1_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_23_1.
VARIABLE LABELS  d_23_1  'd_23_1. Capacita��o presencial para as(os) trabalhadoras(es) estaduais da assist�ncia social '.
VALUE LABELS d_23_1
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.



RECODE q23_2 (0=1) INTO d_23_2.
RECODE q23_2_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_23_2.
VARIABLE LABELS  d_23_2  'd_23_2. Capacita��o � dist�ncia para as(os) trabalhadoras(es) estaduais da assist�ncia social'.
VALUE LABELS d_23_2
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.


RECODE q23_3 (0=1) INTO d_23_3.
RECODE q23_3_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_23_3.
VARIABLE LABELS  d_23_3  'd_23_3. Capacita��o presencial para as(os) trabalhadoras(es) municipais da assist�ncia social'.
VALUE LABELS d_23_3
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.


RECODE q23_4 (0=1) INTO d_23_4.
RECODE q23_4_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_23_4.
VARIABLE LABELS  d_23_4  'd_23_4. Capacita��o � dist�ncia para as(os) trabalhadoras(es) municipais da assist�ncia social'.
VALUE LABELS d_23_4
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.

****************************************quest�o 24

RECODE q24_1  (0=1) INTO d_24_1.
RECODE q24_1_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_24_1.
VARIABLE LABELS  d_24_1 'd_24_1.Capacita��o presencial para as(os) conselheiras(os) estaduais'.
VALUE LABELS d_24_1
1 'Nenhuma'
2 'De 1 a 5 conselheiras(os)'
3 'De 6 a 10 conselheiras(os)'
4 'De 10 a 500 conselheiras(os)' 
5 'De 501 a 1000 conselheiras(os)' 
6 'Mais de 1000 conselheiras(os)'. 
EXECUTE.

RECODE q24_2  (0=1) INTO d_24_2.
RECODE q24_2_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_24_2.
VARIABLE LABELS  d_24_2 'd_24_2.Capacita��o � dist�ncia para as(os) conselheiras(os) estaduais'.
VALUE LABELS d_24_2
1 'Nenhuma'
2 'De 1 a 5 conselheiras(os)'
3 'De 6 a 10 conselheiras(os)'
4 'De 10 a 500 conselheiras(os)' 
5 'De 501 a 1000 conselheiras(os)' 
6 'Mais de 1000 conselheiras(os)'. 
EXECUTE.

RECODE q24_3  (0=1) INTO d_24_3.
RECODE q24_3_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_24_3.
VARIABLE LABELS  d_24_3 'd_24_3.Capacita��o presencial para as(os) conselheiras(os) municipais'.
VALUE LABELS d_24_3
1 'Nenhuma'
2 'De 1 a 5 conselheiras(os)'
3 'De 6 a 10 conselheiras(os)'
4 'De 10 a 500 conselheiras(os)' 
5 'De 501 a 1000 conselheiras(os)' 
6 'Mais de 1000 conselheiras(os)'. 
EXECUTE.

RECODE q24_4  (0=1) INTO d_24_4.
RECODE q24_4_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_24_4.
VARIABLE LABELS  d_24_4    'd_24_4.Capacita��o � dist�ncia para as(os) conselheiras(os) municipais'.
VALUE LABELS d_24_4
1 'Nenhuma'
2 'De 1 a 5 conselheiras(os)'
3 'De 6 a 10 conselheiras(os)'
4 'De 10 a 500 conselheiras(os)' 
5 'De 501 a 1000 conselheiras(os)' 
6 'Mais de 1000 conselheiras(os)'. 
EXECUTE.


****************************************quest�o 25

RECODE q25_1_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_1_1.
VARIABLE LABELS  d_25_1_1 'd_25_1_1.Representantes da Gest�o Estadual - Titulares'.
VALUE LABELS d_25_1_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_1_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_1_2.
VARIABLE LABELS  d_25_1_2 'd_25_1_2.Representantes da Gest�o Estadual - Suplentes'.
VALUE LABELS d_25_1_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_2_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_2_1.
VARIABLE LABELS  d_25_2_1 'd_25_2_1.Representantes de Munic�pios de Pequeno Porte I - Titulares'.
VALUE LABELS d_25_2_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_2_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_2_2.
VARIABLE LABELS  d_25_2_2 'd_25_2_2.Representantes de Munic�pios de Pequeno Porte I - Suplentes'.
VALUE LABELS d_25_2_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_3_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_3_1.
VARIABLE LABELS  d_25_3_1 'd_25_3_1.Representantes de Munic�pios de Pequeno Porte II - Titulares'.
VALUE LABELS d_25_3_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_3_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_3_2.
VARIABLE LABELS  d_25_3_2 'd_25_3_2.Representantes de Munic�pios de Pequeno Porte II - Suplentes'.
VALUE LABELS d_25_3_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_4_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_4_1.
VARIABLE LABELS  d_25_4_1 'd_25_4_1.Representantes de Munic�pios de M�dio Porte - Titulares'.
VALUE LABELS d_25_4_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_4_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_4_2.
VARIABLE LABELS  d_25_4_2 'd_25_4_2.Representantes de Munic�pios de M�dio Porte - Suplentes'.
VALUE LABELS d_25_4_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_5_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_5_1.
VARIABLE LABELS  d_25_5_1 'd_25_5_1.Representantes de Munic�pios de Grande Porte - Titulares'.
VALUE LABELS d_25_5_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_5_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_5_2.
VARIABLE LABELS  d_25_5_2 'd_25_5_2. Representantes de Munic�pios de Grande Porte - Suplentes'.
VALUE LABELS d_25_5_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_6_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_6_1.
VARIABLE LABELS  d_25_6_1 'd_25_6_1.Representantes de Metr�poles/capitais - Titulares'.
VALUE LABELS d_25_6_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_6_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_6_2.
VARIABLE LABELS  d_25_6_2 'd_25_6_2. Representantes de Metr�poles/capitais - Suplentes'.
VALUE LABELS d_25_6_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


******q31*******************************************************************************************

RECODE q31  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_31.
VARIABLE LABELS  d_31  'd_31. Quantas reuni�es a CIB realizou no ano de 2018'.
VALUE LABELS d_31
1 'Nenhuma'
2 'De 1 a 5 reuni�es'
3 'De 6 a 10 reuni�es'
4 'Mais de 10 reuni�es'.
EXECUTE.



******q32*******************************************************************************************

RECODE q32  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_32.
VARIABLE LABELS  d_32  'd_32. Quantas reuni�es descentralizadas a CIB realizou no ano de 2018'.
VALUE LABELS d_32
1 'Nenhuma'
2 'De 1 a 5 reuni�es'
3 'De 6 a 10 reuni�es'
4 'Mais de 10 reuni�es'.
EXECUTE.

***q36*****************************************************************************************

RECODE q36_1_1  (0=1) INTO d_36_1_1.
RECODE q36_1_2  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_1_1 .
VARIABLE LABELS  d_36_1_1  'd_36_1_1. Quantidade de vagas para n�vel superior'.
VALUE LABELS d_36_1_1
1 'Nenhuma'
2 'De 1 a 20 vagas'
3 'De 21 a 50 vagas'
4 'De 51 a 100 vagas' 
5 'Mais de 100 vagas'. 
EXECUTE.

RECODE q36_1_3  (0=1) INTO d_36_1_5.
RECODE d_36_1_5  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_1_5.
VARIABLE LABELS  d_36_1_5   'd_36_1_5 . Quantidade de trabalhadores de n�vel superior que tomaram posse'.
VALUE LABELS d_36_1_5
1 'Nenhum'
2 'De 1 a 20 trabalhadores'
3 'De 21 a 50 trabalhadores'
4 'De 51 a 100 trabalhadores'
5 'Mais de 100 trabalhadores'. 
EXECUTE.

RECODE q36_2_1  (0=1) INTO d_36_2_1.
RECODE q36_2_2  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_2_1 .
VARIABLE LABELS  d_36_2_1  'd_36_2_1. Quantidade de vagas para n�vel m�dio'.
VALUE LABELS d_36_2_1
1 'Nenhuma'
2 'De 1 a 20 vagas'
3 'De 21 a 50 vagas'
4 'De 51 a 100 vagas' 
5 'Mais de 100 vagas'. 
EXECUTE.

RECODE q36_2_3  (0=1) INTO d_36_2_5.
RECODE d_36_2_5  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_2_5.
VARIABLE LABELS  d_36_2_5   'd_36_2_5 . Quantidade de trabalhadores de n�vel m�dio que tomaram posse'.
VALUE LABELS d_36_2_5
1 'Nenhum'
2 'De 1 a 20 trabalhadores'
3 'De 21 a 50 trabalhadores'
4 'De 51 a 100 trabalhadores'
5 'Mais de 100 trabalhadores'. 
EXECUTE.