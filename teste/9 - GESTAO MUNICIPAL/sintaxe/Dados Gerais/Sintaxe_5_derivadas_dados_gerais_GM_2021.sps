* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARI�VEIS DERIVADAS GEST�O MUNICIPAL - CENSO SUAS 2021
****************************************************************************************************

********************************************** quest�o 3

RECODE q3_1 (1=0) INTO d3.
RECODE q3  (2021=1)  (2020=2)   (2018 THRU 2019 = 3)  (2015 THRU 2017 = 4) (2011 THRU 2014 =5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d3.
VARIABLE LABELS d3 'd3. Ano da Lei Municipal de regulamenta��o do SUAS'.
VALUE LABELS d3
0 'N�o possui Lei'
1 '2021'
2 '2020'
3'De 2018 a 2019'
4 'De 2015 a 2017'
5 'De 2011 a 2014'
6 'De 2006 a 2010'
7 'At� de 2005'.
EXECUTE.


*******************************quest�o 12

RECODE q12 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d12.
VARIABLE LABELS d12 'd12.Quantidade de Pessoas em Situa��o de Rua'.
VALUE LABELS d12
0 'Nenhuma pessoa' 
1 'At� 5 pessoas'  
2 '6 a 10 pessoas'    
3 '11 a 50 pessoas'   
4 '51 a 200 pessoas'  
5 '201 a 500 pessoas'   
6 '501 a 1.000 pessoas'   
7 'mais de 1.000 pessoas'  . 
EXECUTE.

************************************quest�o 21

RECODE q21_98 (1=0) INTO d21.
RECODE q21 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 50=4) (51 thru 200=5) (201 thru 500=6)  (501 thru 1000=7) (1001 thru Highest=8) (ELSE=Copy) INTO d21.
VARIABLE LABELS d21 'd21. Quantas pessoas foram atendidas pelo Servi�o de Prote��o Social B�sica no Domic�lio para Pessoas com defici�ncia e idosas no munic�pio, em agosto/2018'.
VALUE LABELS d21
0 'N�o soube informar'
1 'Nenhuma pessoa  ' 
2 'At� 5 pessoas'    
3 '6 a 10 pessoas'    
4 '11 a 50 pessoas'    
5 '51 a 200 pessoas'  
6 '201 a 500 pessoas'   
7 '501 a 1.000 pessoas'  
8 'mais de 1.000 pessoas'  . 
EXECUTE.


************************************quest�o 23

RECODE q23_5_99  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d23_5.
VARIABLE LABELS d23_5 'd23_5.MSE executada em unidade no municipio'.
VALUE LABELS d23_5
0 'Nenhuma Unidade ' 
1 'At� 5 Unidades '   
2 '6 a 10 Unidades '     
3 '11 a 50 Unidades '     
4 '51 a 200 Unidades '    
5 '201 a 500 Unidades '    
6 '501 a 1.000 Unidades '   
7 'mais de 1.000 Unidades '   . 
EXECUTE.

RECODE q23_6_99  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d23_6.
VARIABLE LABELS d23_6 'd23_6.MSE executada em outra unidade  publica (exceto CREAS)'.
VALUE LABELS d23_6
0 'Nenhuma Unidade ' 
1 'At� 5 Unidades '   
2 '6 a 10 Unidades '     
3 '11 a 50 Unidades '     
4 '51 a 200 Unidades '    
5 '201 a 500 Unidades '    
6 '501 a 1.000 Unidades '   
7 'mais de 1.000 Unidades '   . 
EXECUTE.




RECODE q23_7_99  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4)
(201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d23_7.
VARIABLE LABELS d23_7 'd23_7. � atendido por unidades de outras pol�tica p�blica do munic�pio (sa�de, educa��o, direitos humanos, etc'.
VALUE LABELS d23_7
0 'Nenhuma Unidade ' 
1 'At� 5 Unidades '   
2 '6 a 10 Unidades '     
3 '11 a 50 Unidades '     
4 '51 a 200 Unidades '    
5 '201 a 500 Unidades '    
6 '501 a 1.000 Unidades '   
7 'mais de 1.000 Unidades '   .  
EXECUTE.


************************************quest�o 24

RECODE q24_1_98 (1=0) INTO d24_1.
RECODE q24_1  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d24_1.
VARIABLE LABELS d24_1  'd24_1. Total de adolescentes em cumprimento de LA'.
VALUE LABELS d24_1
0 'Nenhum adolescente' 
1 'At� 5 adolescentes'  
2 '6 a 10 adolescentes'    
3 '11 a 50 adolescentes'    
4 '51 a 200 adolescentes'  
5 '201 a 500 adolescentes'   
6 '501 a 1.000 adolescentes'   
7 'mais de 1.000 adolescentes'  . 
EXECUTE.


RECODE q24_2_98 (1=0) INTO d24_2.
RECODE q24_2  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d24_2.
VARIABLE LABELS d24_2  'd24_2. Total de adolescentes em cumprimento de PSC'.
VALUE LABELS d24_2
0 'Nenhum adolescente' 
1 'At� 5 adolescentes'  
2 '6 a 10 adolescentes'    
3 '11 a 50 adolescentes'    
4 '51 a 200 adolescentes'  
5 '201 a 500 adolescentes'   
6 '501 a 1.000 adolescentes'   
7 'mais de 1.000 adolescentes'  . 
EXECUTE.


RECODE q24_3_98 (1=0) INTO d24_3.
RECODE q24_3  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d24_3.
VARIABLE LABELS d24_3  'd24_3. Total de adolescentes em MSE'.
VALUE LABELS d24_3
0 'Nenhum adolescente' 
1 'At� 5 adolescentes'  
2 '6 a 10 adolescentes'    
3 '11 a 50 adolescentes'    
4 '51 a 200 adolescentes'  
5 '201 a 500 adolescentes'   
6 '501 a 1.000 adolescentes'   
7 'mais de 1.000 adolescentes'  . 
EXECUTE.


************************************quest�o 28

RECODE q28_4_99  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d28_4.
VARIABLE LABELS d28_4  'd28_4. Servi�o ofertado em outra unidade p�blica'.
VALUE LABELS d28_4 
0 'Nenhuma unidade' 
1 'At� 5 unidades'   
2 '6 a 10 unidades'     
3 '11 a 50 unidades'     
4 '51 a 200 unidades'   
5 '201 a 500 unidades'    
6 'mais de 500 unidades'   . 
EXECUTE.



RECODE q28_5_99  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d28_5.
VARIABLE LABELS d28_5  'd28_5. Servi�o ofertado em Entidade ou Organiza��o da Sociedade Civil'.
VALUE LABELS d28_5 
0 'Nenhuma unidade' 
1 'At� 5 unidades'   
2 '6 a 10 unidades'     
3 '11 a 50 unidades'     
4 '51 a 200 unidades'   
5 '201 a 500 unidades'    
6 'mais de 500 unidades'   . 
EXECUTE.

************************************quest�o 32

RECODE q32 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 15=3) (16 thru 20=4) (21 thru HIGHEST=5) into d32.
VARIABLE LABELS  d32 'd32. Atualmente, quantas crian�as e/ou adolescente est�o acolhidos em fam�lias guardi�s na fam�lia extensa inseridas no Programa'.
VALUE LABELS d32
0 'Nenhuma crian�as e/ou adolescente'
1 'De 1 a 5 crian�as e/ou adolescente'
2 'De 6 a 10 crian�as e/ou adolescente'
3 'De 11 a 15 crian�as e/ou adolescente' 
4 'De 16 a 20 crian�as e/ou adolescente' 
5 'Mais de 20 crian�as e/ou adolescente'. 
EXECUTE.


************************************quest�o 33

RECODE q33 (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 25=3) (26 thru 50=4) (51 thru HIGHEST=5) into d33.
VARIABLE LABELS  d33 'd33. Atualmente quantas fam�lias que recebem recursos pelo Programa de Guarda Subsidiada'.
VALUE LABELS d33
0 'Nenhuma fam�lia'
1 'De 1 a 5 fam�lias'
2 'De 6 a 10 fam�lias'
3 'De 11 a 25 fam�lias' 
4 'De 26 a 50 fam�lias' 
5 'Mais de 50 fam�lias'. 
EXECUTE.

****q37*******************************************************************************


RECODE q37   (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d37.
VARIABLE LABELS d37  'd37.Atualmente, quantos idosos est�o acolhidos em fam�lias acolhedoras'.
VALUE LABELS d37
0 'Nenhum idoso' 
1 'At� 5 idosos'  
2 '6 a 10 idosos'    
3 '11 a 50 idosos'    
4 '51 a 200 idosos'  
5 '201 a 500 idosos'   
6 '501 a 1.000 idosos'   
7 'mais de 1.000 idosos'  . 
EXECUTE.


****q39*******************************************************************************

RECODE q39   (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d39.
VARIABLE LABELS d39  'd39. quantidade de pessoas desabrigadas que foram acolhidas em alojamentos provis�rios nos �ltimos 12 (doze) meses'.
VALUE LABELS d39
0 'Nenhum desabrigado' 
1 'At� 5 desabrigados'   
2 '6 a 10 desabrigados'     
3 '11 a 50 desabrigados'     
4 '51 a 200 desabrigados'   
5 '201 a 500 desabrigados'    
6 '501 a 1.000 desabrigados'    
7 'mais de 1.000 desabrigados'   . 
EXECUTE.


**q41********************************************************************************************************************************

RECODE q41   (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=7)  INTO d41.
VARIABLE LABELS d41  'd41.Para quantos imigrantes/refugiados a assistencia social do munic�pio ofertou programa(s)/servi�o(s)'.
VALUE LABELS d41
0 'Nenhum imigrantes/refugiados' 
1 'At� 5 imigrantes/refugiados'   
2 '6 a 10 imigrantes/refugiados'   
3 '11 a 50 imigrantes/refugiados'  
4 '51 a 200 imigrantes/refugiados' 
5 '201 a 500 imigrantes/refugiados'  
6 '501 a 1.000 imigrantes/refugiados'  
7 'mais de 1.000 imigrantes/refugiados' . 
EXECUTE.


**q64******************************************************************************

RECODE q64_1  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d64_1.
VARIABLE LABELS d64_1  'd64_1. Total de VAGAS em Servi�os de Acolhimento (Abrigos)'.
VALUE LABELS d64_1
0 'Nenhuma vaga' 
1 'At� 5 vagas'   
2 '6 a 10 vagas'    
3 '11 a 50 vagas'    
4 '51 a 200 vagas'  
5 '201 a 500 vagas'  
6 'mais de 500 vagas'  . 
EXECUTE.


RECODE q64_2  (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5) (501 thru Highest=6)  INTO d64_2.
VARIABLE LABELS d64_2  'd64_2. Total de PESSOAS Acolhidas'.
VALUE LABELS d64_2
0 'Nenhuma pessoa' 
1 'At� 5 pessoas'   
2 '6 a 10 pessoas'   
3 '11 a 50 pessoas'  
4 '51 a 200 pessoas' 
5 '201 a 500 pessoas'  
6 'mais de 500 pessoas' . 
EXECUTE.





****q74****************************************************************

RECODE q74_98 (1=0) INTO d74.
RECODE q74  (2021=1)  (2020=2)  (2018 THRU 2019 = 3)  (2015 THRU 2017 = 4) (2011 THRU 2014 =5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d74.
VARIABLE LABELS d74 'd74. Em que ano ocorreu a �ltima atualiza��o do Plano de Capacita��o e Educa��o Permanente'.
FORMATS d74  (f1.0).
EXECUTE.

VALUE LABELS d74
0 'N�o possui Lei'
1 '2021'
2 '2020'
3'De 2018 a 2019'
4 'De 2015 a 2017'
5 'De 2011 a 2014'
6 'De 2006 a 2010'
7 'At� de 2005'.
EXECUTE.


****q76****************************************************************

RECODE q76_1_98 (1=0) INTO d76_1.
RECODE q76_1 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d76_1.
VARIABLE LABELS  d76_1  'd76_1. Informe o total de profissionais capacitadas(os) '.
VALUE LABELS d76_1
0 'N�o sabe'
1 'Nenhuma'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 500 profissionais' 
5 'De 501 a 1000 profissionais ' 
6 'Mais de 1000 profissionais'. 
EXECUTE.

RECODE q76_2_98 (1=0) INTO d76_2.
RECODE q76_2  (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 500=4) (501 thru 1000=5) (1001 thru HIGHEST=6) into d76_2.
VARIABLE LABELS  d76_2 'd76_2. Informe o total de conselheiras(os) capacitadas(os)'.
VALUE LABELS d76_2
0 'N�o sabe'
1 'Nenhuma'
2 'De 1 a 5 conselheiras(os)'
3 'De 6 a 10 conselheiras(os)'
4 'De 10 a 500 conselheiras(os)' 
5 'De 501 a 1000 conselheiras(os)' 
6 'Mais de 1000 conselheiras(os)'. 
EXECUTE.



***************************************quest�o 77

RECODE q77 (0=1) (1 thru 5=2) (6 thru 10=3) (11 thru 100=4) (101 thru HIGHEST=5) into d77.
VARIABLE LABELS  d77  'd77. Em 2019, algum(a) trabalhador(a) da Assist�ncia Social do munic�pio (SEDE E UNIDADES P�BLICAS) participou de algum curso do CAPACITASUAS?'.
VALUE LABELS d77 
1 'Nenhuma'
2 'De 1 a 5 profissionais'
3 'De 6 a 10 profissionais'
4 'De 10 a 100 profissionais' 
5 'Mais de 100 profissionais'.
EXECUTE.





