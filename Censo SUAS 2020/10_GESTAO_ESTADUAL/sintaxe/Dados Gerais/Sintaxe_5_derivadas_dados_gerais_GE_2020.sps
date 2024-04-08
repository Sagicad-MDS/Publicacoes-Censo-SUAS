* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO ESTADUAL - CENSO SUAS 2020
****************************************************************************************************



****************************************questão40

RECODE q40_1 (0=1) INTO d_40_1.
RECODE q40_1_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_40_1.
VARIABLE LABELS  d_40_1  'd_40_1. Capacitação presencial para as(os) trabalhadoras(es) estaduais da assistência social '.
VALUE LABELS d_40_1
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.



RECODE q40_2 (0=1) INTO d_40_2.
RECODE q40_2_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_40_2.
VARIABLE LABELS  d_40_2  'd_40_2. Capacitação à distância para as(os) trabalhadoras(es) estaduais da assistência social'.
VALUE LABELS d_40_2
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.


RECODE q40_3 (0=1) INTO d_40_3.
RECODE q40_3_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_40_3.
VARIABLE LABELS  d_40_3  'd_40_3. Capacitação presencial para as(os) trabalhadoras(es) municipais da assistência social'.
VALUE LABELS d_40_3
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.


RECODE q40_4 (0=1) INTO d_40_4.
RECODE q40_4_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_40_4.
VARIABLE LABELS  d_40_4  'd_40_4. Capacitação à distância para as(os) trabalhadoras(es) municipais da assistência social'.
VALUE LABELS d_40_4
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.



****************************************questão41

RECODE q41_1 (0=1) INTO d_41_1.
RECODE q41_1_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_41_1.
VARIABLE LABELS  d_41_1  'd_41_1. Capacitação presencial para os conselheiras(os) estaduais '.
VALUE LABELS d_41_1
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.



RECODE q41_2 (0=1) INTO d_41_2.
RECODE q41_2_99 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_41_2.
VARIABLE LABELS  d_41_2  'd_41_2. Capacitação a distância para os conselheiras(os) estaduais'.
VALUE LABELS d_41_2
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.


RECODE q41_3 (0=1) INTO d_41_3.
RECODE q41_3_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_41_3.
VARIABLE LABELS  d_41_3  'd_41_3. Capacitação presencial para os conselheiras(os) municipais'.
VALUE LABELS d_41_3
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.


RECODE q41_4 (0=1) INTO d_41_4.
RECODE q41_4_99  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_41_4.
VARIABLE LABELS  d_41_4  'd_41_4.Capacitação a distância para os conselheiras(os) municipais'.
VALUE LABELS d_41_4
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.




****************************************questão42

RECODE q42_98 (1=7) INTO d_42.
RECODE q42  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_42.
VARIABLE LABELS  d_42  'd_42.  Em 2019, quantos profissionais/conselheiros foram certificados por cursos do CAPACITASUAS no Estado '.
VALUE LABELS d_42
1 'Nenhum'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'
7 'Não sabe informar'.
EXECUTE.




































