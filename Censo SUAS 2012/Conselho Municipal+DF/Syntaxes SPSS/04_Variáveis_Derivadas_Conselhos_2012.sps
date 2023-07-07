****Recode para o ano de publicação do isntrumento que criou o conselho

RECODE q3 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 
    2012=5) INTO D3.
VARIABLE LABELS  D3 'D3_Ano de publicação do instrumento que criou o Conselho'.
EXECUTE.

VALUE LABELS
/D3
1	"Até 1994"
2	"De 1995 a 1997"
3	"De 1998 a 2004"
4	"De 2005 a 2008"
5	"De 2009 a 2012".
EXECUTE.


*** Horas de funcionamento do Conselho por semana ***

IF (q19_1 * q19_2 < 30) D19_horas_por_semana_categoria = 0 .
IF (q19_1 * q19_2  >= 30 & q19_1 * q19_2   < 40) D19_horas_por_semana_categoria = 1 .
IF (q19_1 * q19_2  >= 40 & q19_1 * q19_2   < 50) D19_horas_por_semana_categoria = 2 .
IF (q19_1 * q19_2 > 49) D19_horas_por_semana_categoria = 3 .
EXECUTE .

ADD VALUE LABEL
D19_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".

  
VARIABLE LABELS
D19_horas_por_semana_categoria	D19_horas_por_semana_categoria_Total de horas por semana que o Conselho encontra-se em funcionamento.
EXECUTE.

**total de computadores (exclusivos e compartilhados) em uso no Conselho

COMPUTE q12_total=q12a + q12c.
EXECUTE.

VARIABLE LABELS
q12_total	q12_total_Quantidade total de computadores (exclusivos e compartilhados) em uso no Conselho.
EXECUTE.

**total de computadores (exclusivos e compartilhados) em uso no Conselho

COMPUTE q12_total_net=q12b + q12d.
EXECUTE.

VARIABLE LABELS
q12_total_net	q12_total_net_Quantidade total de computadores (exclusivos e compartilhados) conectados à internet em uso no Conselho.
EXECUTE.

***Recode para o total de computadores em uso

RECODE
  q12_total
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D12_total .
EXECUTE .

ADD VALUE LABEL
D12_total 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".
Execute.

VARIABLE LABELS
D12_total	D12_total_Quantidade total de computadores (exclusivos e compartilhados) em uso no Conselho.
EXECUTE.

***Recode para o total de computadores conectados a internet em uso

RECODE
  q12_total_net
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D12_total_net .
EXECUTE .

ADD VALUE LABEL
D12_total_net 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".
Execute.

VARIABLE LABELS
D12_total_net	D12_total_net_Quantidade total de computadores (exclusivos e compartilhados) conectados à internet em uso no Conselho.
EXECUTE.


*** Quantidade de Salas ***

*Total de Salas exclusivas do conselho*

COMPUTE D10_exclusivas= q10a + q10b.
EXECUTE.

VARIABLE LABELS
D10_exclusivas	'D10_exclusivas_Total de salas exclusivas em uso no Conselho'.
EXECUTE.

RECODE D10_exclusivas (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D10_exclusivas_categoria.

VARIABLE LABELS
D10_exclusivas_categoria	'D10_exclusivas_categoria_Total de salas exclusivas em uso no Conselho'.
EXECUTE.

ADD VALUE LABEL
D10_exclusivas_categoria  1"De 0 a 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

*Total de Salas exclusivas do conselho*

COMPUTE D10_compartilhadas= q10c + q10d.
EXECUTE.

VARIABLE LABELS
D10_compartilhadas	'D10_compartilhadas_Total de salas compartilhadas em uso no Conselho'.
EXECUTE.

RECODE D10_compartilhadas (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D10_compartilhadas_categoria.

VARIABLE LABELS
D10_compartilhadas_categoria	'D10_compartilhadas_categoria_Total de salas compartilhadas em uso no Conselho'.
EXECUTE.

ADD VALUE LABEL
D10_compartilhadas_categoria  1"De 0 a 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

*Total de Salas do conselho*

COMPUTE D10_total_salas= q10a + q10b + q10c + q10d.
EXECUTE.

VARIABLE LABELS
D10_total_salas	'D10_total_salas_Total de salas (exclusivas e compartilhadas) em uso no Conselho'.
EXECUTE.

RECODE D10_total_salas (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D10_total_salas_categoria.

VARIABLE LABELS
D10_total_salas_categoria	'D10_total_salas_categoria_Total de salas (exclusivas e compartilhadas) em uso no Conselho'.
EXECUTE.

ADD VALUE LABEL
D10_total_salas_categoria  1"De 0 a 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.


****Recode para o total de reuniões plenárias do Conselho 

RECODE q22 (0 thru 3 =1) (4 thru 9 =2) (10 thru 15=3) (16 thru 25=4) (26 thru Highest=5) INTO D22.
VARIABLE LABELS  D22 'D22_Quantidade de reuniões plenárias (ordinárias e extraordinárias) realizadas no Conselho no ano de 2011'.
EXECUTE.

VALUE LABELS
/D22
1	"De 0 a 3"
2	"De 4 a 9"
3	"De 10 a 15"
4	"De 16 a 25"
5	"Acima de 25".
EXECUTE.

****Recode para quantidade de conselheiros

RECODE nu_conselheiros (0 thru 9 =1) (10 thru 15 =2) (16 thru 20=3) (21 thru 30=4) (31 thru Highest=5) INTO Dquant_conselheiros.
VARIABLE LABELS  Dquant_conselheiros 'Dquant_conselheiros_Quantidade de conselheiros'.
EXECUTE.

VALUE LABELS
/Dquant_conselheiros
1	"De 0 a 9"
2	"De 10 a 15"
3	"De 16 a 20"
4	"De 21 a 30"
5	"Acima de 30".
EXECUTE.

