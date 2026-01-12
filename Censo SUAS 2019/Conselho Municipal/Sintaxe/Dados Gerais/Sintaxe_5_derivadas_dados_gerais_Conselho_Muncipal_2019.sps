* Encoding: UTF-8.
*****Variáveis derivadas - CENSO SUAS 2019 Conselhos******

**Mudanças nas seguintes variáveis (que devem estar nos formatos NUMÉRICOS):
 q_1: Informe o ano de publicação da Lei que criou o Conselho:
q_3: Caso sim, informe o ano da Lei que alterou a Lei original de criação do Conselho:
q_5: Caso sim, informe o ano da última atualização do Regimento:
q_9: Descrição do espaço físico do Conselho (Salas de uso exclusivo e compartilhado, e suas capacidades)
q_11:Quantidade  de computadores de uso do Conselho (Exclusivos ou compartilhadso, e com acesso a internet):
q_15:Horário de funcionamento do Conselho - Horas por dia:
q_25:Quantas(os) conselheiras(os) do Conselho Estadual de Assistência Social são representantes do Conselho Estadual de Gestores Municipais de Assistência Social (Coegemas) ou congênere?
q27. Considerando todas as reuniões plenárias do Conselho (ordinárias e extraordinárias), quantas reuniões foram realizadas no ano de 2018?
q_31: Quantos Conselheiros participaram de curso do CAPACITASUAS?
q_36:ano da última atualização da regulamentação
q_45_1:Visitas a unidades públicas da rede socioassistencial
q_45_2:Visitas a entidades/organizações da sociedade civil
q_45_3:Total de visitas
 q_48: De que ano?
q_50:Atualmente, quantas Entidades possuem Inscrição no Conselho?
q_51:Quantos pedidos de inscrição de entidades foram recebidos por este Conselho em 2019 (De 1º de janeiro a 31 de agosto de 2019)?
q_52:Quantos pedidos foram deferidos em 2017 (De 1º de janeiro a 31 de agosto de 2019)?
q_54:Quantos cancelamentos foram realizados em 2017 (De 1º de janeiro a 31 de agosto de 2019)?
q_55:Quanto tempo, em média, leva do momento que a entidade faz o pedido de inscrição até o seu deferimento/indeferimento?
q_56:Quantas audiências públicas para apresentação das entidades inscritas foram realizadas no último ano?
**




**q1:Ano de publicação da Lei que criou o Conselho**

RECODE  q1 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru Highest=6) INTO  d1.

VARIABLE LABELS d1 'd1.Ano de publicação da Lei que criou o Conselho'.

VALUE LABELS
/d1
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019" 
.


**q3: Ano da lei que alterou a lei original de criação do Conselho**

RECODE q3 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru Highest=6)   INTO  d3.

VARIABLE LABELS d3 'd3.Caso sim, informe o ano da Lei que alterou a Lei original de criação do Conselho'.

VALUE LABELS
/d3
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019" 
.

**q5: Ano de atualização do regimento**

RECODE q5 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru Highest=6) INTO  d5.

VARIABLE LABELS d5 'q5.Caso sim, informe o ano da última atualização do Regimento'.

VALUE LABELS
/d5
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019" 
.

****ESPAÇO FÍSICO DO CONSELHO QUANTIDADE DE SALAS/COMPUTADORES****

**Total de salas de uso exclusivo do Conselho (maximo de 15 e mais de 15 pessoas)**

COMPUTE d9_exclusivas=SUM (q9_1,q9_2).

VARIABLE LABELS
d9_exclusivas 'd9.Total de salas de uso exclusivo do Conselho'. 
 
RECODE d9_exclusivas (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    d9_exclusivas_categoria.

VALUE LABELS
/d9_exclusivas_categoria  
0"Nenhuma sala exclusiva"
1"1 sala exclusiva"  
2"De 2 a 3 salas exclusivas"  
3"De 4 a 5 salas exclusivas" 
4"De 6 a 7 salas exclusivas" 
5"8 ou mais salas exclusivas".
.

VARIABLE LABELS
d9_exclusivas_categoria 'd9.exclusivas.categoria.Total de salas de uso exclusivo do Conselho - Categoria'.

**Total de salas de uso compartilhado do Conselho (maximo de 15 e mais pessoas)**

COMPUTE d9_compartilhadas= SUM(q9_3,q9_4).

VARIABLE LABELS
d9_compartilhadas 'd9.Total de salas de uso compartilhado do Conselho'.

RECODE d9_compartilhadas (0=0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    d9_compartilhadas_categoria.

VALUE LABELS 
/d9_compartilhadas_categoria  
0"Nenhuma sala compartilhada"
1"1 sala compartilhada"  
2"De 2 a 3 salas compartilhadas"  
3"De 4 a 5 salas compartilhadas"  
4"De 6 a 7 salas compartilhadas" 
5"Mais de 7 salas compartilhadas".

VARIABLE LABELS
d9_compartilhadas_categoria 'd9.Total de salas compartilhadas do Conselho - Categoria'. 

**Salas com capacidades máxima de 15 pessoas**

COMPUTE d9_maximo15= SUM(q9_1,q9_3). 

VARIABLE LABELS
d9_maximo15 'd9.Total de salas (compartilhadas e exclusivas) com capacidade máxima de 15 pessoas'. 

RECODE d9_maximo15 (0 =0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d9_maximo15_categoria. 
    
VALUE LABELS 
/d9_maximo15_categoria  
0"Nenhuma sala capacidade máxima de 15 pessoas"
1"1 sala capacidade máxima de 15 pessoas"  
2"De 2 a 3 salas capacidade máxima de 15 pessoas"  
3"De 4 a 5 salas capacidade máxima de 15 pessoas"  
4"De 6 a 7 salas capacidade máxima de 15 pessoas" 
5"Mais de 7 salas capacidade máxima de 15 pessoas"
.

VARIABLE LABELS 
d9_maximo15_categoria 'd9.Total de salas (compartilhadas e exclusivas) com capacidades máxima de 15 pessoas - Categoria'.  

**Total de salas (compartilhadas e exclusivas) com capacidae para mais de 15 pessoas**

COMPUTE d9_mais15= SUM(q9_2,q9_4). 

VARIABLE LABELS
d9_mais15 'd9.Total de salas (compartilhadas e exclusivas) com capacidade para mais de 15 pessoas'.

RECODE d9_mais15 (0 =0) (1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d9_mais15_categoria. 

VALUE LABELS 
/d9_mais15_categoria  
0"Nenhuma sala capacidade para mais de 15 pessoas"
1"1 sala capacidade para mais de 15 pessoas"  
2"De 2 a 3 salas capacidade para mais de 15 pessoas"  
3"De 4 a 5 salas capacidade para mais de 15 pessoas"  
4"De 6 a 7 salas capacidade para mais de 15 pessoas" 
5"Mais de 7 salas capacidade para mais de 15 pessoas"
.

VARIABLE LABELS
d9_mais15_categoria 'd9.capacidade para mais de 15 pessoas - Categoria'.

**Total de salas (compartilhadas e exclusivas) e com todas as capacidades**

COMPUTE d9_total= SUM(q9_1,q9_2,q9_3, q9_4). 

VARIABLE LABELS
d9_total 'd9.Total de salas de uso do Conselho - Exclusivas e Compartilhadas'. 

RECODE d9_total (0=0) (1 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 30=4) (31 thru Highest=5) INTO d9_total_categoria. 

VALUE LABELS
/d9_total_categoria
0"Nenhuma sala"
1"De 1 a 5 salas"  
2"De 6 a 10 salas"  
3"De 11 a 20 salas"  
4"De 21 a 30 salas" 
5"Mais de 30 salas".

VARIABLE LABELS
d9_total_categoria 'd9.Total de salas de uso do Conselho - Categoria'. 



RECODE q9_5 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO  d9_5.
VALUE LABELS
d9_5  1"Até 1 banheiro"  2"De 2 a 3 banheiros"  3"De 4 a 5 banheiros"  4"De 6 a 7 banheiros" 5"8 ou mais banheiros".
EXECUTE.
VARIABLE LABELS  d9_5  'd9_5_v14607_Quantidade de banheiros'.
EXECUTE.



**Quantitativo de computadores de uso exclusivo do Conselho (com e sem internet)**

COMPUTE d11_exclusivos= SUM(q11_1,q11_2). 

VARIABLE LABELS 
d11_exclusivos 'd11.Total de computadores exclusivos do Conselho'. 

RECODE d11_exclusivos (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_exclusivos_categoria. 

VALUE LABELS
/d11_exclusivos_categoria
0 "Nenhum computador exclusivo"
2 "De 1 a 3 computadores exclusivos" 
3 "De 4 a 6 computadores exclusivos" 
4 "De 7 a 10 computadores exclusivos"
5 "Mais de 10 computadores exclusivos"
. 

VARIABLE LABELS d11_exclusivos_categoria 'd11.Total de computadores exclusivos do Conselho - Categoria'. 

**Quantitativo de computadores de uso compartilhado do Conselho (com e sem internet)**

COMPUTE d11_compartilhados= SUM(q11_3,q11_4). 

VARIABLE LABELS
d11_compartilhados 'd11.Total de computadores compartilhados do Conselho'.

RECODE d11_compartilhados (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_compartilhados_categoria. 

VALUE LABELS
/d11_compartilhados_categoria
0 "Nenhum computador compartilhado"
2 "De 1 a 3 computadores compartilhados" 
3 "De 4 a 6 computadores compartilhados" 
4 "De 7 a 10 computadores compartilhados"
5 "Mais de 10 computadores compartilhados"
. 

VARIABLE LABELS d11_compartilhados_categoria 'd11.Total de computadores compartilhados do Conselho - Categoria'. 



**Quantitativo de computadores conectados a internet (compartilhados e exclusivos)** 

COMPUTE d11_internet= SUM(q11_2,q11_4).

VARIABLE LABELS 
d11_internet 'd11.Computadores de uso exclusivo e compartilhado que estão contectados à internet'. 

RECODE d11_internet (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_internet_categoria.

VALUE LABELS
/d11_internet_categoria
0 "Nenhum computador com conexão à internet"
2 "De 1 a 3 computadores com conexão à internet" 
3 "De 4 a 6 computadores com conexão à internet" 
4 "De 7 a 10 computadores com conexão à internet"
5 "Mais de 10 computadores com conexão à internet"
. 

VARIABLE LABELS
d11_internet_categoria 'd11.Total de computadores contectados à internet - Categoria'. 

**Total computadores**

COMPUTE d11_total= SUM(q11_1,q11_2,q11_3,q11_4). 

VARIABLE LABELS
d11_total 'd11.Total de computadores de uso (compartilhado e exclusivo) dos Conselhos'.

RECODE d11_total (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_total_categoria. 

VALUE LABELS
/d11_total_categoria
0 "Nenhum computador"
2 "De 1 a 3 computadores" 
3 "De 4 a 6 computadores" 
4 "De 7 a 10 computadores"
5 "Mais de 10 computadores"
. 

VARIABLE LABELS
d11_total_categoria 'd11.Total de computadores'. 

************************************************************************** 
**q15b Horario de Funcionamento do Conselho - Horas por dia**

RECODE q15_2 (0 thru 8=1) (9 thru 16=2) (17 thru 20=3) (21 thru 30=4) (31 thru 40=5) (41 thru HIGHEST=6) INTO d15_2.

VARIABLE LABELS d15_2 'd15.2.Horário de funcionamento do Conselho - Horas por dia'.

VALUE LABELS
/d15_2
1 "De 0 a 8 horas"
2" De 9 a 16 horas"
3 "De 17 a 20 horas" 
4 "De 21 a 30 horas" 
5 "De 31 a 40 horas"
6 "Mais de 40 horas" 
.

*****q25*********************************
**Quantas(os) conselheiras(os) do Conselho Estadual de Assistência Social são representantes do Conselho Estadual de Gestores Municipais de Assistência Social (Coegemas) ou congênere?**

RECODE q25 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d25. 

VARIABLE LABELS d25 'd25.Quantos Conselheiros  Estaduais de Assistência Social são representantes do Coegemas ou congênere'. 

VALUE LABELS
/d25
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .


*****q27*********************************

RECODE q27 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru HIGHEST=5) INTO d27. 

VARIABLE LABELS d27 'd27.Quantas quantas reuniões plenárias foram realizadas no ano de 2018 (ordinárias e extraordinárias)'.

VALUE LABELS 
/d27
1 "Nenhuma reunião" 
2 "De 1 a 2 reuniões"
3 "De 3 a 5 reuniões" 
4 "De 6 a 10 reuniões" 
5 "Mais de 10 reuniões" 
. 


**q31: Conselheiros que participaram de algum curso do CAPACITASUAS**

RECODE q31_1_99 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d31_1_99. 

VARIABLE LABELS d31_1_99   'd31_1_99.Quantos Conselheiros participaram de algum curso do CAPACITASUAS'. 

VALUE LABELS
/d31_1_99
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .



**q36: qual o ano da última atualização da regulamentação**

RECODE q36 (0  thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru 2018=6) INTO  d36.

VARIABLE LABELS d36 'd36.Qual foi o ano da ultima  regulamentação por meio de resolução própria os Benefícios Eventuais concedidos no âmbito da Assistência Social'.

VALUE LABELS
/d36
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2018" 
.

**Visitas realizas as entidades da rede socioassistencial**

**q45_1: Visitas na rede socioassistencia**

RECODE q45_1 (0=0) (1thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru HIGHEST=5) INTO d45_1. 

VARIABLE LABELS d45_1 'd45.1.Visitas a unidades públicas da rede socioassistencial'.

VALUE LABELS
/d45_1
0 "Não houve visita"
1 "De 1 a 10 visitas"
2 "De 11 a 20 visitas" 
3 "De 21 a 40 visitas" 
4 "De 41 a 60 visitas"
5 "Mais de 60 visitas" 
.

**q45_2: Visitas a entidades/organizações da sociedade civil**

RECODE q45_2 (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru HIGHEST=5) INTO d45_2. 

VARIABLE LABELS d45_2 'd45.2.Visitas a entidades/organizações da sociedade civil'.

VALUE LABELS
/d45_2
0 "Não houve visita"
1 "De 1 a 10 visitas"
2 "De 11 a 20 visitas" 
3 "De 21 a 40 visitas" 
4 "De 41 a 60 visitas"
5 "Mais de 60 visitas" 
.

**q45_3 Total de visitas**

RECODE q45_3 (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru HIGHEST=5) INTO d45_3. 

VARIABLE LABELS d45_3 'd45.3.Total de visitas'.

VALUE LABELS
/d45_3
0 "Não houve visita"
1 "De 0 a 10 visitas"
2 "De 11 a 20 visitas" 
3 "De 21 a 40 visitas" 
4 "De 41 a 60 visitas"
5 "Mais de 60 visitas" 
.

**q48 de qual ano é a Resolução que regulamenta a inscrição das entidades e organizações de assistência social, bem como dos serviços, programas, projetos e benefícios socioassistenciais?**

RECODE q48_1 (0 thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru 2018=6)  INTO  d48_1.

VARIABLE LABELS d48_1  'd48_1 De que ano é a Resolução?'.

VALUE LABELS
/d48_1
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2018" 
.

**q50: Entidades com inscrição no Conselho**

RECODE q50 (0 =0) (1thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru HIGHEST=5) INTO d50. 

VARIABLE LABELS d50 'd50.Atualmente, quantas Entidades possuem Inscrição no Conselho?'. 

VALUE LABELS
/d50
0 "Nenhuma instituição possui inscrição" 
1 "De 0 a 5 instituições" 
2 "De 6 a 10 instituições" 
3 "De 11 a 20 instituições" 
4 "De 21 a 40 instituições" 
5 "Mais de 41 instituições" 
. 

**q51: Pedidos de inscrição de entidades**

RECODE q51 (0=0) (1 thru 15=1) (16 thru 30=2) (31 thru 50=3) (51 thru 80=4) (81 thru HIGHEST=5) INTO d51.

VARIABLE LABELS d51 'd51.Quantos pedidos de inscrição de entidades foram recebidos por este conselho em 2019?'.

VALUE LABELS
/d51
0 "Não houve pedido"
1 "De 1 a 15 pedidos"
2 "De 16 a 30 pedidos"
3 "De 31 a 50 pedidos"
4 "De 51 a 80 pedidos" 
5 "Mais de 80 pedidos" 
. 

**q52: Pedidos deferidos**

COMPUTE d52= SUM(q52_1,q52_2). 
VARIABLE LABELS
d52 'd52.Quantos pedidos foram deferidos em 2019?'.

RECODE d52  (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru HIGHEST=5) INTO d52_total. 
VARIABLE LABELS d52_total 'd52.total.Total de pedidos deferidos em 2019?'. 
VALUE LABELS
/d52_total
0 "não houve deferimento"
1 "De 1 a 10 pedidos"
2 "De 11 a 20 pedidos"
3 "De 21 a 40 pedidos"
4 "De 41 a 60 pedidos" 
5 "Mais de 60 pedidos" 
. 

**q54: Cancelamentos** 

RECODE q54 (0=0)(1 thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru 80=5) (81 thru HIGHEST=6) INTO d54.

VARIABLE LABELS d54 'd54.Quantos cancelamentos foram realizados em 2019?'. 

VALUE LABELS
/d54
0 "Não houve cancelamento"
1 "De 1 a 10 cancelamentos"
2 "De 11 a 20 cancelamentos"
3 "De 21 a 40 cancelamentos"
4 "De 41 a 60 cancelamentos" 
5 "De 61 a 80 cancelamentos" 
6 "Mais de 80 cancelamentos"
. 

**q55: Tempo de pedido de inscrição até o seu deferimento, em meses**

RECODE q55 (0 thru 6=1) (7 thru 12=2) (13 thru 18=3) (19 thru 24=4) (25 thru 48=5) (49 thru HIGHEST=6) INTO d55.

VARIABLE LABELS  d55 'd55.Quanto tempo, em média, leva do momento que a entidade faz o pedido de inscrição até o seu deferimento/indeferimento? - em meses'. 

VALUE LABELS 
/d55
1 "De 0 a 6 meses"
2 "De 7 a 12 meses"
3 "De 13 a 18 meses" 
4 "De 19 a 24 meses" 
5 "De 25 a 48 meses" 
6 "Mais de 4 anos" 
. 

**q56: Quantas audiências públicas para apresentação das entidades inscritas foram realizadas no último ano?, em auduencias**

RECODE q56 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru HIGHEST=5) INTO d56. 

VARIABLE LABELS d56 'd56.Quantas audiências públicas para apresentação das entidades inscritas foram realizadas no último ano?'.

VALUE LABELS 
/d56
1 "Nenhuma audiência" 
2 "De 1 a 2 audiências"
3 "De 3 a 5 audiências" 
4 "De 6 a 10 audiências" 
5 "Mais de 10 audiências" 
. 





