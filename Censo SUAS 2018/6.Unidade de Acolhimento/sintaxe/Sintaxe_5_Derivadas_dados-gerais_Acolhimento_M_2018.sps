* Encoding: windows-1252.

** Tempo de Implanta��o da Unidade

COMPUTE time=DATE.DMY(31,12,2018).
VARIABLE LABELS time "DataCenso recodificada".
VARIABLE LEVEL  time (SCALE).
FORMATS time (EDATE10).
VARIABLE WIDTH  time(10).
EXECUTE.




COMPUTE  Dtempo=DATEDIF(time,q_0_15, "years"). 
VARIABLE LABELS  Dtempo 'Dident15_Tempo de Implanta��o da Unidade'.  
VARIABLE LEVEL  Dtempo (SCALE). 
FORMATS Dtempo (F5.0). 
VARIABLE WIDTH Dtempo(5). 
EXECUTE.  



**(se o comando der errado, verifique se a vari�vel ident_15 est� em formato "Date". 

DELETE VARIABLES time. 
Execute. 

recode Dtempo (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into Dtempo_2.
execute.

VARIABLE LABELS Dtempo_2 'Dtempo_2_Tempo de Implanta��o da Unidade'. 
FORMATS Dtempo_2 (f1.0).

value labels Dtempo_2
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.

** P�blico crian�a e adolescente

RECODE q_1_1  (315=1) (317=1) (ELSE=0) INTO D1_crianca.
EXECUTE.

VARIABLE LABELS D1_crianca 'D1_crianca_P�blico crian�a e adolescente (q1=315 | q1=317)'.
FORMATS D1_crianca (f1.0).
EXECUTE.

value labels D1_crianca
1 'Crian�a e Adolescente'
0 'Outros p�blicos'. 

** P�blico crian�a, adolescentes e jovens egressos

RECODE q_1_1 (315=1) (316=1) (317=1) (ELSE=0) INTO D1_crianca_jovem.
EXECUTE.

VARIABLE LABELS D1_crianca_jovem 'D1_crianca_P�blico crian�a, adolescente e jovens egressos (q1=315 | q1=316 | q1=317)'.
FORMATS D1_crianca_jovem (f1.0).
EXECUTE.

value labels D1_crianca_jovem
1 'Crian�a, Adolescente e jovens Egressos'
0 'Outros p�blicos'. 


** Quantidade de Munic�pios com os quais o acolhimento tem algum termo de parceria/convenio/coopera��o

*RECODE D9_sum (sysmiss=sysmiss) (0 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru highest=4) into D9. 
*execute.

*FORMATS D9 (f1.0).
*variable labels D9 'D9_Quantidade de outros munic�pios que tem termo de parceria/conveio/coopera��o com esta unidade'.

*value labels D9 
1 'At� 2 munic�pios'
2 'De 3 a 5 munic�pios'
3 'De 6 a 10 munic�pios'
4 'Mais de 10 munic�pios'. 
*execute. 



**Capacidade M�xima de Atendimento - Cuidado com 0 ou 1

RECODE q_11  (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D11.
VARIABLE LABELS  D11 'D11_Capacidade m�xima para atendimento (numero de vagas) da unidade'.
FORMATS D11 (f1.0).
EXECUTE.

VALUE LABELS D11
1	De 0 a 5 vagas
2	De 6 a 10 vagas
3	De 11 a 20 vagas
4	De 21 a 40 vagas
5	De 41 a 60 vagas
6	De 61 a 80 vagas
7	De 81 a 100 vagas
8	Mais de 100 vagas.
EXECUTE.

*****quantidade de vagas ocupadas - Cuidado com 0 ou 1 

RECODE q_12 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D12.
VARIABLE LABELS  D12 'D12_Quantas pessoas est�o acolhidas na unidade (n�mero de vagas ocupadas)'.
FORMATS D12 (f1.0).
EXECUTE.

VALUE LABELS D12
1	De 0 a 5 pessoas
2	De 6 a 10 pessoas
3	De 11 a 20 pessoas
4	De 21 a 40 pessoas
5	De 41 a 60 pessoas
6	De 61 a 80 pessoas
7	De 81 a 100 pessoas
8	Mais de 100 pessoas.
EXECUTE.

*** Quantidade de crian�as que retornaram a fam�lia de origem

RECODE q_13 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D13.
VARIABLE LABELS  D13 'D13_Quantas crian�as/adolescentes desta unidade retornaram �s suas fam�lias de origem'.
FORMATS D13 (f1.0).
EXECUTE.

VALUE LABELS D13
1	'Nenhuma crian�as/adolescentes'
2	'De 1 a 2 crian�as/adolescentes'	
3	'De 3 a 5 crian�as/adolescentes'
4	'De 6 a 10 crian�as/adolescentes'
5	'De 11 a 20 crian�as/adolescentes'
6	'De 21 a 40 crian�as/adolescentes'
7	'De 41 a 60 crian�as/adolescentes'
8	'Mais de 60 crian�as/adolescentes'.
EXECUTE.


*** Quantidade de crian�as que foram encaminhadas a fam�lias substitutas_REINTEGRA��O

RECODE q_14 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D14.1.1.
VARIABLE LABELS  D14.1.1 'D14.1.1_Quantas crian�as/adolescentes foram encaminhadas a fam�lias substitutas'.
FORMATS D14.1.1 (f1.0).
EXECUTE.

VALUE LABELS D14.1.1
1	'Nenhuma crian�as/adolescentes'
2	'De 1 a 2 crian�as/adolescentes'	
3	'De 3 a 5 crian�as/adolescentes'
4	'De 6 a 10 crian�as/adolescentes'
5	'De 11 a 20 crian�as/adolescentes'
6	'De 21 a 40 crian�as/adolescentes'
7	'De 41 a 60 crian�as/adolescentes'
8	'Mais de 60 crian�as/adolescentes'.
EXECUTE.



** Perfil dos Acolhidos


*** Quantidade de acolhidos de 0 a 5 anos

compute D15_M_0a5= SUM (q_15_1_1, q_15_1_2) .
compute D15_F_0a5= SUM ( q_15_2_1, q_15_2_2) .
compute D15_0a5= SUM (q_15_1_1, q_15_2_1,q_15_1_2, q_15_2_2) .
execute.


VARIABLE LABELS D15_M_0a5 'D15.1_M_0a5_Quantidade de pessoas acolhidas: Masculino - 0 a 5'.
VARIABLE LABELS D15_F_0a5 'D15.1_F_0a5_Quantidade de pessoas acolhidas: Feminino - 0 a 5'.
VARIABLE LABELS D15_0a5 'D15.1_0a5_Quantidade de pessoas acolhidas: Total - 0 a 5'.
Execute.

formats D15_M_0a5 (f1.0).
formats D15_F_0a5 (f1.0).
formats D15_0a5 (f1.0).

*** Quantidade de acolhidos de 0 a 17 anos

compute D15_M_0a17= SUM (q_15_1_1,  q_15_1_2, q_15_1_3, q_15_1_4, q_15_1_5, q_15_1_6) .
compute D15_F_0a17= SUM ( q_15_2_1, q_15_2_2, q_15_2_3, q_15_2_4, q_15_2_5,q_15_2_6) .
compute D15_0a17= SUM (q_15_1_1,  q_15_1_2, q_15_1_3, q_15_1_4, q_15_1_5, q_15_1_6,q_15_2_1, q_15_2_2, q_15_2_3, q_15_2_4, q_15_2_5,q_15_2_6 ) .
execute.

VARIABLE LABELS D15_M_0a17 'D15.1_M_0a17_Quantidade de pessoas acolhidas: Masculino - 0 a 17'.
VARIABLE LABELS D15_F_0a17 'D15.1_F_0a17_Quantidade de pessoas acolhidas: Feminino - 0 a 17'.
VARIABLE LABELS D15_0a17 'D15.1_0a17_Quantidade de pessoas acolhidas: Total - 0 a 17'.
Execute.

formats D15_M_0a17 (f1.0).
formats D15_F_0a17 (f1.0).
formats D15_0a17 (f1.0).


compute D15_M_60oumais= SUM (q_15_1_9, q_15_1_10) .
compute D15_F_60oumais= SUM ( q_15_2_9, q_15_2_10) .
compute D15_60oumais= SUM (q_15_1_9, q_15_1_10, q_15_2_9, q_15_2_10) .
execute.


VARIABLE LABELS D15_M_60oumais 'D15.1_M_60oumais_Quantidade de pessoas acolhidas: Masculino - 60 ou mais'.
VARIABLE LABELS D15_F_60oumais 'D15.1_F_60oumais_Quantidade de pessoas acolhidas: Feminino - 60 ou mais'.
VARIABLE LABELS D15_60oumais 'D15.1_60oumais_Quantidade de pessoas acolhidas: Total - 60 ou mais'.
Execute.

formats D15_M_60oumais (f1.0).
formats D15_F_60oumais (f1.0).
formats D15_60oumais (f1.0).


**** quantidade de pessoas idosas  ou com deficiencia  com BPC


RECODE q_16_1 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D16_1.
VARIABLE LABELS D16_1 'D16_1_Quantas pessoas idosas s�o beneficiarias do BPC'.
FORMATS D16_1 (f1.0).
EXECUTE.

VALUE LABELS D16_1
1	De 0 a 5 pessoas
2	De 6 a 10 pessoas
3	De 11 a 20 pessoas
4	De 21 a 40 pessoas
5	De 41 a 60 pessoas
6	De 61 a 80 pessoas
7	De 81 a 100 pessoas
8	Mais de 100 pessoas.
EXECUTE.




RECODE q_16_2 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D16_2.
VARIABLE LABELS D16_2 'D16_2_Quantas pessoas  com deficiencia s�o beneficiarias do BPC'.
FORMATS D16_2 (f1.0).
EXECUTE.

VALUE LABELS D16_2
1	De 0 a 5 pessoas
2	De 6 a 10 pessoas
3	De 11 a 20 pessoas
4	De 21 a 40 pessoas
5	De 41 a 60 pessoas
6	De 61 a 80 pessoas
7	De 81 a 100 pessoas
8	Mais de 100 pessoas.
EXECUTE.

**** quantidade de pessoas idosas  qu4e recebem pens�o


RECODE q_17 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D17.
VARIABLE LABELS D17 'D17_Quantas pessoas idosas recebem pens�o/aposentadoria'.
FORMATS D17 (f1.0).
EXECUTE.

VALUE LABELS D17
1	De 0 a 5 pessoas
2	De 6 a 10 pessoas
3	De 11 a 20 pessoas
4	De 21 a 40 pessoas
5	De 41 a 60 pessoas
6	De 61 a 80 pessoas
7	De 81 a 100 pessoas
8	Mais de 100 pessoas.
EXECUTE.


**** quantidade de pessoas beneficiarias PBF


RECODE q_18 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D18.
VARIABLE LABELS D18 'D18_Quantas pessoas s�o beneficiarias do PBF'.
FORMATS D18 (f1.0).
EXECUTE.

VALUE LABELS D18
1	De 0 a 5 pessoas
2	De 6 a 10 pessoas
3	De 11 a 20 pessoas
4	De 21 a 40 pessoas
5	De 41 a 60 pessoas
6	De 61 a 80 pessoas
7	De 81 a 100 pessoas
8	Mais de 100 pessoas.
EXECUTE.


**** quantidade de pessoas dormitorio

RECODE q_19 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D19.
VARIABLE LABELS  D19 'D19_Numero m�ximo de pessoas dormindo em um mesmo dormit�rio'.
FORMATS D19 (f1.0).
EXECUTE.

VALUE LABELS D19
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.

** Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro munic�pio

RECODE q_20 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D20.
VARIABLE LABELS  D20  'D20_Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro munic�pio'.
FORMATS D20  (f1.0).
EXECUTE.

VALUE LABELS D20
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.


** Das pessoas atualmente acolhidas nesta unidade, segundo o tempo

RECODE q_21_1 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_1.
VARIABLE LABELS  D21_1   'D21_1_Das pessoas atualmente acolhidas nesta unidade, quantas tem menos de 1 mes de acolhimento'.
FORMATS D21_1  (f1.0).
EXECUTE.

VALUE LABELS  D21_1
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.

RECODE q_21_2 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_2.
VARIABLE LABELS  D21_2  'D21_2_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 1 a 3 meses de acolhimento'.
FORMATS D21_2  (f1.0).
EXECUTE.

VALUE LABELS  D21_2
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.


RECODE q_21_3 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_3.
VARIABLE LABELS  D21_3  'D21_3_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 4 a 6 meses de acolhimento'.
FORMATS D21_3  (f1.0).
EXECUTE.

VALUE LABELS  D21_3
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.


RECODE q_21_4 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_4.
VARIABLE LABELS  D21_4  'D21_4_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 7 a 12 meses de acolhimento'.
FORMATS D21_4  (f1.0).
EXECUTE.

VALUE LABELS  D21_4
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.


RECODE q_21_5 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_5.
VARIABLE LABELS  D21_5  'D21_5_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 13 a 24 meses de acolhimento'.
FORMATS D21_5  (f1.0).
EXECUTE.

VALUE LABELS  D21_5
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.

RECODE q_21_6 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_6.
VARIABLE LABELS  D21_6  'D21_6_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 25 a 48 meses de acolhimento'.
FORMATS D21_6  (f1.0).
EXECUTE.

VALUE LABELS  D21_6
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.



RECODE q_21_7 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_7.
VARIABLE LABELS  D21_7  'D21_7_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 49 a 72 meses de acolhimento'.
FORMATS D21_7  (f1.0).
EXECUTE.

VALUE LABELS  D21_7
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.


RECODE q_21_8 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D21_8.
VARIABLE LABELS  D21_8  'D21_8_Das pessoas atualmente acolhidas nesta unidade, quantas tem mais de 72 meses de acolhimento'.
FORMATS D21_8  (f1.0).
EXECUTE.

VALUE LABELS  D21_8
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.



*** Caracter�sticas espec�fcas dos acohidos

recode q_22_1 (0=0) (sysmiss=sysmiss) (else=1) into D22.1.
FORMATS D22.1 (f1.0).
execute.

VARIABLE LABELS D22.1 'D22.1_Unidades com pelo menos 1 acolhido com Defici�ncia (f�sica/sensorial/intelectual'. 
value labels D22.1
0 'N�o'
1 'Sim'. 

recode q_22_2 (0=0) (sysmiss=sysmiss) (else=1) into D22.2.
FORMATS D22.2 (f1.0).
execute.

VARIABLE LABELS D22.2 'D22.2_Unidades com pelo menos 1 acolhido com Doen�a Mental (Transtorno Mental)'. 
value labels D22.2
0 'N�o'
1 'Sim'. 

recode q_22_3 (0=0) (sysmiss=sysmiss) (else=1) into D22.3.
FORMATS D22.3 (f1.0).
execute.

VARIABLE LABELS D22.3 'D22.3_Unidades com pelo menos 1 acolhido Refugiado/Imigrante (pessoas de outro pa�s)'. 
value labels D22.3
0 'N�o'
1 'Sim'. 


recode q_22_4 (0=0) (sysmiss=sysmiss) (else=1) into D22.4.
FORMATS D22.4 (f1.0).
execute.

VARIABLE LABELS D22.4 'D22.4_Unidades com pelo menos 1 acolhidoTravesti, Transexual ou transg�nero '. 
value labels   D22.4
0 'N�o'
1 'Sim'. 

recode q_22_5 (0=0) (sysmiss=sysmiss) (else=1) into D22.5.
FORMATS D22.5 (f1.0).
execute.

VARIABLE LABELS D22.5 'D22.5_Unidades com pelo menos 1 acolhido Adolescentes em cumprimento de Medidas Socioeducativas'. 
value labels D22.5
0 'N�o'
1 'Sim'.


recode q_22_6 (0=0) (sysmiss=sysmiss) (else=1) into D22.6.
FORMATS D22.6 (f1.0).
execute.

VARIABLE LABELS D22.6 'D22.6_Unidades com pelo menos 1 acolhido Trajet�ria de rua'. 
value labels D22.6
0 'N�o'
1 'Sim'.

recode q_22_7 (0=0) (sysmiss=sysmiss) (else=1) into D22.7.
FORMATS D22.7 (f1.0).
execute.

VARIABLE LABELS  D22.7 'D22.7_Unidades com pelo menos 1 acolhido Ind�gena'. 
value labels D22.7
0 'N�o'
1 'Sim'.

recode q_22_8 (0=0) (sysmiss=sysmiss) (else=1) into D22.8.
FORMATS D22.8 (f1.0).
execute.

VARIABLE LABELS  D22.8 'D22.8_Unidades com pelo menos 1 acolhido Outros Povos e comunidades tradicionais'. 
value labels D22.8
0 'N�o'
1 'Sim'.


recode q_22_9 (0=0) (sysmiss=sysmiss) (else=1) into D22.9.
FORMATS D22.9 (f1.0).
execute.

VARIABLE LABELS  D22.9 'D22.9_Unidades com pelo menos 1 acolhido Egressos do sistema prisional'. 
value labels D22.9
0 'N�o'
1 'Sim'.



recode q_22_10 (0=0) (sysmiss=sysmiss) (else=1) into D22.10.
FORMATS D22.10 (f1.0).
execute.

VARIABLE LABELS  D22.10 'D22.10_Unidades com pelo menos 1 acolhido dependente de alcool ou outras drogas'. 
value labels D22.10
0 'N�o'
1 'Sim'.


recode q_22_11 (0=0) (sysmiss=sysmiss) (else=1) into D22.11.
FORMATS D22.11 (f1.0).
execute.

VARIABLE LABELS  D22.11 'D22.11_Unidades com pelo menos 1 acolhido vitima de trafico de seres humanos'. 
value labels D22.11
0 'N�o'
1 'Sim'.


*************criterio de idade para admiss�o***********************************************

recode q_29_1 (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into D29_1.
execute.

VARIABLE LABELS D29_1 'D29_1_idade minima para admiss�o'. 
FORMATS D29_1  (f1.0).

value labels D29_1
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.



recode q_29_2 (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into D29_2.
execute.

VARIABLE LABELS D29_2 'D29_2_idade maxima para admiss�o'. 
FORMATS D29_2  (f1.0).

value labels D29_2
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.

*****espa�o fisico*******************************************************************************************************

RECODE q_38_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_1.
VARIABLE LABELS d_38_1  'd_38_1.Sala de administra��o'.
EXECUTE.

VALUE LABELS d_38_1
1"At� 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.



RECODE q_38_2  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_2.
VARIABLE LABELS d_38_2  'd_38_2.Sala de reuni�o'.
EXECUTE.

VALUE LABELS d_38_2
1"At� 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

RECODE q_38_3  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_3.
VARIABLE LABELS d_38_3  'd_38_3_Sala para atendimento t�cnico especializado (psic�loga(o), assistente social, etc)'.
EXECUTE.

VALUE LABELS d_38_3
1"At� 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.


RECODE q_38_4  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_4.
VARIABLE LABELS d_38_4  'd_38_4_Sala de estar, de conviv�ncia ou de outras atividades de grupo'.
EXECUTE.

VALUE LABELS d_38_4
1"At� 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.


RECODE q_38_5  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_5.
VARIABLE LABELS d_38_5  'd_38_5_Dormit�rios para as(os) Usu�rias(os) acolhidas(os)'.
EXECUTE.

VALUE LABELS d_38_5
1"At� 1 Dormit�rio" 
 2"De 2 a 3 Dormit�rios"  
3"De 4 a 5 Dormit�rios" 
4"De 6 a 7 Dormit�rios"
 5"8 ou mais Dormit�rios".
EXECUTE.

RECODE q_38_6  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_6.
VARIABLE LABELS d_38_6  'd_38_6_Dormit�rios para as(os) Cuidadoras(es)'.
EXECUTE.

VALUE LABELS d_38_6
1"At� 1 Dormit�rio" 
 2"De 2 a 3 Dormit�rios"  
3"De 4 a 5 Dormit�rios" 
4"De 6 a 7 Dormit�rios"
 5"8 ou mais Dormit�rios".
EXECUTE.

RECODE q_38_7  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_7.
VARIABLE LABELS d_38_7  'd_38_7_Banheiros para as(os) Usu�rias(os) acolhidas(os)'.
EXECUTE.

VALUE LABELS d_38_7
1"At� 1 Banheiro" 
 2"De 2 a 3 Banheiros"  
3"De 4 a 5 Banheiros" 
4"De 6 a 7 Banheiros"
 5"8 ou mais Banheiros".
EXECUTE.

RECODE q_38_8  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d_38_8.
VARIABLE LABELS d_38_8  'd_38_8_Banheiros exclusivos para Funcion�rias(os)'.
EXECUTE.

VALUE LABELS d_38_8
1"At� 1 Banheiro" 
 2"De 2 a 3 Banheiros"  
3"De 4 a 5 Banheiros" 
4"De 6 a 7 Banheiros"
 5"8 ou mais Banheiros".
EXECUTE.

** Quantidade de Computadores, armarios, camas e televis�es***

RECODE q_39_20_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_20_1.
execute. 
VARIABLE LABELS D39_20_1 'D39_20_1_quantas camas/ber�os'. 
FORMATS D39_20_1  (f1.0).

value labels D39_20_1
0 "nenhuma cama/ber�o"
1 "1  cama/ber�o"
2 "2   camas/ber�os"
3 "3   camas/ber�os"
4 "4   camas/ber�os"
5 "5   camas/ber�os"
6 "de 6 a 10 camas/ber�os"
7 "Mais de 11 camas/ber�os".
execute.



RECODE q_39_21_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_21_1.
execute. 
VARIABLE LABELS D39_21_1 'D39_21_1_quantos armarios'. 
FORMATS D39_21_1  (f1.0).

value labels D39_21_1
0 "nenhum armario"
1 "1  armario"
2 "2  armarios"
3 "3  armarios"
4 "4  armarios"
5 "5  armarios"
6 "de 6 a 10  armarios"
7 "Mais de 11  armarios".
execute.
 

RECODE q_39_22_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_22_1.
execute. 
VARIABLE LABELS D39_22_1 'D39_22_1_quantas televis�es'. 
FORMATS D39_22_1  (f1.0).

value labels D39_22_1
0 "nenhuma televis�o"
1 "1  televis�o"
2 "2   televis�es"
3 "3   televis�es"
4 "4   televis�es"
5 "5   televis�es"
6 "de 6 a 10  televis�es"
7 "Mais de 11  televis�es".
execute.
 


RECODE q_39_23_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_23_1.
execute. 
VARIABLE LABELS D39_23_1 'D39_23_1_Quantos Computadores ligados � internet?'. 
FORMATS D39_23_1  (f1.0).

value labels D39_23_1
0 "nenhum Computador ligado � internet"
1 "1  Computador ligado � internet"
2 "2  Computadores ligados � internet"
3 "3  Computadores ligados � internet"
4 "4  Computadores ligados � internet"
5 "5  Computadores ligados � internet"
6 "de 6 a 10  Computadores ligados � internet"
7 "Mais de 11 Computadores ligados � internet".
execute.



