****************************************************************************************************
SINTAXE DERIVADAS GESTÃO MUNICIPAL - CENSO SUAS 2016
****************************************************************************************************

*** Questão 5.
RECODE q5_0 (1=0) INTO d5.
RECODE q5 (2016=1) (2015=2) (2011 THRU 2014 = 3) (2006 THRU 2010 = 4) (LOWEST THRU 2005 = 5) INTO d5.
VARIABLE LABELS d5 'd5_Ano da Lei Municipal de regulamentação do SUAS'.
VALUE LABELS d5
0'Não possui Lei'
1'2016'
2'2015'
3'De 2 a 5 anos atrás'
4'De 5 a 10 anos atrás'
5'Mais de 10 anos atrás'.
EXECUTE.

*** Questão 6.
RECODE q6_ns (1=0) INTO d6.
RECODE q6 (2016=1) (2015=2) (2011 THRU 2014 = 3) (2006 THRU 2010 = 4) (LOWEST THRU 2005 = 5) INTO d6.
VARIABLE LABELS d6 'd6_Ano do Plano Municipal de Assistência Social'.
VALUE LABELS d6
0'Não soube informar'
1'2016'
2'2015'
3'De 2 a 5 anos atrás'
4'De 5 a 10 anos atrás'
5'Mais de 10 anos atrás'.
EXECUTE.

*** Questão 16.
RECODE q16 (0=0) (1=1) (2=2) (3 THRU 5=3) (6 THRU 10=4) (11 THRU 20=5)
(21 THRU HIGHEST=6) (ELSE=COPY) INTO d16.
RECODE q15 (0=0) INTO d16.
VARIABLE LABELS d16 'd16_Quantidade de Entidades Conveniadas'.
VALUE LABELS d16 0'Nenhuma' 1'1'   2'2'  3'3 a 5'  4'6 a 10'  5'11 a 20'  6'Mais de 20'. 
EXECUTE.

*** Questão 17.
RECODE q17_total (0 thru 5 = 0) (6 thru 10=1) (11 thru 20=2) (21 thru 30=3)
(31 thru 50=4) (51 thru 100=5) (101 thru 200=6) (201 thru 500=7)
(500 thru Highest=8) (ELSE=Copy) INTO d17_total.
VARIABLE LABELS d17_total 'd17_total_Quantidade de Trabalhadores - Total'.
VALUE LABELS d17_total 0'Até 5'  1'6 a 10'  2'11 a 20'  3'21 a 30'  4'31 a 50'
5'51 a 100'  6'101 a 200'   7'201 a 500'  8'mais de 500'. 
EXECUTE.

*** Questão 18.
RECODE q18_total (0 thru 5 = 0) (6 thru 10=1) (11 thru 20=2) (21 thru 30=3)
(31 thru 50=4) (51 thru 100=5) (101 thru 200=6) (201 thru 500=7)
(500 thru Highest=8) (ELSE=Copy) INTO d18_total.
VARIABLE LABELS d18_total 'd18_total_Quantidade Total de Trabalhadores de Ensino Superior'.
VALUE LABELS d18_total 0'Até 5'  1'6 a 10'  2'11 a 20'  3'21 a 30'  4'31 a 50'
5'51 a 100'  6'101 a 200'   7'201 a 500'  8'mais de 500'. 
EXECUTE.

*** Questões 32 e 33.
RECODE q32 q33 (0=0) (1 thru 5=1) (6 thru 15=2) (16 thru 30=3) (31 thru 50=4)
(51 thru Highest=5) (ELSE=Copy) INTO d32 d33.
VARIABLE LABELS d32 'd32_Programa de Família Acolhedora - Familias Cadastradas'
/d33 'd33_Programa de Família Acolhedora - Crianças Acolhidas'.
VALUE LABELS d32 d33 0 'Nenhuma' 1 '1 a 5' 2'6 a 15'  3'16 a 30'  4'31 a 50'  5'Mais de 50'. 
EXECUTE.


*** Questão 42.
RECODE q42_1 q42_2 q42_total (0=0) (1=1)  (2=2) (3=3) (4 thru 5=4)
(6 thru 10=5) (11 thru Highest=6) (ELSE=Copy) INTO d42_1 d42_2 d42_total.
VARIABLE LABELS d42_1 'd42_1_Quantidade de Profissionais da Vigilância de Nível Superior'
/d42_2 'd42_2_Quantidade de Profissionais da Vigilância de Nível Médio'
/d42_total 'd42_total_Quantidade Total de Profissionais da Vigilância'.
VALUE LABELS d42_1 d42_2 d42_total
0'Nenhum' 1 '1'  2'2'  3'3'  4'4 a 5'   5'6 a 10' 6'Mais de 10'.
EXECUTE.


*** Questão 44.
RECODE q44 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4)
(201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=6) (ELSE=Copy) INTO d44.
VARIABLE LABELS d44 'd44_Quantidade de Pessoas em Situação de Rua'.
VALUE LABELS d44 0'Nenhum' 1 'Até 5'  2'6 a 10'  3'11 a 50'  4'51 a 200'
5'201 a 500' 6'501 a 1.000' 7 'mais de 1.000'. 
EXECUTE.



********************************************************************************
***************  REORDENAMENTO DAS VARIÁVEIS   ****************

MATCH FILES FILE = *
/KEEP = 
IBGE
UF
Município
ident1_nome
ident2
ident3
ident4
ident5
ident6_bairro
ident7
ident8_cep
ident9_mun
ident10_uf
ident11_email
ident12_tel
ident13_ramal
ident14_fax
coord_latitude
coord_longitude
q1
q2_1
q2_2
q2_3
q2_4
q2_5
q2_6
q2_7
q2_99
q2_qual
q3_1
q3_2
q3_3
q3_4
q3_5
q3_6
q3_7
q3_8
q4_1
q4_2
q4_3
q4_4
q4_5
q4_6
q4_7
q4_99
q5
q5_0
d5
q6
q6_ns
d6
q7
q8
q9_1
q9_2
q9_3
q9_4
q9_5
q9_6
q9_99
q9_qual
q10
q11
q12
q13
q14_1
q14_2
q14_3
q14_4
q15
q16
d16
q17_1_1
q17_1_2
q17_1_3
q17_1_4
q17_2_1
q17_2_2
q17_2_3
q17_2_4
q17_3_1
q17_3_2
q17_3_3
q17_3_4
q17_4_1
q17_4_2
q17_4_3
q17_4_4
q17_5_1
q17_5_2
q17_5_3
q17_total
d17_total
q18_1
q18_2
q18_3
q18_4
q18_5
q18_6
q18_7
q18_8
q18_9
q18_10
q18_11
q18_12
q18_13
q18_14
q18_15
q18_16
q18_99
q18_total
d18_total
q19_1
q19_1_1
q19_1_2
q19_1_3
q19_2
q19_2_1
q19_2_2
q19_2_3
q20
q21_1
q21_2
q21_3
q21_4
q21_5
q21_6
q21_99
q21_0
q21_qual
q22
q23_1
q23_2
q23_3
q23_4
q23_5
q23_4_1
q23_5_1
q24_1
q24_2
q24_3
q24_4
q24_5
q24_6
q24_7
q24_99
q24_0
q24_5_1
q24_6_1
q25_0
q25_1
q25_2
q25_3
q25_4
q25_5
q25_6
q25_7
q25_8
q25_9
q25_10
q25_11
q25_12
q26
q27
q28_1
q28_2
q28_3
q28_4
q28_5
q28_6
q28_7
q29
q30
q31
q32
d32
q33
d33
q34_1
q34_2
q34_3
q34_4
q34_5
q34_6
q34_7
q34_8
q34_9
q34_0
q35
q36
q37
q38_1
q38_2
q38_3
q38_4
q38_5
q38_6
q38_7
q38_8
q39_1_1
q39_1_2
q39_1_3
q39_2_1
q39_2_2
q39_2_3
q39_3_1
q39_3_2
q39_3_3
q39_4_1
q39_4_2
q39_4_3
q40
q41
q42_1
q42_2
q42_total
d42_1
d42_2
d42_total
q43
q44
d44
q45
q46
q47
q48
q49
q50
q51
q52_1
q52_2
q52_3
q52_4
resp_nome
resp_cpf
resp_data
resp_cargo
resp_tel
resp_email
rep_vig_n_possui
rep_vig_nome
rep_vig_cpf
rep_vig_cargo
rep_vig_tel
rep_vig_email
Incompletos
coord_latitude_original
coord_longitude_original
q14_1_original
q14_2_original
q14_3_original
q14_4_original
q17_5_3_original
q18_total_original
ver_q17_5_3
ver_q18_total
chec_q17_5_3
chec_q18_total
ALL.



