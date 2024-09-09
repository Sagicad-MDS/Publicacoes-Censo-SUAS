* Encoding: UTF-8.


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


***q2   Quantidade casa lar 

RECODE q2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 15=4) (16 thru 20=5) (21 thru 30=6)  (31 thru Highest=7) INTO D02.
VARIABLE LABELS  D02 'D02_informe quantas Casas Lares'.
FORMATS D02 (f1.0).
EXECUTE.

VALUE LABELS D02
1	'Nenhuma Casa Lar'
2	'De 1 a 05 Casas Lares'
3	'De 06 a 10 Casas Lares'
4	'De 11 a 15 Casas Lares'
5	'De 16 a 20 Casas Lares'
6	'De 21 a 30 Casas Lares'
7	'Mais de 30 CasasLares' .
EXECUTE.


*** q9 o número de municípios atendidos pelo serviço regionalizado 


RECODE q9  (0=1) (1 thru 5=2)   (6 thru 10=3) (11 thru 20=4) (21 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D09.
VARIABLE LABELS  D09 'D09_Quantidade de municípios atendidos pelo serviço regionalizado'.
FORMATS D09 (f1.0).
EXECUTE.

VALUE LABELS D09
1                'Nenhum municipio'
2	'De 1 a 5 municipios'
3	'De 6 a 10 municipios'
4	'De 11 a 20 municipios'
5	'De 21 a 40 municipios'
6	'De 41 a 60 municipios'
7	'De 61 a 80 municipios'
8	'De 81 a 100 municipios'
9	'Mais de 100 municipios'.
EXECUTE.



**Capacidade Máxima de Atendimento - Cuidado com 0 ou 1

RECODE q10  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D10.
VARIABLE LABELS  D10 'D10_Capacidade máxima para atendimento (numero de vagas) da unidade'.
FORMATS D10 (f1.0).
EXECUTE.

VALUE LABELS D10
1	'Nenhuma vaga'
2	'De 1 a 5 vagas'
3	'De 6 a 10 vagas'
4	'De 11 a 20 vagas'
5	'De 21 a 40 vagas'
6	'De 41 a 60 vagas'
7	'De 61 a 80 vagas'
8	'De 81 a 100 vagas'
9	'Mais de 100 vagas'.
EXECUTE.

*****quantidade de vagas ocupadas - Cuidado com 0 ou 1 

RECODE q11  (0=1)  (1 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D11.
VARIABLE LABELS  D11 'D11_Quantas pessoas estão acolhidas na unidade (número de vagas ocupadas)'.
FORMATS D11 (f1.0).
EXECUTE.

VALUE LABELS D11
1	'Nenhuma pessoa'
2	'De 1 a 5 pessoas'
3	'De 6 a 10 pessoas'
4	'De 11 a 20 pessoas'
5	'De 21 a 40 pessoas'
6	'De 41 a 60 pessoas'
7	'De 61 a 80 pessoas'
8	'De 81 a 100 pessoas'
9	'Mais de 100 pessoas'.
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

RECODE q12_98 (1=0) INTO D12.
RECODE q12   (0=1) (1 thru 10=2) (11 thru 20=3) (21 thru 30=4) (31 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D12.
VARIABLE LABELS  D12 'D12_Quantas pessoas estão acolhidas na unidade no ano de 2022'.
FORMATS D12 (f1.0).
EXECUTE.

VALUE LABELS D12
0                'Não sabe informar'
1	'Nenhuma pessoa'
2	'De 1 a 10 pessoas'
3	'De 11 a 20 pessoas'
4	'De 21 a 30 pessoas'
5	'De 31 a 40 pessoas'
6	'De 41 a 60 pessoas'
7	'De 61 a 80 pessoas'
8	'De 81 a 100 pessoas'
9	'Mais de 100 pessoas'.
EXECUTE.

**** quantidade de pessoas dormitorio

RECODE q13 (0=1) (1 thru 3=2) (4 thru 6=3) (7 thru 9=4) (10 thru 12=5) (13 thru 15=6) (15 thru Highest=7) INTO D13.
VARIABLE LABELS  D13 'D13_Numero máximo de pessoas dormindo em um mesmo dormitório'.
FORMATS D13 (f1.0).
EXECUTE.

VALUE LABELS D13
1	'Nenhuma pessoa'
2	'De 1 a 3 pessoas'
3	'De 4 a 6 pessoas'
4	'De 7 a 9 pessoas'
5	'De 10 a 12 pessoas'
6	'De 13 a 15 pessoas'
7	'Mais de 15 pessoas'.
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

*** Quantidade de acolhidos de 60 anos ou mais

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


RECODE q15_1_98 q15_2_98 q15_3_98   (1=0) INTO D15_1    D15_2    D15_3.
RECODE q15_1_1 q15_2_1 q15_3_1  (0=1) (1thru 3=2) (4 thru 6=3) (7 thru 9=4) (10 thru 12=5) (13 thru 15=6) (15 thru Highest=7) INTO D15_1    D15_2    D15_3 .
VARIABLE LABELS  D15_1  'D15_1_Das pessoas atualmente acolhidas nesta unidade, Vieram de outro município do estado'.
VARIABLE LABELS  D15_2  'D15_2_Das pessoas atualmente acolhidas nesta unidade, Vieram de outros estados'.
VARIABLE LABELS  D15_3  'D15_3_Das pessoas atualmente acolhidas nesta unidade, Vieram de outros países'.
FORMATS D15_1    D15_2    D15_3 (f1.0).
EXECUTE.

VALUE LABELS D15_1     D15_2    D15_3
0                'Não sabe informar'
1	'Nenhuma  pessoa'
2	'De 0 a 3 pessoas'
3	'De 4 a 6 pessoas'
4	'De 7 a 9 pessoas'
5	'De 10 a 12 pessoas'
6	'De 13 a 15 pessoas'
7	'Mais de 15 pessoas'.
EXECUTE.


*****q16  pessoas ATUALMENTE acolhidas que vieram de outros países


RECODE q16_1   q16_2  q16_3  q16_4  q16_5  q16_6  q16_99 (0=1) (1thru 3=2) (4 thru 6=3) (7 thru 9=4) (10 thru 12=5) (13 thru 15=6) (15 thru Highest=7) INTO D16_1    D16_2    D16_3   D16_4    D16_5    D16_6   D16_99       .
VARIABLE LABELS  D16_1  'D16_1_Venezuelanos'.
VARIABLE LABELS  D16_2  'D16_2_Haitianos'.
VARIABLE LABELS  D16_3  'D16_3_Bolivianos'.
VARIABLE LABELS  D16_4  'D16_4_Colombianos'.
VARIABLE LABELS  D16_5 'D16_5_Argentinos'.
VARIABLE LABELS  D16_6  'D16_6_Chineses'.
VARIABLE LABELS  D16_99  'D16_99_Outras nacionalidades'.
FORMATS D16_1    D16_2    D16_3   D16_4    D16_5    D16_6  D16_99  (f1.0).
EXECUTE.

VALUE LABELS D16_1    D16_2    D16_3   D16_4    D16_5    D16_6  D16_99
1	'Nenhuma pessoa'
2	'De 1 a 3 pessoas'
3	'De 4 a 6 pessoas'
4	'De 7 a 9 pessoas'
5	'De 10 a 12 pessoas'
6	'De 13 a 15 pessoas'
7	'Mais de 15 pessoas'.
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



*** Características específcas dos acohidos



recode q18_1 (0=0) (sysmiss=sysmiss) (else=1) into D18_1.
FORMATS D18_1 (f1.0).
execute.

VARIABLE LABELS D18_1 'D18_1_Unidades com pelo menos 1 acolhido - Deficiência (física/sensorial/intelectual'. 
value labels D18_1
0 'Não'
1 'Sim'. 

recode q18_2 (0=0) (sysmiss=sysmiss) (else=1) into D18_2.
FORMATS D18_2 (f1.0).
execute.

VARIABLE LABELS D18_2 'D18_2_Unidades com pelo menos 1 acolhido - Doença Mental (Transtorno Mental)'. 
value labels D18_2
0 'Não'
1 'Sim'. 

recode q18_3 (0=0) (sysmiss=sysmiss) (else=1) into D18_3.
FORMATS D18_3 (f1.0).
execute.

VARIABLE LABELS D18_3 'D18_3_Unidades com pelo menos 1 acolhido - Travesti, Transexual, Transgênero'. 
value labels D18_3
0 'Não'
1 'Sim'. 


recode q18_4 (0=0) (sysmiss=sysmiss) (else=1) into D18_4.
FORMATS D18_4 (f1.0).
execute.

VARIABLE LABELS D18_4 'D18_4_Unidades com pelo menos 1 acolhido - Adolescentes em cumprimento de Medidas Socioeducativas'. 
value labels   D18_4
0 'Não'
1 'Sim'. 

recode q18_5 (0=0) (sysmiss=sysmiss) (else=1) into D18_5.
FORMATS D18_5 (f1.0).
execute.

VARIABLE LABELS D18_5 'D18_5_Unidades com pelo menos 1 acolhido - Trajetória de rua'. 
value labels D18_5
0 'Não'
1 'Sim'.


recode q18_6 (0=0) (sysmiss=sysmiss) (else=1) into D18_6.
FORMATS D18_6 (f1.0).
execute.

VARIABLE LABELS D18_6 'D18_6_Unidades com pelo menos 1 acolhido - Indígenas'. 
value labels D18_6
0 'Não'
1 'Sim'.

recode q18_7 (0=0) (sysmiss=sysmiss) (else=1) into D18_7.
FORMATS D18_7 (f1.0).
execute.

VARIABLE LABELS  D18_7 'D18_7_Unidades com pelo menos 1 acolhido - Outros Povos e comunidades tradicionais'. 
value labels D18_7
0 'Não'
1 'Sim'.

recode q18_8 (0=0) (sysmiss=sysmiss) (else=1) into D18_8.
FORMATS D18_8 (f1.0).
execute.

VARIABLE LABELS  D18_8 'D18_8_Unidades com pelo menos 1 acolhido - Egressos do sistema prisional'. 
value labels D18_8
0 'Não'
1 'Sim'.


recode q18_9 (0=0) (sysmiss=sysmiss) (else=1) into D18_9.
FORMATS D18_9 (f1.0).
execute.

VARIABLE LABELS  D18_9 'D18_9_Unidades com pelo menos 1 acolhido - Pessoas vítimas de tráfico de seres humanos'. 
value labels D18_9
0 'Não'
1 'Sim'.


recode q18_10 (0=0) (sysmiss=sysmiss) (else=1) into D18_10.
FORMATS D18_10 (f1.0).
execute.

VARIABLE LABELS  D18_10 'D18_10_Unidades com pelo menos 1 acolhido - Pessoas vítimas de tráfico de seres humanos'. 
value labels D18_10
0 'Não'
1 'Sim'.


recode q18_11 (0=0) (sysmiss=sysmiss) (else=1) into D18_11.
FORMATS D18_11 (f1.0).
execute.

VARIABLE LABELS  D18_11 'D18_11_Unidades com pelo menos 1 acolhido - Pessoas em situação e/ou egressas de trabalho análogo ao de escravo'. 
value labels D18_11
0 'Não'
1 'Sim'.


recode q18_12 (0=0) (sysmiss=sysmiss) (else=1) into D18_12.
FORMATS D18_12 (f1.0).
execute.

VARIABLE LABELS  D18_12 'D18_12_Unidades com pelo menos 1 acolhido - Gestantes'. 
value labels D18_12
0 'Não'
1 'Sim'.


recode q18_13 (0=0) (sysmiss=sysmiss) (else=1) into D18_13.
FORMATS D18_13 (f1.0).
execute.

VARIABLE LABELS  D18_13 'D18_13_Unidades com pelo menos 1 acolhido - Tuberculose'. 
value labels D18_13
0 'Não'
1 'Sim'.


recode q18_14 (0=0) (sysmiss=sysmiss) (else=1) into D18_14.
FORMATS D18_14 (f1.0).
execute.

VARIABLE LABELS  D18_14 'D18_14_Unidades com pelo menos 1 acolhido - Egressos do sistema socioeducativo'. 
value labels D18_14
0 'Não'
1 'Sim'.


recode q18_15 (0=0) (sysmiss=sysmiss) (else=1) into D18_15.
FORMATS D18_15 (f1.0).
execute.

VARIABLE LABELS  D18_15 'D18_15_Unidades com pelo menos 1 acolhido - Pessoas com dependência para atividades de vida diária'. 
value labels D18_15
0 'Não'
1 'Sim'.

recode q18_16 (0=0) (sysmiss=sysmiss) (else=1) into D18_16.
FORMATS D18_16 (f1.0).
execute.

VARIABLE LABELS  D18_16 'D18_16_Unidades com pelo menos 1 acolhido - Pessoas com necessidade de cuidados especializados de saúde'. 
value labels D18_16
0 'Não'
1 'Sim'.



*** Quantidade de crianças que foram 

RECODE q20_1_98  q20_2_98  q20_3_98   q20_4_98    q20_5_98    q20_6_98  (1=0) INTO D20_1    D20_2    D20_3   D20_4    D20_5    D20_6     .
RECODE q20_1 q20_2 q20_3 q20_4 q20_5 q20_6 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D20_1 D20_2 D20_3 D20_4 D20_5 D20_6.
VARIABLE LABELS  D20_1 'D20_1_Quantas crianças/adolescentes - Retornaram às suas famílias de naturais/família de origem'.
VARIABLE LABELS  D20_2 'D20_2_Quantas crianças/adolescentes - Retornaram às suas famílias extensas'.
VARIABLE LABELS  D20_3 'D20_3_Quantas crianças/adolescentes - Foram encaminhadas a famílias adotivas'.
VARIABLE LABELS  D20_4 'D20_4_Quantas crianças/adolescentes - Vieram transferidos de outras unidades de acolhimento'.
VARIABLE LABELS  D20_5 'D20_5_Quantas crianças/adolescentes - Deixaram a Unidade encaminhados para outras unidades de acolhimento'.
VARIABLE LABELS  D20_6 'D20_6_Quantas crianças/adolescentes - Foram desligados por completarem 18 anos'.
FORMATS D20_1 D20_2 D20_3 D20_4 D20_5 D20_6 (f1.0).
EXECUTE.

VALUE LABELS D20_1 D20_2 D20_3 D20_4 D20_5 D20_6
0 'Não sabe responder'
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.

RECODE q21_1_98  q21_2_98  q21_3_98   (1=0) INTO D21_1    D21_2    D21_3   .
RECODE q21_1 q21_2 q21_3 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D21_1 D21_2 D21_3. 
VARIABLE LABELS  D21_1 'D21_1_Quantas crianças/adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias de naturais/família de origem'.
VARIABLE LABELS  D21_2 'D21_2_Quantas crianças/adolescentes - Foram acolhidas novamente APÓS terem sido reintegradas às suas famílias extensas'.
VARIABLE LABELS  D21_3 'D21_3_Quantas crianças/adolescentes - Foram acolhidas novamente APÓS terem sido encaminhadas a famílias adotivas'.

VALUE LABELS D21_1 D21_2 D21_3
0 'Não sabe responder'
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.


RECODE q22_1_98  q22_2_98  q22_3_98  q22_4_98  q22_5_98  (1=0) INTO D22_1    D22_2    D22_3  D22_4    D22_5  .
RECODE q22_1 q22_2 q22_3 q22_4 q22_5 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D22_1 D22_2 D22_3 D22_4 D22_5. 
VARIABLE LABELS  D22_1 'D22_1_Quantas crianças/adolescentes - São filhas(os) de pais privados de liberdade'.
VARIABLE LABELS  D22_2 'D22_2_Quantas crianças/adolescentes - São filhas(os) de pais adolescentes'.
VARIABLE LABELS  D22_3 'D22_3_Quantas crianças/adolescentes - Estão aptas a adoção'.
VARIABLE LABELS  D22_4 'D22_4_Quantas crianças/adolescentes - Estão ameaçadas de morte'.
VARIABLE LABELS  D22_5 'D22_5_Quantas crianças/adolescentes - Participam de Programa de Apadrinhamento Afetivo'.

VALUE LABELS D22_1 D22_2 D22_3 D22_4 D22_5. 
0 ' Não sabe responder'
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

RECODE q23_1_98  q23_2_98   (1=0) INTO D23_1    D23_2  .
RECODE q23_1 q23_2 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D23_1 D24_3.
VARIABLE LABELS D23_1 'D23_1_Quantas pessoas idosas - Recebem pensão/aposentadoria'.
VARIABLE LABELS D23_2 'D23_2_Quantas pessoas idosas - São beneficiárias do BPC'.
FORMATS D23_1 D23_2 (f1.0).
EXECUTE.

VALUE LABELS D23_1 D23_2
0 'Não sabe responder'
1 'Nenhuma pessoa'
2	'De 1 a 5 pessoas'
3	'De 6 a 10 pessoas'
4	'De 11 a 20 pessoas'
5	'De 21 a 40 pessoas'
6	'De 41 a 60 pessoas'
7	'De 61 a 80 pessoas'
8	'De 81 a 100 pessoas'
9	'Mais de 100 pessoas'.
EXECUTE.


RECODE q25  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D25.
VARIABLE LABELS D25  'D25_Quantas pessoas contribuem com o custeio da Unidade'.
FORMATS D25  (f1.0).
EXECUTE.

VALUE LABELS D25
1 'Nenhuma pessoa'
2	'De 1 a 5 pessoas'
3	'De 6 a 10 pessoas'
4	'De 11 a 20 pessoas'
5	'De 21 a 40 pessoas'
6	'De 41 a 60 pessoas'
7	'De 61 a 80 pessoas'
8	'De 81 a 100 pessoas'
9	'Mais de 100 pessoas'.
EXECUTE.



RECODE q26_1  q26_2  q26_3  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D26_1    D26_2   D26_3  .
VARIABLE LABELS D26_1  'D26_1_Quantas pessoas possuem grau de dependência I'.
VARIABLE LABELS D26_2  'D26_1_Quantas pessoas possuem grau de dependência II'.
VARIABLE LABELS D26_3  'D26_3_Quantas pessoas possuem grau de dependência III'.
FORMATS D26_1    D26_2   D26_3  (f1.0).
EXECUTE.

VALUE LABELS D26_1    D26_2   D26_3
1 'Nenhuma pessoa'
2	'De 1 a 5 pessoas'
3	'De 6 a 10 pessoas'
4	'De 11 a 20 pessoas'
5	'De 21 a 40 pessoas'
6	'De 41 a 60 pessoas'
7	'De 61 a 80 pessoas'
8	'De 81 a 100 pessoas'
9	'Mais de 100 pessoas'.
EXECUTE.



RECODE q29_98  (1=0) INTO D23_1    D29  .
RECODE q29_1 q29_2 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru 40=5) (41 thru 60=6) (61 thru 80=7) (81 thru 100=8) (101 thru Highest=9) INTO D29_1 D29_2.
VARIABLE LABELS D29_1 'D29_1_Quantas pessoas sexo Masculino -  NÃO costumam receber visita de familiares'.
VARIABLE LABELS D29_2 'D29_2_Quantas pessoas sexo Feminino  - NÃO costumam receber visita de familiares'.
FORMATS D29_1 D29_2 (f1.0).
EXECUTE.

VALUE LABELS D29_1 D29_2
1 'Nenhuma pessoa'
2	'De 1 a 5 pessoas'
3	'De 6 a 10 pessoas'
4	'De 11 a 20 pessoas'
5	'De 21 a 40 pessoas'
6	'De 41 a 60 pessoas'
7	'De 61 a 80 pessoas'
8	'De 81 a 100 pessoas'
9	'Mais de 100 pessoas'.
EXECUTE.








*Salas*********************************************************************

RECODE q46_1  (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d46_1_atend_categoria.

VARIABLE LABELS
d46_1_atend_categoria   'd46_1_atend_categoria. Sala de estar, de convivência ou de outras atividades de grupo '.
EXECUTE.

VALUE LABELS d46_1_atend_categoria
0" Nenhuma sala"
1"1 sala" 
2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
5 " 8 ou mais salas".
EXECUTE.

****quartos*****************************************


RECODE q46_2  (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d46_2_quarto_usuario.

VALUE LABELS d46_2_quarto_usuario 
0"nenhum quarto"
1"1 quarto" 
2"De 2 a 3 quartos" 
 3"De 4 a 5 quartos" 
 4"De 6 a 7 quartos" 
5"8 ou mais quartos" .
EXECUTE.

VARIABLE LABELS  d46_2_quarto_usuario 'd46_2_quarto_usuario. Quartos para as(os) usuárias(os) acolhidas(os) '.
EXECUTE.



RECODE q46_3  (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d46_3_quarto_cuidador.

VALUE LABELS d46_3_quarto_cuidador
0"nenhum quarto"
1"1 quarto" 
2"De 2 a 3 quartos" 
 3"De 4 a 5 quartos" 
 4"De 6 a 7 quartos" 
5"8 ou mais quartos" .
EXECUTE.

VARIABLE LABELS  d46_3_quarto_cuidador   'd46_3_quarto_cuidador. Quartos para as(os) cuidadoras(es '.
EXECUTE.

******************Quantidade de banheiros***************************************************

RECODE q46_4  (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d46_4_banheiros_usuario.

VALUE LABELS d46_4_banheiros_usuario
0"nenhum banheiro"
1"1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d46_4_banheiros_usuario 'd46_4_banheiros_usuario. Banheiros para as(os) usuárias(os) acolhidas(os) '.
EXECUTE.




RECODE q46_5  (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d46_5_banheiros.

VALUE LABELS d46_5_banheiros
0"nenhum banheiro"
1"1 banheiro" 
2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros" 
5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d46_5_banheiros 'd46_5_banheiros. Banheiros exclusivos para funcionárias(os)  '.
EXECUTE.




Espaço administrativo********************************************************************

RECODE q47_1   (0=0)  (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO q47_1_sala_adm.

VARIABLE LABELS
q47_1_sala_adm   'q47_1_sala_adm. Sala de Administração  '.
EXECUTE.

VALUE LABELS q47_1_sala_adm
0 "Nenhuma sala"
1"1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.




RECODE q47_2   (0=0)  (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO q47_2_sala_reun.

VARIABLE LABELS
q47_2_sala_reun   'q47_2_sala_reun. Sala de reuniões '.
EXECUTE.

VALUE LABELS q47_2_sala_reun
0 "Nenhuma sala"
1"1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.




RECODE q47_3  (0=0)  (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO q47_3_sala_atendimento.

VARIABLE LABELS
q47_3_sala_atendimento    'q47_3_sala_atendimento. Sala para atendimento técnico especializado (psicóloga(o), assistente social etc.)  '.
EXECUTE.

VALUE LABELS q47_3_sala_atendimento
0 "Nenhuma sala"
1"1 sala" 
 2"De 2 a 3 salas"  
3"De 4 a 5 salas" 
4"De 6 a 7 salas"
 5"8 ou mais salas".
EXECUTE.









