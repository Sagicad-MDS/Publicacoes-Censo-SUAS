*****************************************************************************
**** Syntax Censo SUAS - RH ******Conselho Municipal 2015******
*****************************************************************************

************************************************************************
******          Variáveis Derivadas                                     ******
************************************************************************



*****************************************************************************************
*** Recode para o ano de publicação do instrumento que criou o conselho ***
*****************************************************************************************

*** Recode para o ano de publicação do instrumento que criou o conselho ***

RECODE q1 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 
    2015=5) INTO D1.
VARIABLE LABELS  D1 'D1_Ano de publicação do instrumento que criou o Conselho'.
EXECUTE.

VALUE LABELS
/D1
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2015".
EXECUTE.

*** Recodificação da variável q3: criação de categorias ***

RECODE q3 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 
    2015=5) INTO D3.
VARIABLE LABELS  D3 'D3_Ano de alteração da Lei original do Conselho'.
EXECUTE.

VALUE LABELS
/D3
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2015".
EXECUTE.

*** Recodificação da variável q5: criação de categorias ***

RECODE q5 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 
    2015=5) INTO D5.
VARIABLE LABELS  D5 'D5_Ano da última atualização do Regimento'.
EXECUTE.

VALUE LABELS
/D5
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2015".
EXECUTE.

********************************************************************************************
******** Quantidade de Salas ***
********************************************************************************************

*** Total de Salas exclusivas do conselho ***

COMPUTE D12_exclusivas= q12a + q12b.
EXECUTE.

VARIABLE LABELS
D12_exclusivas 'D12_exclusivas_Total de salas exclusivas em uso no Conselho'.
EXECUTE.

RECODE D12_exclusivas (0 =0) (1 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D12_exclusivas_categoria.

VARIABLE LABELS
D12_exclusivas_categoria 'D12_exclusivas_categoria_Total de salas exclusivas em uso no Conselho'.
EXECUTE.

ADD VALUE LABEL
D12_exclusivas_categoria  0 "Nenhuma sala" 1"1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

***************************************************************************************************
*** Total de Salas compartilhadas do conselho 

COMPUTE D12_compartilhadas= q12c + q12d.
EXECUTE.

VARIABLE LABELS
D12_compartilhadas	'D12_compartilhadas_Total de salas compartilhadas em uso no Conselho'.
EXECUTE.

RECODE D12_compartilhadas (0 = 0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D12_compartilhadas_categoria.

VARIABLE LABELS
D12_compartilhadas_categoria	'D12_compartilhadas_categoria_Total de salas compartilhadas em uso no Conselho'.
EXECUTE.

ADD VALUE LABEL
D12_compartilhadas_categoria  0 " Nenhuma sala" 1"1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

*** Total de Salas do conselho ***

COMPUTE D12_total_salas= q12a + q12b + q12c + q12d.
EXECUTE.

VARIABLE LABELS
D12_total_salas	'D12_total_salas_Total de salas (exclusivas e compartilhadas) em uso no Conselho'.
EXECUTE.

RECODE D12_total_salas (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D12_total_salas_categoria.

VARIABLE LABELS
D12_total_salas_categoria	'D12_total_salas_categoria_Total de salas (exclusivas e compartilhadas) em uso no Conselho'.
EXECUTE.

ADD VALUE LABEL
D12_total_salas_categoria 0 "Nenhuma sala" 1" 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

*** Total de computadores (exclusivos e compartilhados) em uso no Conselho ***

COMPUTE q15_total=q15a + q15c.
EXECUTE.

VARIABLE LABELS
q15_total	q15_total_Quantidade total de computadores (exclusivos e compartilhados) em uso no Conselho.
EXECUTE.

*** Total de computadores (exclusivos e compartilhados) em uso no Conselho com internet ***

COMPUTE q15_total_net=q15b + q15d.
EXECUTE.

VARIABLE LABELS
q15_total_net	q15_total_net_Quantidade total de computadores (exclusivos e compartilhados) conectados à internet em uso no Conselho.
EXECUTE.

*** Recode para o total de computadores em uso ***

RECODE
  q15_total
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D15_total .
EXECUTE .

ADD VALUE LABEL
D15_total 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".
Execute.

VARIABLE LABELS
D15_total	D15_total_Quantidade total de computadores (exclusivos e compartilhados) em uso no Conselho.
EXECUTE.

*** Recode para o total de computadores conectados a internet em uso ***

RECODE
  q15_total_net
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D15_total_net .
EXECUTE .

ADD VALUE LABEL
D15_total_net 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".
Execute.

VARIABLE LABELS
D15_total_net	D15_total_net_Quantidade total de computadores (exclusivos e compartilhados) conectados à internet em uso no Conselho.
EXECUTE.


*** Horas de funcionamento do Conselho por semana ***

IF (q21_1 * q21_2 < 30) D21_horas_por_semana_categoria = 0 .
IF (q21_1 * q21_2  >= 30 & q21_1 * q21_2   < 40) D21_horas_por_semana_categoria = 1 .
IF (q21_1 * q21_2  >= 40 & q21_1 * q21_2   < 50) D21_horas_por_semana_categoria = 2 .
IF (q21_1 * q21_2 > 49) D21_horas_por_semana_categoria = 3 .
EXECUTE .

ADD VALUE LABEL
D21_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".

VARIABLE LABELS
D21_horas_por_semana_categoria	D21_horas_por_semana_categoria_Total de horas por semana que o Conselho encontra-se em funcionamento.
EXECUTE.

*** Recode para o total de reuniões plenárias do Conselho ***

RECODE q23 (0=0) (1 thru 3 =1) (4 thru 9 =2) (10 thru 15=3) (16 thru 25=4) (26 thru Highest=5) INTO D23.
VARIABLE LABELS  D23 'D23_Quantidade de reuniões plenárias (ordinárias e extraordinárias) realizadas no Conselho no ano de 2015'.
EXECUTE.

VALUE LABELS
/D23
0 "Nenhuma"
1	"De 1 a 3"
2	"De 4 a 9"
3	"De 10 a 15"
4	"De 16 a 25"
5	"Acima de 25".
EXECUTE.


*****
*** Recode ALTERNATIVO para o total de reuniões plenárias do Conselho, UTILIZANDO AS FAIXAS APRESENTADAS EM 2014 *** 

RECODE q23 (0=0) (1 thru 3 =1) (4 thru 6 =2) (7 thru 9=3) (10 thru 15=4) (16 thru Highest=5) INTO D23_alternativo.
VARIABLE LABELS  D23_alternativo 'D23_Quantidade de reuniões plenárias (ordinárias e extraordinárias) realizadas no Conselho no ano de 2015'.
EXECUTE.

VALUE LABELS
/D23_alternativo
0 "Nenhuma"
1	"De 1 a 3"
2	"De 4 a 6"
3	"De 7 a 9"
4	"De 10 a 15"
5	"Acima de 15".
EXECUTE.


*************** Recode para quantidade de conselheiros ***

RECODE q61_1 (0=0) (1 thru 9 =1) (10 thru 15 =2) (16 thru 20=3) (21 thru 30=4) (31 thru Highest=5) INTO D61_1.
VARIABLE LABELS  D61_1 'D61_1_categorias_Quantidade de conselheiros titulares'.
EXECUTE.

VALUE LABELS
/ D61_1
0 "Nenhum"
1	"De 1 a 9"
2	"De 10 a 15"
3	"De 16 a 20"
4	"De 21 a 30"
5	"Acima de 30".
EXECUTE.

RECODE q61_2 (0=0) (1 thru 9 =1) (10 thru 15 =2) (16 thru 20=3) (21 thru 30=4) (31 thru Highest=5) INTO D61_2.
VARIABLE LABELS  D61_2 'D61_2_categorias_Quantidade de conselheiros suplentes'.
EXECUTE.

VALUE LABELS
/ D61_2
0 "Nenhum"
1	"De 1 a 9"
2	"De 10 a 15"
3	"De 16 a 20"
4	"De 21 a 30"
5	"Acima de 30".
EXECUTE.


