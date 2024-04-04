* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO ESTADUAL - CENSO SUAS 2019
****************************************************************************************************

********************************************** questão 4

RECODE q4_97 (1=0) INTO d_4.
RECODE q4   (2019=1)  (2018=2) (2017=3) (2016=4) (2015=5) (2011 THRU 2014 = 6) (2006 THRU 2010 = 7) (LOWEST THRU 2005 = 8) INTO d_4.
VARIABLE LABELS d_4 'd_4. Ano da Lei Estadual de regulamentação do SUAS'.
VALUE LABELS d_4
0 'Não possui Lei'
1 '2019'
2 '2018'
3 '2017'
4 '2016'
5 '2015'
6 'De 2011 a 2014'
7 'De 2006 a 2010'
8 'Até de 2005'.
EXECUTE.

********************************************** questão 5

RECODE q5_97 (1=0) INTO d_5.
RECODE q5   (2019=1)  (2018=2) (2017=3) (2016=4) (2015=5) (2011 THRU 2014 = 6) (2006 THRU 2010 = 7) (LOWEST THRU 2005 = 8) INTO d_5.
VARIABLE LABELS d_5 'd_5. Ano de atualização do Plano Estadual de Assitência Social'.
VALUE LABELS d_5
0 'Não possui Lei'
1 '2019'
2 '2018'
3 '2017'
4 '2016'
5 '2015'
6 'De 2011 a 2014'
7 'De 2006 a 2010'
8 'Até de 2005'.
EXECUTE.


********************************************** questão 6

RECODE q6_97 (1=0) INTO d_6.
RECODE q6   (2019=1)  (2018=2) (2017=3) (2016=4) (2015=5) (2011 THRU 2014 = 6) (2006 THRU 2010 = 7) (LOWEST THRU 2005 = 8) INTO d_6.
VARIABLE LABELS d_6 'd_6. Ano de atualização do Plano Estadual de Capacitação'.
VALUE LABELS d_6
0 'Não possui Lei'
1 '2019'
2 '2018'
3 '2017'
4 '2016'
5 '2015'
6 'De 2011 a 2014'
7 'De 2006 a 2010'
8 'Até de 2005'.
EXECUTE.


*******************************questão 17

RECODE q17_1 (0=0) INTO d_17_1.
RECODE q17_1_99 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d_17_1.
VARIABLE LABELS d_17_1 'd_17_1.Execução direta do serviço pelo governo estadual'.
VALUE LABELS d_17_1
0 'Nenhuma Unidade' 
1 'Até 5 Unidades' 
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
1 'Até 5 Unidades' 
2 '6 a 10 Unidades' 
3 '11 a 50  Unidades'  
4 '51 a 200 Unidades'
5 '201 a 500 Unidades' 
6 'mais de 500 Unidades'. 
EXECUTE.

RECODE q17_3 (0=0) INTO d_17_3.
RECODE q17_3_99 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru Highest=6) INTO d_17_3.
VARIABLE LABELS d_17_3 'd_17_3.Repasse de recursos do estado para os municípios-sede'.
VALUE LABELS d_17_3
0 'Nenhuma Unidade' 
1 'Até 5 Unidades' 
2 '6 a 10 Unidades' 
3 '11 a 50  Unidades'  
4 '51 a 200 Unidades'
5 '201 a 500 Unidades' 
6 'mais de 500 Unidades'. 
EXECUTE.

RECODE q17_4 (0=0) INTO d_17_4.
RECODE q17_4_99 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru Highest=6) INTO d_17_4.
VARIABLE LABELS d_17_4 'd_17_4.Consórcio Público'.
VALUE LABELS d_17_4
0 'Nenhuma Unidade' 
1 'Até 5 Unidades' 
2 '6 a 10 Unidades' 
3 '11 a 50  Unidades'  
4 '51 a 200 Unidades'
5 '201 a 500 Unidades' 
6 'mais de 500 Unidades'. 
EXECUTE.

*******************************questão 21

RECODE q21 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d_21.
VARIABLE LABELS d_21   'd_21.Quantos municípios compõem o plano de providência e/ou de apoio técnico do Estado'.
VALUE LABELS   d_21
0 'Nenhum Município' 
1 'Até 5 Municípios' 
2 '6 a 10 Municípios' 
3 '11 a 50  Municípios'  
4 '51 a 200 Municípios'
5 '201 a 500 Municípios' 
6 'mais de 500 Municípios'. 
EXECUTE.


*******************************questão 22

RECODE q22 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d_22.
VARIABLE LABELS d_22   'd_22.Quantos municípios do estado receberam visitas técnicas da Secretaria Estadual de Assistência Social'.
VALUE LABELS   d_22
0 'Nenhum Município' 
1 'Até 5 Municípios' 
2 '6 a 10 Municípios' 
3 '11 a 50  Municípios'  
4 '51 a 200 Municípios'
5 '201 a 500 Municípios' 
6 'mais de 500 Municípios'. 
EXECUTE.



****************************************questão 23

RECODE q23_1 (0=1) INTO d_23_1.
RECODE q23_1_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_23_1.
VARIABLE LABELS  d_23_1  'd_23_1. Capacitação presencial para as(os) trabalhadoras(es) estaduais da assistência social '.
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
VARIABLE LABELS  d_23_2  'd_23_2. Capacitação à distância para as(os) trabalhadoras(es) estaduais da assistência social'.
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
VARIABLE LABELS  d_23_3  'd_23_3. Capacitação presencial para as(os) trabalhadoras(es) municipais da assistência social'.
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
VARIABLE LABELS  d_23_4  'd_23_4. Capacitação à distância para as(os) trabalhadoras(es) municipais da assistência social'.
VALUE LABELS d_23_4
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.

****************************************questão 24

RECODE q24_1  (0=1) INTO d_24_1.
RECODE q24_1_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_24_1.
VARIABLE LABELS  d_24_1 'd_24_1.Capacitação presencial para as(os) conselheiras(os) estaduais'.
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
VARIABLE LABELS  d_24_2 'd_24_2.Capacitação à distância para as(os) conselheiras(os) estaduais'.
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
VARIABLE LABELS  d_24_3 'd_24_3.Capacitação presencial para as(os) conselheiras(os) municipais'.
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
VARIABLE LABELS  d_24_4    'd_24_4.Capacitação à distância para as(os) conselheiras(os) municipais'.
VALUE LABELS d_24_4
1 'Nenhuma'
2 'De 1 a 5 conselheiras(os)'
3 'De 6 a 10 conselheiras(os)'
4 'De 10 a 500 conselheiras(os)' 
5 'De 501 a 1000 conselheiras(os)' 
6 'Mais de 1000 conselheiras(os)'. 
EXECUTE.


****************************************questão 25

RECODE q25_1_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_1_1.
VARIABLE LABELS  d_25_1_1 'd_25_1_1.Representantes da Gestão Estadual - Titulares'.
VALUE LABELS d_25_1_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_1_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_1_2.
VARIABLE LABELS  d_25_1_2 'd_25_1_2.Representantes da Gestão Estadual - Suplentes'.
VALUE LABELS d_25_1_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_2_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_2_1.
VARIABLE LABELS  d_25_2_1 'd_25_2_1.Representantes de Municípios de Pequeno Porte I - Titulares'.
VALUE LABELS d_25_2_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_2_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_2_2.
VARIABLE LABELS  d_25_2_2 'd_25_2_2.Representantes de Municípios de Pequeno Porte I - Suplentes'.
VALUE LABELS d_25_2_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_3_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_3_1.
VARIABLE LABELS  d_25_3_1 'd_25_3_1.Representantes de Municípios de Pequeno Porte II - Titulares'.
VALUE LABELS d_25_3_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_3_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_3_2.
VARIABLE LABELS  d_25_3_2 'd_25_3_2.Representantes de Municípios de Pequeno Porte II - Suplentes'.
VALUE LABELS d_25_3_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_4_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_4_1.
VARIABLE LABELS  d_25_4_1 'd_25_4_1.Representantes de Municípios de Médio Porte - Titulares'.
VALUE LABELS d_25_4_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_4_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_4_2.
VARIABLE LABELS  d_25_4_2 'd_25_4_2.Representantes de Municípios de Médio Porte - Suplentes'.
VALUE LABELS d_25_4_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_5_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_5_1.
VARIABLE LABELS  d_25_5_1 'd_25_5_1.Representantes de Municípios de Grande Porte - Titulares'.
VALUE LABELS d_25_5_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_5_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_5_2.
VARIABLE LABELS  d_25_5_2 'd_25_5_2. Representantes de Municípios de Grande Porte - Suplentes'.
VALUE LABELS d_25_5_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


RECODE q25_6_1  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_6_1.
VARIABLE LABELS  d_25_6_1 'd_25_6_1.Representantes de Metrópoles/capitais - Titulares'.
VALUE LABELS d_25_6_1
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.

RECODE q25_6_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_25_6_2.
VARIABLE LABELS  d_25_6_2 'd_25_6_2. Representantes de Metrópoles/capitais - Suplentes'.
VALUE LABELS d_25_6_2
1 'Nenhum titular'
2 'De 1 a 5 titulares'
3 'De 6 a 10 titulares'
4 'Mais de 10 titulares'. 
EXECUTE.


******q31*******************************************************************************************

RECODE q31  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_31.
VARIABLE LABELS  d_31  'd_31. Quantas reuniões a CIB realizou no ano de 2018'.
VALUE LABELS d_31
1 'Nenhuma'
2 'De 1 a 5 reuniões'
3 'De 6 a 10 reuniões'
4 'Mais de 10 reuniões'.
EXECUTE.



******q32*******************************************************************************************

RECODE q32  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_32.
VARIABLE LABELS  d_32  'd_32. Quantas reuniões descentralizadas a CIB realizou no ano de 2018'.
VALUE LABELS d_32
1 'Nenhuma'
2 'De 1 a 5 reuniões'
3 'De 6 a 10 reuniões'
4 'Mais de 10 reuniões'.
EXECUTE.

***q36*****************************************************************************************

RECODE q36_1_1  (0=1) INTO d_36_1_1.
RECODE q36_1_2  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_1_1 .
VARIABLE LABELS  d_36_1_1  'd_36_1_1. Quantidade de vagas para nível superior'.
VALUE LABELS d_36_1_1
1 'Nenhuma'
2 'De 1 a 20 vagas'
3 'De 21 a 50 vagas'
4 'De 51 a 100 vagas' 
5 'Mais de 100 vagas'. 
EXECUTE.

RECODE q36_1_3  (0=1) INTO d_36_1_5.
RECODE d_36_1_5  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_1_5.
VARIABLE LABELS  d_36_1_5   'd_36_1_5 . Quantidade de trabalhadores de nível superior que tomaram posse'.
VALUE LABELS d_36_1_5
1 'Nenhum'
2 'De 1 a 20 trabalhadores'
3 'De 21 a 50 trabalhadores'
4 'De 51 a 100 trabalhadores'
5 'Mais de 100 trabalhadores'. 
EXECUTE.

RECODE q36_2_1  (0=1) INTO d_36_2_1.
RECODE q36_2_2  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_2_1 .
VARIABLE LABELS  d_36_2_1  'd_36_2_1. Quantidade de vagas para nível médio'.
VALUE LABELS d_36_2_1
1 'Nenhuma'
2 'De 1 a 20 vagas'
3 'De 21 a 50 vagas'
4 'De 51 a 100 vagas' 
5 'Mais de 100 vagas'. 
EXECUTE.

RECODE q36_2_3  (0=1) INTO d_36_2_5.
RECODE d_36_2_5  (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_36_2_5.
VARIABLE LABELS  d_36_2_5   'd_36_2_5 . Quantidade de trabalhadores de nível médio que tomaram posse'.
VALUE LABELS d_36_2_5
1 'Nenhum'
2 'De 1 a 20 trabalhadores'
3 'De 21 a 50 trabalhadores'
4 'De 51 a 100 trabalhadores'
5 'Mais de 100 trabalhadores'. 
EXECUTE.