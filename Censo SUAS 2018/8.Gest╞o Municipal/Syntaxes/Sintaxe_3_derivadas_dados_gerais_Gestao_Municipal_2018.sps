* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO MUNICIPAL - CENSO SUAS 2018
****************************************************************************************************

********************************************** questão 5

RECODE q_5_0 (1=0) INTO d_5.
RECODE q_5 (2018=1) (2017=2) (2016=3) (2015=4) (2011 THRU 2014 = 5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d_5.
VARIABLE LABELS d_5 'd_5. Ano da Lei Municipal de regulamentação do SUAS'.
VALUE LABELS d_5
0 'Não possui Lei'
1 '2018'
2 '2017'
3 '2016'
4 '2015'
5 'De 2011 a 2014'
6 'De 2006 a 2010'
7 'Até de 2005'.
EXECUTE.

****************************************** questão 7

RECODE q_7_99 (1=0) INTO d_7.
RECODE q_7 (2018=1) (2017=2) (2016=3) (2015=4) (2011 THRU 2014 = 5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d_7.
VARIABLE LABELS d_7 'd_7. Ano da última atualização do Plano Municipal de Assistência Social'.
VALUE LABELS d_7
0 'Não soube informar'
1 '2018'
2 '2017'
3 '2016'
4 '2015'
5 'De 2011 a 2014'
6 'De 2006 a 2010'
7 'Até de 2005'.
EXECUTE.

*******************************questão 14

RECODE q_14 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4)
(201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7) (ELSE=Copy) INTO d_14.
VARIABLE LABELS d_14 'd_14.Quantidade de Pessoas em Situação de Rua'.
VALUE LABELS d_14
0 'Nenhum' 
1 'Até 5'  
2 '6 a 10'  
3 '11 a 50'  
4 '51 a 200'
5 '201 a 500' 
6 '501 a 1.000' 
7 'mais de 1.000'. 
EXECUTE.

************************************questão 19

RECODE q_19 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 50=4) (51 thru 200=5)
(201 thru 500=6)  (501 thru 1000=7) (1001 thru Highest=8) (ELSE=Copy) INTO d_19.
RECODE q_19_99 (1=0) INTO d_19.
VARIABLE LABELS d_19 'd_19. Quantas pessoas foram atendidas pelo Serviço de Proteção Social Básica no Domicílio para Pessoas com deficiência e idosas no município, em agosto/2018'.
VALUE LABELS d_19
0 'Não soube informar'
1 'Nenhum' 
2 'Até 5'  
3 '6 a 10'  
4 '11 a 50'  
5 '51 a 200'
6 '201 a 500' 
7 '501 a 1.000' 
8 'mais de 1.000'. 
EXECUTE.

***************************************questão 29

RECODE q_29 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 15=3) (16 thru 20=4) (21 thru HIGHEST=5) into d_29.
VARIABLE LABELS  d_29 'd_29. Atualmente, quantas crianças e/ou adolescente estão acolhidos em famílias guardiãs na família extensa inseridas no Programa'.
VALUE LABELS d_29
0 'Nenhuma'
1 'De 1 a 5 crianças e/ou adolescente'
2 'De 6 a 10 crianças e/ou adolescente'
3 'De 11 a 15 crianças e/ou adolescente' 
4 'De 16 a 20 crianças e/ou adolescente' 
5 'Mais de 20 crianças e/ou adolescente'. 
EXECUTE.

**************************************questão 30

RECODE q_30 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 25=3) (26 thru 50=4) (51 thru HIGHEST=5) into d_30.
VARIABLE LABELS  d_30 'd_30. Atualmente quantas famílias que recebem recursos pelo Programa de Guarda Subsidiada'.
VALUE LABELS d_30
0 'Nenhuma'
1 'De 1 a 5 famílias'
2 'De 6 a 10 famílias'
3 'De 11 a 25 famílias' 
4 'De 26 a 50 famílias' 
5 'Mais de 50 famílias'. 
EXECUTE.

****************************************questão 35

USE ALL.
COMPUTE filter_$=(q_34=1).
VARIABLE LABEL filter_$ 'q_34=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
RECODE q_35 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 500=3) (501 thru 1000=4) (1001 thru HIGHEST=5) into d_35.
VARIABLE LABELS  d_35 'd_35. Indique a quantidade de pessoas desabrigadas que foram acolhidas em alojamentos provisórios nos últimos 12 (doze) meses'.
VALUE LABELS d_35
0 'Nenhuma'
1 'De 1 a 5 pessoas'
2 'De 6 a 10 pessoas'
3 'De 10 a 500 pessoas' 
4 'De 501 a 1000 pessoas' 
5 'Mais de 1000 pessoas'. 
EXECUTE.
FILTER OFF.
USE ALL.
EXECUTE.


***************************************questão 37


USE ALL.
COMPUTE filter_$=(q_36=1).
VARIABLE LABEL filter_$ 'q_36=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
RECODE q_37 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 500=3) (501 thru 1000=4) (1001 thru HIGHEST=5) into d_37.
VARIABLE LABELS  d_37 'd_37. Para quantos imigrantes/refugiados a assistencia social do município ofertou programa(s)/serviço(s)'.
VALUE LABELS d_37
0 'Nenhuma'
1 'De 1 a 5 pessoas'
2 'De 6 a 10 pessoas'
3 'De 10 a 500 pessoas' 
4 'De 501 a 1000 pessoas' 
5 'Mais de 1000 pessoas'. 
EXECUTE.
FILTER OFF.
USE ALL.
EXECUTE.

*************************************questão 50 - checar

RECODE q_50_1_1 (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_50_superior.
VARIABLE LABELS  d_50_superior 'd_50_superior. Quantidade de vagas para nível superior '.
VALUE LABELS d_50_superior
1 'Nenhuma'
2 'De 1 a 20 vagas'
3 'De 21 a 50 vagas'
4 'De 51 a 100 vagas' 
5 'Mais de 100 vagas'. 
EXECUTE.

RECODE q_50_1_3 (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_50superior_posse.
VARIABLE LABELS  d_50superior_posse 'd_50superior_posse. Quantidade de trabalhadores de nível superior que tomaram posse'.
VALUE LABELS d_50superior_posse
1 'Nenhum'
2 'De 1 a 20 trabalhadores'
3 'De 21 a 50 trabalhadores'
4 'De 51 a 100 trabalhadores'
5 'Mais de 100 trabalhadores'. 
EXECUTE.

RECODE q_50_2_1 (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_50_medio.
VARIABLE LABELS  d_50_medio 'd_50_medio. Quantidade de vagas para nível medio'.
VALUE LABELS d_50_medio
1 'Nenhuma'
2 'De 1 a 20 vagas'
3 'De 21 a 50 vagas'
4 'De 51 a 100 vagas' 
5 'Mais de 100 vagas'. 
EXECUTE.

RECODE q_50_2_3 (0=1) (1 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru HIGHEST=5) into d_50medio_posse.
VARIABLE LABELS  d_50medio_posse 'd_50medio_posse. Quantidade de trabalhadores de nível medio que tomaram posse'.
VALUE LABELS d_50medio_posse
1 'Nenhum'
2 'De 1 a 20 trabalhadores'
3 'De 21 a 50 trabalhadores'
4 'De 51 a 100 trabalhadores'
5 'Mais de 100 trabalhadores'. 
EXECUTE.

****************************************questão 53

RECODE q_53_99 (1=0) INTO d_53.
RECODE q_53 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_53.
VARIABLE LABELS  d_53 'd_53. Para o ano de 2018, qual foi a previsão de quantidade de trabalhadores capacitados no plano'.
VALUE LABELS d_53
0 'Não há previsão'
1 'Nenhuma'
2 'De 1 a 5 pessoas'
3 'De 6 a 10 pessoas'
4 'De 10 a 500 pessoas' 
5 'De 501 a 1000 pessoas' 
6 'Mais de 1000 pessoas'. 
EXECUTE.

****************************************questão 55

RECODE q_55_1_99 (1=0) INTO d_55profissional.
RECODE q_55_1 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_55profissional.
VARIABLE LABELS  d_55profissional 'd_55profissional. Informe o total de trabalhadoras(es) capacitadas(os) '.
VALUE LABELS d_55profissional
0 'Não sabe'
1 'Nenhuma'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.

RECODE q_55_2_99 (1=0) INTO d_55conselheiras.
RECODE q_55_2 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d_55conselheiras.
VARIABLE LABELS  d_55conselheiras 'd_55conselheiras(os). Informe o total de conselheiras(os) capacitadas(os)'.
VALUE LABELS d_55conselheiras
0 'Não sabe'
1 'Nenhuma'
2 'De 1 a 5 conselheiras(os)'
3 'De 6 a 10 conselheiras(os)'
4 'De 10 a 500 conselheiras(os)' 
5 'De 501 a 1000 conselheiras(os)' 
6 'Mais de 1000 conselheiras(os)'. 
EXECUTE.


***************************************questão 57 2 questionarios incompletos para não sabe

RECODE q_57_99 (1=0) INTO d_57.
RECODE q_57 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 100=4) (101 thru HIGHEST=5) into d_57.
VARIABLE LABELS  d_57 'd_57 Qual a quantidade de profissionais do município que participaram de cursos do CAPACITASUAS'.
VALUE LABELS d_57
0 'Não sabe'
1 'Nenhuma'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 100 profissionais' 
5 'Mais de 100 profissionais'.
EXECUTE.


****************************************questão 61

RECODE q_61 (2018 =1) (2017=2) (2016=3) (2015=4) (2011 THRU 2014 =5) (2006 THRU 2010=6) (LOWEST THRU 2005=7) INTO d_61.
VARIABLE LABELS d_61 'd_61. Ano da última atualização do PCCS'.
VALUE LABELS d_61
1 '2018'
2 '2017'
3 '2016'
4 '2015'
5 'De 2011 a 2014'
6 'De 2006 a 2010'
7 'Até de 2005'.
EXECUTE.




