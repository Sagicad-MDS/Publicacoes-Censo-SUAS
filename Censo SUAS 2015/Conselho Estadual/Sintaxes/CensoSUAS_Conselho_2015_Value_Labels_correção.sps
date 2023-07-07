*****************************************************************************************************************************
***Syntax Value Labels ****** correção **********
*Conselho 2015 ************************************
*****************************************************************************************************************************

VALUE LABELS
/q13a
1Sim, de acordo com a Norma da ABNT 
2Sim, mas não estão de acordo com a Norma da ABNT 
0Não possui
/q13b
1Sim, de acordo com a Norma da ABNT 
2Sim, mas não estão de acordo com a Norma da ABNT 
0Não possui
/q13c
1Sim, de acordo com a Norma da ABNT 
2Sim, mas não estão de acordo com a Norma da ABNT 
0Não possui
/q13d
1Sim, de acordo com a Norma da ABNT 
2Sim, mas não estão de acordo com a Norma da ABNT 
0Não possui.

execute.

VALUE LABELS
/q21_1
1 1 dia por semana
2 2 dias por semana
3 3 dias por semana
4 4 dias por semana
5 5 dias por semana
6 6 dias por semana
7 7 dias por semana
/q21_2
1 1 hora por dia
2 2 horas por dia
3 3 horas por dia
4 4 horas por dia
5 5 horas por dia
6 6 horas por dia
7 7 horas por dia
8 8 horas por dia
9 9 horas por dia
10 10 horas por dia
11 11 horas por dia
12 12 horas por dia
13 13 horas por dia
14 14 horas por dia
15 15 horas por dia
16 16 horas por dia
17 17 horas por dia
18 18 horas por dia
19 19 horas por dia
20 20 horas por dia
21 21 horas por dia
22 22 horas por dia
23 23 horas por dia
24 24 horas por dia.

execute.



VALUE LABELS
/q26
1  Todas as deliberações ou resoluções são publicadas
2  A maioria das deliberações ou resoluções é publicada
3  A metade das deliberações ou resoluções é publicada
4  A minoria das deliberações ou resoluções é publicada
0  Nenhuma das deliberações ou resoluções é publicada.

execute.

VALUE LABELS
/responsavel_4
1Presidente do Conselho
2Vice-Presidente do Conselho
3Outro Conselheiro
4Secretário Executivo
5Outro Funcionário do Conselho.
execute.



VARIABLE LABELS
v10891_4'Comissão de acompanhamento de conselhos'.

execute.


RENAME VARIABLES
v10891_4 = q60i.

EXECUTE.


VALUE LABELS
/ident_9
12 AC
27 AL
13 AM
16 AP
29 BA
23 CE
53 DF
32 ES
52 GO
21 MA
31 MG
50 MS
51 MT
15 PA
25 PB
26 PE
22 PI
41 PR
33 RJ
24 RN
11 RO
14 RR
43 RS
42 SC
28 SE
35 SP
17 TO.

execute.
