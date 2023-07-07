***** Criação id_unidade_final ****

COMPUTE id_unidade_interm=10000+id_acolhimentotextcodigo_ibgetext.
execute.

compute id_unidade_final=municipio*10**(trunc(lg10(id_unidade_interm))+1) + id_unidade_interm.
execute. 

****Critérios de idade para admissão de usuários****

RECODE q17a_1 (0 thru 6=1) (7 thru 12=2) (13 thru 17=3) (18 thru 59=4) (60 thru Highest=5) INTO 
    D17a.
ADD VALUE LABEL
 D17a 1"De 0 a 6 anos"  2"De 7 a 12 anos"  3"De 13 a 17 anos"  4"De 18 a 59 anos" 5"60 ou mais".
EXECUTE.

VARIABLE LABELS  D17a 'D17a_Idade mínima para admissão dos usuários'.
EXECUTE.

RECODE q17b_1 (0 thru 6=1) (7 thru 12=2) (13 thru 17=3) (18 thru 59=4) (60 thru Highest=5) INTO 
    D17b.
ADD VALUE LABEL
 D17b 1"De 0 a 6 anos"  2"De 7 a 12 anos"  3"De 13 a 17 anos"  4"De 18 a 59 anos" 5"60 ou mais".
EXECUTE.

VARIABLE LABELS  D17b 'D17b_Idade máxima para admissão dos usuários'.
EXECUTE.

***capacidade maxima de atendimento

RECODE q10  (1 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (60 thru 
    Highest=6) INTO D10.
VARIABLE LABELS  D10 'D10_Capacidade máxima para atendimento (numero de vagas) da unidade'.
EXECUTE.

VALUE LABELS
/D10
1	De 1 a 5 vagas
2	De 6 a 10 vagas
3	De 11 a 20 vagas
4	De 21 a 40 vagas
5	De 41 a 60 vagas
6	Mais de 60 vagas.
EXECUTE.

*****quantidade de vagas ocupadas

RECODE q11 (1 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (60 thru 
    Highest=6) INTO D11.
VARIABLE LABELS  D11 'D11_Quantas pessoas estão acolhidas na unidade (número de vagas ocupadas)'.
EXECUTE.

VALUE LABELS
/D11
1	De 1 a 5 vagas
2	De 6 a 10 vagas
3	De 11 a 20 vagas
4	De 21 a 40 vagas
5	De 41 a 60 vagas
6	Mais de 60 vagas.
EXECUTE.

**** quantidade de pessoas dormindo em um mesmo dormitório

RECODE q12 (1 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D12.
VARIABLE LABELS  D12 'D12_Numero máximo de pessoas dormindo em um mesmo dormitório'.
EXECUTE.

VALUE LABELS
/D12
1	De 1 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 vagas.
EXECUTE.


***total de pessoas de 0 a 2 anos acolhidas na unidade****

COMPUTE D14_1= q14a_1 + q14b_1.
EXECUTE.

VARIABLE LABELS
D14_1	'D14_1_Total de 0 a 2 anos'.
EXECUTE.

***total de pessoas de 3 a 5 anos acolhidas na unidade****

COMPUTE D14_2= q14a_2 + q14b_2.
EXECUTE.

VARIABLE LABELS
D14_2	'D14_2_Total de 3 a 5 anos'.
EXECUTE.

***total de pessoas de 6 a 11 anos acolhidas na unidade****

COMPUTE D14_3= q14a_3 + q14b_3.
EXECUTE.

VARIABLE LABELS
D14_3	'D14_3_Total de 6 a 11 anos'.
EXECUTE.

***total de pessoas de 12 a 13 anos acolhidas na unidade****

COMPUTE D14_4= q14a_4 + q14b_4.
EXECUTE.

VARIABLE LABELS
D14_4	'D14_4_Total de 12 a 13 anos'.
EXECUTE.

***total de pessoas de 14 a 15 anos acolhidas na unidade****

COMPUTE D14_5= q14a_5 + q14b_5.
EXECUTE.

VARIABLE LABELS
D14_5	'D14_5_Total de 14 a 15 anos'.
EXECUTE.

***total de pessoas de 16 a 17 anos acolhidas na unidade****

COMPUTE D14_6= q14a_6 + q14b_6.
EXECUTE.

VARIABLE LABELS
D14_6	'D14_6_Total de 16 a 17 anos'.
EXECUTE.

***total de pessoas de 18 a 21 anos acolhidas na unidade****

COMPUTE D14_7= q14a_7 + q14b_7.
EXECUTE.

VARIABLE LABELS
D14_7	'D14_7_Total de 18 a 21 anos'.
EXECUTE.

***total de pessoas de 22 a 59 anos acolhidas na unidade****

COMPUTE D14_8= q14a_8 + q14b_8.
EXECUTE.

VARIABLE LABELS
D14_8	'D14_8_Total de 22 a 59 anos'.
EXECUTE.

***total de pessoas 60 a 79 anos acolhidas na unidade****

COMPUTE D14_9= q14a_9 + q14b_9.
EXECUTE.

VARIABLE LABELS
D14_9	'D14_9_Total 60 a 79 anos'.
EXECUTE.

***total de pessoas 80 ou mais anos acolhidas na unidade****

COMPUTE D14_10= q14a_10 + q14b_10.
EXECUTE.

VARIABLE LABELS
D14_10	'D14_10_Total 80 ou mais anos'.
EXECUTE.

***total de pessoas acolhidas****

COMPUTE D14_total= D14_1 + D14_2 + D14_3 + D14_4 + D14_5 + D14_6 + D14_7 + D14_8 + D14_9 + D14_10.
EXECUTE.

VARIABLE LABELS
D14_total	'D14_total_Total de pessoas acolhidas'.
EXECUTE.

**calcular total de homens e de mulheres

compute D14_masculino = q14a_1 + q14a_2 + q14a_3 + q14a_4 + q14a_5 + q14a_6 + q14a_7 + q14a_8 + q14a_9 + q14a_10.
execute.

compute D14_feminino = q14b_1 + q14b_2 + q14b_3 + q14b_4 + q14b_5 + q14b_6 + q14b_7 + q14b_8 + q14b_9 + q14b_10.
execute.

VARIABLE LABELS
D14_masculino	'D14_masculino_Total colhidos do sexo masculino'.
EXECUTE.

VARIABLE LABELS
D14_feminino	'D14_feminino_Total colhidos do sexo feminino'.
EXECUTE.

** Quantidade de Computadores***

RECODE
  q34a_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D34a .
EXECUTE .

ADD VALUE LABEL
D34a 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D34a	D34a_Quantidade de computadores na Unidade.
EXECUTE.


RECODE
  q34a_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D34a_2 .
EXECUTE .

ADD VALUE LABEL
D34a_2 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D34a_2	D34a_2_Quantidade de computadores na Unidade conectados à internet.
EXECUTE.

***

RECODE
  q34b_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D34b .
EXECUTE .

ADD VALUE LABEL
D34b 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D34b	D34b_Quantidade de computadores na Unidade para utilização dos usuários.
EXECUTE.


RECODE
  q34b_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D34b_2 .
EXECUTE .

ADD VALUE LABEL
D34b_2 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D34b_2	D34b_2_Quantidade de computadores na Unidade, para a utilização do usuários, conectados à internet.
EXECUTE.
