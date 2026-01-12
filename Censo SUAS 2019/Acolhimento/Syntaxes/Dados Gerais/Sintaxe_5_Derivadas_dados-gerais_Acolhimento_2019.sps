* Encoding: UTF-8.

** Tempo de Implantação da Unidade

COMPUTE time=DATE.DMY(31,12,2019).
VARIABLE LABELS time "DataCenso recodificada".
VARIABLE LEVEL  time (SCALE).
FORMATS time (EDATE10).
VARIABLE WIDTH  time(10).
EXECUTE.




COMPUTE  Dtempo=DATEDIF(time,q0_15, "years"). 
VARIABLE LABELS  Dtempo 'Dident15_Tempo de Implantação da Unidade'.  
VARIABLE LEVEL  Dtempo (SCALE). 
FORMATS Dtempo (F5.0). 
VARIABLE WIDTH Dtempo(5). 
EXECUTE.  

**(se o comando der errado, verifique se a variável ident_15 está em formato "Date". 




DELETE VARIABLES time. 
Execute. 

recode Dtempo (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into Dtempo_2.
execute.

VARIABLE LABELS Dtempo_2 'Dtempo_2_Tempo de Implantação da Unidade'. 
FORMATS Dtempo_2 (f1.0).

value labels Dtempo_2
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.

** Reclassificação de públicos segundo cofinanciamento

IF  (q1_1 = 319) D1_1_cof_Adultos_Famílias =1.
EXECUTE.
IF  (q1_1 = 315 | q1_1 = 316 | q1_1 = 317) D1_1_cof_Crianças =1.
EXECUTE.
IF  (q1_1 =  318) D1_1_cof_Adultos_com_deficiencia =1.
EXECUTE.
IF  (q1_1 = 318 | q1_1 =321 | q1_1 =322) D1_1_cof_Outros_Publicos =1.
EXECUTE.

VARIABLE LABELS D1_1_cof_Adultos_Famílias 'Unidades de referência para o cofinanciamento para Adultos e Famílias'.
VARIABLE LABELS D1_1_cof_Crianças 'Unidades de referência para o cofinanciamento para Crianças, Adolescentes e Jovens'.
VARIABLE LABELS D1_1_cof_Adultos_com_deficiencia 'Unidades de referência para o cofinanciamento para Residências Inclusivas'.
VARIABLE LABELS D1_1_cof_Outros_Publicos 'Unidades de referência para o cofinanciamento para outros públicos'.

**Capacidade Máxima de Atendimento - Cuidado com 0 ou 1

RECODE q11  (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D11.
VARIABLE LABELS  D11 'D11_Capacidade máxima para atendimento (numero de vagas) da unidade'.
FORMATS D11 (f1.0).
EXECUTE.

VALUE LABELS D11
1	'De 0 a 5 vagas'
2	'De 6 a 10 vagas'
3	'De 11 a 20 vagas'
4	'De 21 a 40 vagas'
5	'De 41 a 60 vagas'
6	'De 61 a 80 vagas'
7	'De 81 a 100 vagas'
8	'Mais de 100 vagas'.
EXECUTE.

*****quantidade de vagas ocupadas - Cuidado com 0 ou 1 

RECODE q12 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D12.
VARIABLE LABELS  D12 'D12_Quantas pessoas estão acolhidas na unidade (número de vagas ocupadas)'.
FORMATS D12 (f1.0).
EXECUTE.

VALUE LABELS D12
1	'De 0 a 5 pessoas'
2	'De 6 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.

** Se está na capacidade

if ( q12>q11) D_11_12 = 1. 
if (q12=q11) D_11_12 = 2. 
if (q12<q11) D_11_12 = 3. 

VARIABLE LABELS  D_11_12 'D_11_12_Se a unidade está acima, na ou abaixo da capacidade'.
FORMATS D_11_12 (f1.0).

VALUE LABELS D_11_12
1 'Acima da capacidade - Mais acolhidos do que vagas'
2 'Na capacidade - Quantidade Igual de acolhidos e vagas'
3 'Abaixo da capacidade - Menos acolhidos do que vagas'. 
execute. 

*** Quantidade de crianças que retornaram a família de origem

RECODE q13 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D13.
VARIABLE LABELS  D13 'D13_Quantas crianças/adolescentes desta unidade retornaram às suas famílias de origem'.
FORMATS D13 (f1.0).
EXECUTE.

VALUE LABELS D13
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.


*** Quantidade de crianças que foram encaminhadas a famílias substitutas_REINTEGRAÇÃO

RECODE q14 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D14.
VARIABLE LABELS  D14 'D14_Quantas crianças/adolescentes foram encaminhadas a famílias substitutas'.
FORMATS D14 (f1.0).
EXECUTE.

VALUE LABELS D14
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.



** Perfil dos Acolhidos


*** Quantidade de acolhidos de 0 a 5 anos

compute D15_M_0a5= SUM (q15_1_1, q15_1_2) .
compute D15_F_0a5= SUM ( q15_2_1, q15_2_2) .
compute D15_0a5= SUM (q15_1_1, q15_2_1,q15_1_2, q15_2_2) .
execute.


VARIABLE LABELS D15_M_0a5 'D15.1_M_0a5_Quantidade de pessoas acolhidas: Masculino - 0 a 5'.
VARIABLE LABELS D15_F_0a5 'D15.1_F_0a5_Quantidade de pessoas acolhidas: Feminino - 0 a 5'.
VARIABLE LABELS D15_0a5 'D15.1_0a5_Quantidade de pessoas acolhidas: Total - 0 a 5'.
Execute.

formats D15_M_0a5 (f1.0).
formats D15_F_0a5 (f1.0).
formats D15_0a5 (f1.0).

*** Quantidade de acolhidos de 0 a 17 anos

compute D15_M_0a17= SUM (q15_1_1,  q15_1_2, q15_1_3, q15_1_4, q15_1_5, q15_1_6) .
compute D15_F_0a17= SUM ( q15_2_1, q15_2_2, q15_2_3, q15_2_4, q15_2_5,q15_2_6) .
compute D15_0a17= SUM (q15_1_1,  q15_1_2, q15_1_3, q15_1_4, q15_1_5, q15_1_6,q15_2_1, q15_2_2, q15_2_3, q15_2_4, q15_2_5,q15_2_6 ) .
execute.

VARIABLE LABELS D15_M_0a17 'D15.1_M_0a17_Quantidade de pessoas acolhidas: Masculino - 0 a 17'.
VARIABLE LABELS D15_F_0a17 'D15.1_F_0a17_Quantidade de pessoas acolhidas: Feminino - 0 a 17'.
VARIABLE LABELS D15_0a17 'D15.1_0a17_Quantidade de pessoas acolhidas: Total - 0 a 17'.
Execute.

formats D15_M_0a17 (f1.0).
formats D15_F_0a17 (f1.0).
formats D15_0a17 (f1.0).


compute D15_M_60oumais= SUM (q15_1_9, q15_1_10) .
compute D15_F_60oumais= SUM ( q15_2_9, q15_2_10) .
compute D15_60oumais= SUM (q15_1_9, q15_1_10, q15_2_9, q15_2_10) .
execute.


VARIABLE LABELS D15_M_60oumais 'D15.1_M_60oumais_Quantidade de pessoas acolhidas: Masculino - 60 ou mais'.
VARIABLE LABELS D15_F_60oumais 'D15.1_F_60oumais_Quantidade de pessoas acolhidas: Feminino - 60 ou mais'.
VARIABLE LABELS D15_60oumais 'D15.1_60oumais_Quantidade de pessoas acolhidas: Total - 60 ou mais'.
Execute.

formats D15_M_60oumais (f1.0).
formats D15_F_60oumais (f1.0).
formats D15_60oumais (f1.0).


**** quantidade de pessoas idosas  ou com deficiencia  com BPC


RECODE q16_1 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D16_1.
VARIABLE LABELS D16_1 'D16_1_Quantas pessoas idosas são beneficiarias do BPC'.
FORMATS D16_1 (f1.0).
EXECUTE.

VALUE LABELS D16_1
1	'De 0 a 5 pessoas'
2	'De 6 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.




RECODE q16_2 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D16_2.
VARIABLE LABELS D16_2 'D16_2_Quantas pessoas  com deficiencia são beneficiarias do BPC'.
FORMATS D16_2 (f1.0).
EXECUTE.

VALUE LABELS D16_2
1	'De 0 a 5 pessoas'
2	'De 6 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.

**** quantidade de pessoas idosas  qu4e recebem pensão


RECODE q17 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D17.
VARIABLE LABELS D17 'D17_Quantas pessoas idosas recebem pensão/aposentadoria'.
FORMATS D17 (f1.0).
EXECUTE.

VALUE LABELS D17
1	'De 0 a 5 pessoas'
2	'De 6 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.


**** quantidade de pessoas beneficiarias PBF


RECODE q18 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D18.
VARIABLE LABELS D18 'D18_Quantas pessoas são beneficiarias do PBF'.
FORMATS D18 (f1.0).
EXECUTE.

VALUE LABELS D18
1	'De 0 a 5 pessoas'
2	'De 6 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.


**** quantidade de pessoas dormitorio

RECODE q19 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D19.
VARIABLE LABELS  D19 'D19_Numero máximo de pessoas dormindo em um mesmo dormitório'.
FORMATS D19 (f1.0).
EXECUTE.

VALUE LABELS D19
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.

** Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro município

RECODE q20 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D20.
VARIABLE LABELS  D20  'D20_Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro município'.
FORMATS D20  (f1.0).
EXECUTE.

VALUE LABELS D20
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


** Das pessoas atualmente acolhidas nesta unidade, segundo o tempo

RECODE q21_1 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_1.
VARIABLE LABELS  D21_1   'D21_1_Das pessoas atualmente acolhidas nesta unidade, quantas tem menos de 1 mes de acolhimento'.
FORMATS D21_1  (f1.0).
EXECUTE.

VALUE LABELS  D21_1
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.

RECODE q21_2 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_2.
VARIABLE LABELS  D21_2  'D21_2_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 1 a 3 meses de acolhimento'.
FORMATS D21_2  (f1.0).
EXECUTE.

VALUE LABELS  D21_2
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q21_3 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_3.
VARIABLE LABELS  D21_3  'D21_3_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 4 a 6 meses de acolhimento'.
FORMATS D21_3  (f1.0).
EXECUTE.

VALUE LABELS  D21_3
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q21_4 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_4.
VARIABLE LABELS  D21_4  'D21_4_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 7 a 12 meses de acolhimento'.
FORMATS D21_4  (f1.0).
EXECUTE.

VALUE LABELS  D21_4
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q21_5 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_5.
VARIABLE LABELS  D21_5  'D21_5_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 13 a 24 meses de acolhimento'.
FORMATS D21_5  (f1.0).
EXECUTE.

VALUE LABELS  D21_5
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.

RECODE q21_6 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_6.
VARIABLE LABELS  D21_6  'D21_6_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 25 a 48 meses de acolhimento'.
FORMATS D21_6  (f1.0).
EXECUTE.

VALUE LABELS  D21_6
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.



RECODE q21_7 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_7.
VARIABLE LABELS  D21_7  'D21_7_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 49 a 72 meses de acolhimento'.
FORMATS D21_7  (f1.0).
EXECUTE.

VALUE LABELS  D21_7
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q21_8 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D21_8.
VARIABLE LABELS  D21_8  'D21_8_Das pessoas atualmente acolhidas nesta unidade, quantas tem mais de 72 meses de acolhimento'.
FORMATS D21_8  (f1.0).
EXECUTE.

VALUE LABELS  D21_8
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.



*** Características específcas dos acohidos

recode q22_1 (0=0) (sysmiss=sysmiss) (else=1) into D22_1.
FORMATS D22_1 (f1.0).
execute.

VARIABLE LABELS D22_1 'D22_1_Unidades com pelo menos 1 acolhido com Deficiência (física/sensorial/intelectual'. 
value labels D22_1
0 'Não'
1 'Sim'. 

recode q22_2 (0=0) (sysmiss=sysmiss) (else=1) into D22_2.
FORMATS D22_2 (f1.0).
execute.

VARIABLE LABELS D22_2 'D22_2_Unidades com pelo menos 1 acolhido com Doença Mental (Transtorno Mental)'. 
value labels D22_2
0 'Não'
1 'Sim'. 

recode q22_3 (0=0) (sysmiss=sysmiss) (else=1) into D22_3.
FORMATS D22_3 (f1.0).
execute.

VARIABLE LABELS D22_3 'D22_3_Unidades com pelo menos 1 acolhido Refugiado/Imigrante (pessoas de outro país)'. 
value labels D22_3
0 'Não'
1 'Sim'. 


recode q22_4 (0=0) (sysmiss=sysmiss) (else=1) into D22_4.
FORMATS D22_4 (f1.0).
execute.

VARIABLE LABELS D22_4 'D22_4_Unidades com pelo menos 1 acolhidoTravesti, Transexual ou transgênero '. 
value labels   D22_4
0 'Não'
1 'Sim'. 

recode q22_5 (0=0) (sysmiss=sysmiss) (else=1) into D22_5.
FORMATS D22_5 (f1.0).
execute.

VARIABLE LABELS D22_5 'D22_5_Unidades com pelo menos 1 acolhido Adolescentes em cumprimento de Medidas Socioeducativas'. 
value labels D22_5
0 'Não'
1 'Sim'.


recode q22_6 (0=0) (sysmiss=sysmiss) (else=1) into D22_6.
FORMATS D22_6 (f1.0).
execute.

VARIABLE LABELS D22_6 'D22_6_Unidades com pelo menos 1 acolhido Trajetória de rua'. 
value labels D22_6
0 'Não'
1 'Sim'.

recode q22_7 (0=0) (sysmiss=sysmiss) (else=1) into D22_7.
FORMATS D22_7 (f1.0).
execute.

VARIABLE LABELS  D22_7 'D22_7_Unidades com pelo menos 1 acolhido Indígena'. 
value labels D22_7
0 'Não'
1 'Sim'.

recode q22_8 (0=0) (sysmiss=sysmiss) (else=1) into D22_8.
FORMATS D22_8 (f1.0).
execute.

VARIABLE LABELS  D22_8 'D22_8_Unidades com pelo menos 1 acolhido Outros Povos e comunidades tradicionais'. 
value labels D22_8
0 'Não'
1 'Sim'.


recode q22_9 (0=0) (sysmiss=sysmiss) (else=1) into D22_9.
FORMATS D22_9 (f1.0).
execute.

VARIABLE LABELS  D22_9 'D22.9_Unidades com pelo menos 1 acolhido Egressos do sistema prisional'. 
value labels D22_9
0 'Não'
1 'Sim'.



recode q22_10 (0=0) (sysmiss=sysmiss) (else=1) into D22_10.
FORMATS D22_10 (f1.0).
execute.

VARIABLE LABELS  D22_10 'D22_10_Unidades com pelo menos 1 acolhido dependente de alcool ou outras drogas'. 
value labels D22_10
0 'Não'
1 'Sim'.


recode q22_11 (0=0) (sysmiss=sysmiss) (else=1) into D22_11.
FORMATS D22_11 (f1.0).
execute.

VARIABLE LABELS  D22_11 'D22_11_Unidades com pelo menos 1 acolhido vitima de trafico de seres humanos'. 
value labels D22_11
0 'Não'
1 'Sim'.


*************criterio de idade para admissão***********************************************

recode q29_1 (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into D29_1.
execute.

VARIABLE LABELS D29_1 'D29_1_idade minima para admissão'. 
FORMATS D29_1  (f1.0).

value labels D29_1
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.



recode q29_2 (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into D29_2.
execute.

VARIABLE LABELS D29_2 'D29_2_idade maxima para admissão'. 
FORMATS D29_2  (f1.0).

value labels D29_2
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.

*****espaço fisico*******************************************************************************************************

RECODE q38_1  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_1.
VARIABLE LABELS D38_1  'D38_1_Sala de administração'.
EXECUTE.

VALUE LABELS D38_1
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.



RECODE q38_2  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_2.
VARIABLE LABELS D38_2  'D38_2_Sala de reunião'.
EXECUTE.

VALUE LABELS D38_2
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.

RECODE q38_3  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_3.
VARIABLE LABELS D38_3  'D38_3_Sala para atendimento técnico especializado (psicóloga(o), assistente social, etc)'.
EXECUTE.

VALUE LABELS D38_3
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.


RECODE q38_4  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_4.
VARIABLE LABELS D38_4  'D38_4_Sala de estar, de convivência ou de outras atividades de grupo'.
EXECUTE.

VALUE LABELS D38_4
1"Até 1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.


RECODE q38_5  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_5.
VARIABLE LABELS D38_5  'D38_5_Dormitórios para as(os) Usuárias(os) acolhidas(os)'.
EXECUTE.

VALUE LABELS D38_5
1"Até 1 Dormitório" 
 2"De 2 a 3 Dormitórios"  
3"De 4 a 5 Dormitórios" 
4"De 6 a 7 Dormitórios"
 5"8 ou mais Dormitórios".
EXECUTE.

RECODE q38_6  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_6.
VARIABLE LABELS D38_6  'D38_6_Dormitórios para as(os) Cuidadoras(es)'.
EXECUTE.

VALUE LABELS D38_6
1"Até 1 Dormitório" 
 2"De 2 a 3 Dormitórios"  
3"De 4 a 5 Dormitórios" 
4"De 6 a 7 Dormitórios"
 5"8 ou mais Dormitórios".
EXECUTE.

RECODE q38_7  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_7.
VARIABLE LABELS D38_7  'D38_7_Banheiros para as(os) Usuárias(os) acolhidas(os)'.
EXECUTE.

VALUE LABELS D38_7
1"Até 1 Banheiro" 
 2"De 2 a 3 Banheiros"  
3"De 4 a 5 Banheiros" 
4"De 6 a 7 Banheiros"
 5"8 ou mais Banheiros".
EXECUTE.

RECODE q38_8  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO D38_8.
VARIABLE LABELS D38_8  'D38_8_Banheiros exclusivos para Funcionárias(os)'.
EXECUTE.

VALUE LABELS D38_8
1"Até 1 Banheiro" 
 2"De 2 a 3 Banheiros"  
3"De 4 a 5 Banheiros" 
4"De 6 a 7 Banheiros"
 5"8 ou mais Banheiros".
EXECUTE.

** Quantidade de Computadores, armarios, camas e televisões***

RECODE q39_20_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_20_1.
execute. 
VARIABLE LABELS D39_20_1 'D39_20_1_quantas camas/berços'. 
FORMATS D39_20_1  (f1.0).

value labels D39_20_1
0 "nenhuma cama/berço"
1 "1  cama/berço"
2 "2   camas/berços"
3 "3   camas/berços"
4 "4   camas/berços"
5 "5   camas/berços"
6 "de 6 a 10 camas/berços"
7 "Mais de 11 camas/berços".
execute.



RECODE q39_21_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_21_1.
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
 

RECODE q39_22_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_22_1.
execute. 
VARIABLE LABELS D39_22_1 'D39_22_1_quantas televisões'. 
FORMATS D39_22_1  (f1.0).

value labels D39_22_1
0 "nenhuma televisão"
1 "1  televisão"
2 "2   televisões"
3 "3   televisões"
4 "4   televisões"
5 "5   televisões"
6 "de 6 a 10  televisões"
7 "Mais de 11  televisões".
execute.
 


RECODE q39_23_1  (0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=6)  (11 thru Highest=7) INTO D39_23_1.
execute. 
VARIABLE LABELS D39_23_1 'D39_23_1_Quantos Computadores ligados à internet?'. 
FORMATS D39_23_1  (f1.0).

value labels D39_23_1
0 "nenhum Computador ligado à internet"
1 "1  Computador ligado à internet"
2 "2  Computadores ligados à internet"
3 "3  Computadores ligados à internet"
4 "4  Computadores ligados à internet"
5 "5  Computadores ligados à internet"
6 "de 6 a 10  Computadores ligados à internet"
7 "Mais de 11 Computadores ligados à internet".
execute.

* 

RECODE q43_1 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO D43_1. 
VARIABLE LABELS D43_1   'D43_1.Quantos profissionais participaram de algum curso do CAPACITASUAS'. 
VALUE LABELS
/d43_1 
1"1 a 2 profissionais"
2"3 a 5 profissionais"
3"6 a 10 profissionais"
4"11 a 20 profissionais"
5"Mais de 20 profissionais" .





