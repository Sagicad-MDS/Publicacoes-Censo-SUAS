* Encoding: UTF-8.

** Tempo de Implantação da Unidade

COMPUTE time=DATE.DMY(31,12,2020).
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

RECODE q10  (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D10.
VARIABLE LABELS  D10 'D10_Capacidade máxima para atendimento (numero de vagas) da unidade'.
FORMATS D10 (f1.0).
EXECUTE.

VALUE LABELS D10
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

RECODE q11 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D11.
VARIABLE LABELS  D11 'D11_Quantas pessoas estão acolhidas na unidade (número de vagas ocupadas)'.
FORMATS D11 (f1.0).
EXECUTE.

VALUE LABELS D11
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

if ( q11>q10) D_10_11 = 1. 
if (q11=q10) D_10_11 = 2. 
if (q11<q10) D_10_11 = 3. 

VARIABLE LABELS  D_10_11 'D_10_11_Se a unidade está acima, na ou abaixo da capacidade'.
FORMATS D_10_11 (f1.0).

VALUE LABELS D_10_11
1 'Acima da capacidade - Mais acolhidos do que vagas'
2 'Na capacidade - Quantidade Igual de acolhidos e vagas'
3 'Abaixo da capacidade - Menos acolhidos do que vagas'. 
execute. 




**** Acolhidos no ano

RECODE q12 (0 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D12.
VARIABLE LABELS  D12 'D12_Quantas pessoas estão acolhidas na unidade nos últimos 12 meses'.
FORMATS D12 (f1.0).
EXECUTE.

VALUE LABELS D12
1	'De 0 a 10 pessoas'
2	'De 11 a 20 pessoas'
3	'De 21 a 30 pessoas'
4	'De 31 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.

**** quantidade de pessoas dormitorio

RECODE q13 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D13.
VARIABLE LABELS  D13 'D13_Numero máximo de pessoas dormindo em um mesmo dormitório'.
FORMATS D13 (f1.0).
EXECUTE.

VALUE LABELS D13
1	'De 0 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.

** Perfil dos Acolhidos


*** Quantidade de acolhidos de 0 a 5 anos

compute D14_M_0a5= SUM (q14_1_1, q14_1_2) .
compute D14_F_0a5= SUM ( q14_2_1, q14_2_2) .
compute D14_0a5= SUM (q14_1_1, q14_2_1,q14_1_2, q14_2_2) .
execute.


VARIABLE LABELS D14_M_0a5 'D15.1_M_0a5_Quantidade de pessoas acolhidas: Masculino - 0 a 5'.
VARIABLE LABELS D14_F_0a5 'D15.1_F_0a5_Quantidade de pessoas acolhidas: Feminino - 0 a 5'.
VARIABLE LABELS D14_0a5 'D15.1_0a5_Quantidade de pessoas acolhidas: Total - 0 a 5'.
Execute.

formats D14_M_0a5 (f1.0).
formats D14_F_0a5 (f1.0).
formats D14_0a5 (f1.0).

*** Quantidade de acolhidos de 0 a 17 anos

compute D14_M_0a17= SUM (q14_1_1,  q14_1_2, q14_1_3, q14_1_4, q14_1_5, q14_1_6) .
compute D14_F_0a17= SUM ( q14_2_1, q14_2_2, q14_2_3, q14_2_4, q14_2_5,q14_2_6) .
compute D14_0a17= SUM (q14_1_1,  q14_1_2, q14_1_3, q14_1_4, q14_1_5, q14_1_6,q14_2_1, q14_2_2, q14_2_3, q14_2_4, q14_2_5,q14_2_6 ) .
execute.

VARIABLE LABELS D14_M_0a17 'D15.1_M_0a17_Quantidade de pessoas acolhidas: Masculino - 0 a 17'.
VARIABLE LABELS D14_F_0a17 'D15.1_F_0a17_Quantidade de pessoas acolhidas: Feminino - 0 a 17'.
VARIABLE LABELS D14_0a17 'D15.1_0a17_Quantidade de pessoas acolhidas: Total - 0 a 17'.
Execute.

formats D14_M_0a17 (f1.0).
formats D14_F_0a17 (f1.0).
formats D14_0a17 (f1.0).


compute D14_M_60oumais= SUM (q14_1_9, q14_1_10) .
compute D14_F_60oumais= SUM ( q14_2_9, q14_2_10) .
compute D14_60oumais= SUM (q14_1_9, q14_1_10, q14_2_9, q14_2_10) .
execute.


VARIABLE LABELS D14_M_60oumais 'D15.1_M_60oumais_Quantidade de pessoas acolhidas: Masculino - 60 ou mais'.
VARIABLE LABELS D14_F_60oumais 'D15.1_F_60oumais_Quantidade de pessoas acolhidas: Feminino - 60 ou mais'.
VARIABLE LABELS D14_60oumais 'D15.1_60oumais_Quantidade de pessoas acolhidas: Total - 60 ou mais'.
Execute.

formats D14_M_60oumais (f1.0).
formats D14_F_60oumais (f1.0).
formats D14_60oumais (f1.0).


** Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro município

RECODE q15_1_1 q15_2_1 q15_3_1 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D15_1_1 D15_2_1 D15_3_1.
VARIABLE LABELS  D15_1_1  'D15_1_1_Das pessoas atualmente acolhidas nesta unidade, Vieram de outro município do estado'.
VARIABLE LABELS  D15_2_1  'D15_2_1_Das pessoas atualmente acolhidas nesta unidade, Vieram de outros estados'.
VARIABLE LABELS  D15_3_1  'D15_3_1_Das pessoas atualmente acolhidas nesta unidade, Vieram de outros países'.
FORMATS D15_1_1 D15_2_1 D15_3_1  (f1.0).
EXECUTE.

VALUE LABELS D15_1_1 D15_2_1 D15_3_1
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.



** Das pessoas atualmente acolhidas nesta unidade, segundo o tempo

RECODE q17_1 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_1.
VARIABLE LABELS  D17_1   'D17_1_Das pessoas atualmente acolhidas nesta unidade, quantas tem menos de 1 mes de acolhimento'.
FORMATS D17_1  (f1.0).
EXECUTE.

VALUE LABELS  D17_1
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.

RECODE q17_2 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_2.
VARIABLE LABELS  D17_2  'D17_2_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 1 a 3 meses de acolhimento'.
FORMATS D17_2  (f1.0).
EXECUTE.

VALUE LABELS  D17_2
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q17_3 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_3.
VARIABLE LABELS  D17_3  'D17_3_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 4 a 6 meses de acolhimento'.
FORMATS D17_3  (f1.0).
EXECUTE.

VALUE LABELS  D17_3
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q17_4 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_4.
VARIABLE LABELS  D17_4  'D17_4_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 7 a 12 meses de acolhimento'.
FORMATS D17_4  (f1.0).
EXECUTE.

VALUE LABELS  D17_4
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q17_5 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_5.
VARIABLE LABELS  D17_5  'D17_5_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 13 a 18 meses de acolhimento'.
FORMATS D17_5  (f1.0).
EXECUTE.

VALUE LABELS  D17_5
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.

RECODE q17_6 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_6.
VARIABLE LABELS  D17_6  'D17_6_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 25 a 48 meses de acolhimento'.
FORMATS D17_6  (f1.0).
EXECUTE.

VALUE LABELS  D17_6
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.



RECODE q17_7 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_7.
VARIABLE LABELS  D17_7  'D17_7_Das pessoas atualmente acolhidas nesta unidade, quantas tem de 19 a 24 meses de acolhimento'.
FORMATS D17_7  (f1.0).
EXECUTE.

VALUE LABELS  D17_7
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q17_8 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_8.
VARIABLE LABELS  D17_8  'D17_8_Das pessoas atualmente acolhidas nesta unidade, quantas tem 49 a 72 meses de acolhimento'.
FORMATS D17_8  (f1.0).
EXECUTE.

VALUE LABELS  D17_8
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.


RECODE q17_9 (0=0) (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru Highest=6) INTO D17_9.
VARIABLE LABELS  D17_9  'D17_9_Das pessoas atualmente acolhidas nesta unidade, quantas tem mais de 72 meses de acolhimento'.
FORMATS D17_9  (f1.0).
EXECUTE.

VALUE LABELS  D17_9
0 'Nenhuma pessoa'
1	'De 1 a 3 pessoas'
2	'De 4 a 6 pessoas'
3	'De 7 a 9 pessoas'
4	'De 10 a 12 pessoas'
5	'De 13 a 15 pessoas'
6	'Mais de 15 pessoas'.
EXECUTE.



**** quantidade de pessoas beneficiarias PBF


RECODE q18 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D18.
VARIABLE LABELS D18 'D18_Quantas pessoas são beneficiarias do PBF'.
FORMATS D18 (f1.0).
EXECUTE.

VALUE LABELS D18
0 'Nenhuma pessoa'
1	'De 0 a 5 pessoas'
2	'De 6 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.


*** Características específcas dos acohidos



recode q19_1 (0=0) (sysmiss=sysmiss) (else=1) into D19_1.
FORMATS D19_1 (f1.0).
execute.

VARIABLE LABELS D19_1 'D19_1_Unidades com pelo menos 1 acolhido - Deficiência (física/sensorial/intelectual'. 
value labels D19_1
0 'Não'
1 'Sim'. 

recode q19_2 (0=0) (sysmiss=sysmiss) (else=1) into D19_2.
FORMATS D19_2 (f1.0).
execute.

VARIABLE LABELS D19_2 'D19_2_Unidades com pelo menos 1 acolhido - Doença Mental (Transtorno Mental)'. 
value labels D19_2
0 'Não'
1 'Sim'. 

recode q19_3 (0=0) (sysmiss=sysmiss) (else=1) into D19_3.
FORMATS D19_3 (f1.0).
execute.

VARIABLE LABELS D19_3 'D19_3_Unidades com pelo menos 1 acolhido - Travesti, Transexual, Transgênero'. 
value labels D19_3
0 'Não'
1 'Sim'. 


recode q19_4 (0=0) (sysmiss=sysmiss) (else=1) into D19_4.
FORMATS D19_4 (f1.0).
execute.

VARIABLE LABELS D19_4 'D19_4_Unidades com pelo menos 1 acolhido - Adolescentes em cumprimento de Medidas Socioeducativas'. 
value labels   D19_4
0 'Não'
1 'Sim'. 

recode q19_5 (0=0) (sysmiss=sysmiss) (else=1) into D19_5.
FORMATS D19_5 (f1.0).
execute.

VARIABLE LABELS D19_5 'D19_5_Unidades com pelo menos 1 acolhido - Trajetória de rua'. 
value labels D19_5
0 'Não'
1 'Sim'.


recode q19_6 (0=0) (sysmiss=sysmiss) (else=1) into D19_6.
FORMATS D19_6 (f1.0).
execute.

VARIABLE LABELS D19_6 'D19_6_Unidades com pelo menos 1 acolhido - Indígenas'. 
value labels D19_6
0 'Não'
1 'Sim'.

recode q19_7 (0=0) (sysmiss=sysmiss) (else=1) into D19_7.
FORMATS D19_7 (f1.0).
execute.

VARIABLE LABELS  D19_7 'D19_7_Unidades com pelo menos 1 acolhido - Outros Povos e comunidades tradicionais'. 
value labels D19_7
0 'Não'
1 'Sim'.

recode q19_8 (0=0) (sysmiss=sysmiss) (else=1) into D19_8.
FORMATS D19_8 (f1.0).
execute.

VARIABLE LABELS  D19_8 'D19_8_Unidades com pelo menos 1 acolhido - Egressos do sistema prisional'. 
value labels D19_8
0 'Não'
1 'Sim'.


recode q19_9 (0=0) (sysmiss=sysmiss) (else=1) into D19_9.
FORMATS D19_9 (f1.0).
execute.

VARIABLE LABELS  D19_9 'D19_9_Unidades com pelo menos 1 acolhido - Pessoas vítimas de tráfico de seres humanos'. 
value labels D19_9
0 'Não'
1 'Sim'.


recode q19_10 (0=0) (sysmiss=sysmiss) (else=1) into D19_10.
FORMATS D19_10 (f1.0).
execute.

VARIABLE LABELS  D19_10 'D19_10_Unidades com pelo menos 1 acolhido - Pessoas vítimas de tráfico de seres humanos'. 
value labels D19_10
0 'Não'
1 'Sim'.


recode q19_11 (0=0) (sysmiss=sysmiss) (else=1) into D19_11.
FORMATS D19_11 (f1.0).
execute.

VARIABLE LABELS  D19_11 'D19_11_Unidades com pelo menos 1 acolhido - Pessoas em situação e/ou egressas de trabalho análogo ao de escravo'. 
value labels D19_11
0 'Não'
1 'Sim'.


recode q19_11 (0=0) (sysmiss=sysmiss) (else=1) into D19_11.
FORMATS D19_11 (f1.0).
execute.

VARIABLE LABELS  D19_11 'D19_11_Unidades com pelo menos 1 acolhido - Pessoas em situação e/ou egressas de trabalho análogo ao de escravo'. 
value labels D19_11
0 'Não'
1 'Sim'.


recode q19_12 (0=0) (sysmiss=sysmiss) (else=1) into D19_12.
FORMATS D19_12 (f1.0).
execute.

VARIABLE LABELS  D19_12 'D19_12_Unidades com pelo menos 1 acolhido - Gestantes'. 
value labels D19_12
0 'Não'
1 'Sim'.


recode q19_13 (0=0) (sysmiss=sysmiss) (else=1) into D19_13.
FORMATS D19_13 (f1.0).
execute.

VARIABLE LABELS  D19_13 'D19_13_Unidades com pelo menos 1 acolhido - Tuberculose'. 
value labels D19_13
0 'Não'
1 'Sim'.


recode q19_14 (0=0) (sysmiss=sysmiss) (else=1) into D19_14.
FORMATS D19_14 (f1.0).
execute.

VARIABLE LABELS  D19_14 'D19_14_Unidades com pelo menos 1 acolhido - Egressos do sistema socioeducativo'. 
value labels D19_14
0 'Não'
1 'Sim'.


recode q19_15 (0=0) (sysmiss=sysmiss) (else=1) into D19_15.
FORMATS D19_15 (f1.0).
execute.

VARIABLE LABELS  D19_15 'D19_15_Unidades com pelo menos 1 acolhido - Envolvidas com o tráfico de drogas'. 
value labels D19_15
0 'Não'
1 'Sim'.


*** Quantidade de crianças que foram 

RECODE q21_1 q21_2 q21_3 q21_4 q21_5 q21_6 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D21_1 D21_2 D21_3 D21_4 D21_5 D21_6.
VARIABLE LABELS  D21_1 'D21_1_Quantas crianças/adolescentes - Retornaram às suas famílias de naturais/família de origem'.
VARIABLE LABELS  D21_2 'D21_2_Quantas crianças/adolescentes - Retornaram às suas famílias extensas'.
VARIABLE LABELS  D21_3 'D21_3_Quantas crianças/adolescentes - Foram encaminhadas a famílias adotivas'.
VARIABLE LABELS  D21_4 'D21_4_Quantas crianças/adolescentes - Vieram transferidos de outras unidades de acolhimento'.
VARIABLE LABELS  D21_5 'D21_5_Quantas crianças/adolescentes - Deixaram a Unidade encaminhados para outras unidades de acolhimento'.
VARIABLE LABELS  D21_6 'D21_6_Quantas crianças/adolescentes - Foram desligados por completarem 18 anos'.
FORMATS D21_1 D21_2 D21_3 D21_4 D21_5 D21_6 (f1.0).
EXECUTE.

VALUE LABELS D21_1 D21_2 D21_3 D21_4 D21_5 D21_6
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.


RECODE q22_1 q22_2 q22_3 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D22_1 D22_2 D22_3. 
VARIABLE LABELS  D22_1 'D22_1_Quantas crianças/adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias de naturais/família de origem'.
VARIABLE LABELS  D22_2 'D22_2_Quantas crianças/adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias extensas'.
VARIABLE LABELS  D22_3 'D22_3_Quantas crianças/adolescentes - Foram acolhidas novamente APÓS terem sido encaminhadas a famílias adotivas'.

VALUE LABELS D22_1 D22_2 D22_3
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.


RECODE q23_1 q23_2 q23_3 q23_4 q23_5 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D23_1 D23_2 D23_3 D23_4 D23_5. 
VARIABLE LABELS  D23_1 'D23_1_Quantas crianças/adolescentes - São filhas(os) de pais privados de liberdade'.
VARIABLE LABELS  D23_2 'D23_2_Quantas crianças/adolescentes - São filhas(os) de pais adolescentes'.
VARIABLE LABELS  D23_3 'D23_3_Quantas crianças/adolescentes - Estão aptas a adoção'.
VARIABLE LABELS  D23_4 'D23_4_Quantas crianças/adolescentes - Estão ameaçadas de morte'.
VARIABLE LABELS  D23_5 'D23_5_Quantas crianças/adolescentes - Participam de Programa de Apadrinhamento Afetivo'.

VALUE LABELS D23_1 D23_2 D23_3 D23_4 D23_5. 
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.


**** quantidade de pessoas idosas com aposentadoria e  com BPC

RECODE q24_1 q24_2 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 80=6) (81 thru 100=7) (101 thru Highest=8) INTO D24_1 D24_2.
VARIABLE LABELS D24_1 'D24_1_Quantas pessoas idosas - Recebem pensão/aposentadoria'.
VARIABLE LABELS D24_2 'D24_2_Quantas pessoas idosas - São beneficiárias do BPC'.
FORMATS D24_1 D24_2 (f1.0).
EXECUTE.

VALUE LABELS D24_1 D24_2
0 'Nenhuma pessoa'
1	'De 0 a 5 pessoas'
2	'De 6 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 40 pessoas'
5	'De 41 a 60 pessoas'
6	'De 61 a 80 pessoas'
7	'De 81 a 100 pessoas'
8	'Mais de 100 pessoas'.
EXECUTE.


