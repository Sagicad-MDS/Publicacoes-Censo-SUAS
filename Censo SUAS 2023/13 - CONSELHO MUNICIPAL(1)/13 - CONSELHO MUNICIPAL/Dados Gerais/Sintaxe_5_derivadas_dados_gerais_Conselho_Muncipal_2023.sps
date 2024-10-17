* Encoding: UTF-8.
*****Variáveis derivadas - CENSO SUAS 2023 Conselhos******




**q1:Ano de publicação da Lei que criou o Conselho**


RECODE q1_1  (1=0) INTO d1.
RECODE q1  (2024=1)  (2022 THRU 2023 = 2)   (2020 THRU 2021 = 3)  (2016 THRU 2019 = 4) (2011 THRU 2015 =5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d1.
VARIABLE LABELS d1 'd1. Ano da Lei Municipal de regulamentação do SUAS'.
VALUE LABELS d1
0 'Não possui Lei'
1 '2024'
2 'De 2022 a 2023'
3'De 2020 a 2021'
4 'De 2016 a 2019'
5 'De 2011 a 2015'
6 'De 2006 a 2010'
7 'Até de 2005'.
EXECUTE.

**q3: Ano da lei que alterou a lei original de criação do Conselho**

RECODE q3 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5)  (2015 thru 2019=6) (2020 thru 2023=7) (2024 thru Highest=8)    INTO  d3.

VARIABLE LABELS d3 'd3.Caso sim, informe o ano da Lei que alterou a Lei original de criação do Conselho'.

VALUE LABELS d3
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019"
7 "De 2020 a 2023"
8  "2024"        .

**q5: Ano de atualização do regimento**

RECODE q5 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5)  (2015 thru 2019=6) (2020 thru 2023=7) (2024 thru Highest=8)   INTO   d5.

VARIABLE LABELS d5 'q5.Caso sim, informe o ano da última atualização do Regimento'.

VALUE LABELS d5
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019"
7 "De 2020 a 2023"
8  "2024"        .


*ESPAÇO FÍSICO DO CONSELHO QUANTIDADE DE SALAS/COMPUTADORES****

**Total de salas de uso exclusivo do Conselho (maximo de 15 e mais de 15 pessoas)**

COMPUTE d9_exclusivas=SUM (q9_1,q9_2).

VARIABLE LABELS d9_exclusivas 'd9.Total de salas de uso exclusivo do Conselho'. 
 
RECODE d9_exclusivas (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO     d9_exclusivas_categoria.

VALUE LABELS d9_exclusivas_categoria  
0"Nenhuma sala exclusiva"
1"1 sala exclusiva"  
2"De 2 a 3 salas exclusivas"  
3"De 4 a 5 salas exclusivas" 
4"De 6 a 7 salas exclusivas" 
5"8 ou mais salas exclusivas".

VARIABLE LABELS d9_exclusivas_categoria 'Total de salas de uso exclusivo do Conselho - Categoria'.

**Total de salas de uso compartilhado do Conselho (maximo de 15 e mais pessoas)**

COMPUTE d9_compartilhadas= SUM(q9_4,q9_5).

VARIABLE LABELS d9_compartilhadas 'd9.Total de salas de uso compartilhado do Conselho'.

RECODE d9_compartilhadas (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO   d9_compartilhadas_categoria.

VALUE LABELS d9_compartilhadas_categoria  
0"Nenhuma sala compartilhada"
1"1 sala compartilhada"  
2"De 2 a 3 salas compartilhadas"  
3"De 4 a 5 salas compartilhadas"  
4"De 6 a 7 salas compartilhadas" 
5"Mais de 7 salas compartilhadas".

VARIABLE LABELS  d9_compartilhadas_categoria 'Total de salas compartilhadas do Conselho - Categoria'. 

**Salas com capacidades máxima de 15 pessoas**
**Total de salas (compartilhadas e exclusivas) com capacidae para mais de 15 pessoas**

**Total de salas (compartilhadas e exclusivas) e com todas as capacidades**

COMPUTE d9_total= SUM(q9_1,q9_2,q9_4, q9_5). 

VARIABLE LABELS d9_total 'd9.Total de salas de uso do Conselho - Exclusivas e Compartilhadas'. 

RECODE d9_total (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 30=4) (31 thru Highest=5) INTO d9_total_categoria. 

VALUE LABELS  d9_total_categoria
0"Nenhuma sala"
1"De 1 a 5 salas"  
2"De 6 a 10 salas"  
3"De 11 a 20 salas"  
4"De 21 a 30 salas" 
5"Mais de 30 salas".

VARIABLE LABELS d9_total_categoria 'd9.Total de salas de uso do Conselho - Categoria'. 



RECODE q9_7 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO  d9_7.
VALUE LABELS  d9_7 
  1"Até 1 banheiro" 
 2"De 2 a 3 banheiros" 
 3"De 4 a 5 banheiros" 
 4"De 6 a 7 banheiros"
 5"8 ou mais banheiros".

VARIABLE LABELS  d9_7  'd9. Quantidade de banheiros'.


**Quantitativo de computadores de uso exclusivo do Conselho (com  internet)**

RECODE q11_1  (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_exclusivos_categoria. 

VALUE LABELS d11_exclusivos_categoria
0 "Nenhum computador exclusivo"
2 "De 1 a 3 computadores exclusivos" 
3 "De 4 a 6 computadores exclusivos" 
4 "De 7 a 10 computadores exclusivos"
5 "Mais de 10 computadores exclusivos". 

VARIABLE LABELS d11_exclusivos_categoria 'd11.Total de computadores exclusivos do Conselho - Categoria'. 



**Quantitativo de computadores de uso compartilhado do Conselho (com  internet)**

RECODE q11_2  (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_compartilhados_categoria. 

VALUE LABELS d11_compartilhados_categoria
0 "Nenhum computador compartilhado"
2 "De 1 a 3 computadores compartilhados" 
3 "De 4 a 6 computadores compartilhados" 
4 "De 7 a 10 computadores compartilhados"
5 "Mais de 10 computadores compartilhados". 

VARIABLE LABELS d11_compartilhados_categoria 'd11.Total de computadores compartilhados do Conselho - Categoria'. 



RECODE q14_1  (Lowest thru 2=1)  (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d14_1. 

VARIABLE LABELS d14_1   ' funcionárias(os) exclusivas(os) da Secretaria Executiva do Conselho de Assistência Social'. 

VALUE LABELS  d14_1
1"Até 2 funcionárias(os) exclusivas(os)"
2"De 3 a 5 funcionárias(os) exclusivas(os)"
3"De 6 a 10 funcionárias(os) exclusivas(os)"
4"De 11 a 20 funcionárias(os) exclusivas(os)"
5"Mais de 20 funcionárias(os) exclusivas(os)" .



RECODE q14_2  (Lowest thru 2=1)  (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d14_2. 

VARIABLE LABELS d14_2   ' funcionárias(os) não exclusivas(os) da Secretaria Executiva do Conselho de Assistência Social'. 

VALUE LABELS  d14_2
1"Até 2 funcionárias(os) não exclusivas(os)"
2"De 3 a 5 funcionárias(os) não exclusivas(os)"
3"De 6 a 10 funcionárias(os) não exclusivas(os)"
4"De 11 a 20 funcionárias(os) não exclusivas(os)"
5"Mais de 20 funcionárias(os) não exclusivas(os)" .


**q15*********** Horas de funcionamento por semana da Unidade **********************************************************************************************

IF  (q15_1 * q15_2 < 30) d15=0.
IF (q15_1 * q15_2 >= 30) & (q15_1 * q15_2   < 40) d15 = 1 .
IF (q15_1 * q15_2  >= 40) & (q15_1 * q15_2   < 50) d15 = 2 .
IF (q15_1 * q15_2 > 49) d15 = 3 .
EXECUTE.

VALUE LABELS   d15
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 49 horas/semana".

 VARIABLE LABELS
d15 'd15_Total de horas por semana que o Conselho encontra-se em funcionamento'.
EXECUTE.


************************q22**************************************************** 

RECODE q22 (0 thru 8=1) (9 thru 16=2) (17 thru 20=3) (21 thru 30=4) (31 thru 40=5) (41 thru HIGHEST=6) INTO d22.

VARIABLE LABELS d22  'd22.Considerando todas as reuniões plenárias do Conselho (ordinárias e extraordinárias), quantas reuniões foram realizadas no ano de 2022'.

VALUE LABELS  d22
1 "De 0 a 8 reuniões"
2" De 9 a 16 reuniões"
3 "De 17 a 20 reuniões" 
4 "De 21 a 30 reuniões" 
5 "De 31 a 40 reuniões"
6 "Mais de 40 reuniões" .


************************q41**************************************************** 

RECODE q41 (0 thru 8=1) (9 thru 16=2) (17 thru 20=3) (21 thru 30=4) (31 thru 40=5) (41 thru HIGHEST=6) INTO d41.

VARIABLE LABELS d41  'd41.Em 2022, quantas reuniões da CIB o conselho de assistência social acompanhou?'.

VALUE LABELS  d41
1 "De 0 a 8 reuniões"
2" De 9 a 16 reuniões"
3 "De 17 a 20 reuniões" 
4 "De 21 a 30 reuniões" 
5 "De 31 a 40 reuniões"
6 "Mais de 40 reuniões" .



RECODE q45_1  (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d45_1. 

VARIABLE LABELS d45_1   'd45_1.Conselheiros titulares'. 

VALUE LABELS  d45_1
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .



RECODE q45_2  (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d45_2. 

VARIABLE LABELS d45_2   'd45_2.Conselheiros suplentes'. 

VALUE LABELS  d45_2
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .




RECODE q57 (Lowest thru 0=1) (1 =2) (2=3) (3=4) (4 thru 6=5)   (7 thru Highest=6)    INTO  d57.

VARIABLE LABELS d57 ' Quanto tempo, em média, leva do momento que a entidade ou OSC faz o pedido de inscrição até o seu deferimento/indeferimento?'.

VALUE LABELS d57
1 "menos de 1 mês"
2 "1 mês"
3 "2 meses"
4 "3 meses"
5 "De 4 a 6 meses"
6 "mais de 6 meses"
      .











