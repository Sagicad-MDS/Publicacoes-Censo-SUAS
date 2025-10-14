* Encoding: UTF-8.
*****Variáveis derivadas - CENSO SUAS 2021 Conselhos******

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

VALUE LABELS d1
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019" .


**q3: Ano da lei que alterou a lei original de criação do Conselho**

RECODE q3 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru Highest=6)  INTO  d3.

VARIABLE LABELS d3 'd3.Caso sim, informe o ano da Lei que alterou a Lei original de criação do Conselho'.

VALUE LABELS d3
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019" .

**q5: Ano de atualização do regimento**

RECODE q5 (Lowest thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru Highest=6) INTO  d5.

VARIABLE LABELS d5 'q5.Caso sim, informe o ano da última atualização do Regimento'.

VALUE LABELS d5
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2019" .

****ESPAÇO FÍSICO DO CONSELHO QUANTIDADE DE SALAS/COMPUTADORES****

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

VARIABLE LABELS d9_exclusivas_categoria 'd9.exclusivas.categoria.Total de salas de uso exclusivo do Conselho - Categoria'.

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

VARIABLE LABELS  d9_compartilhadas_categoria 'd9.Total de salas compartilhadas do Conselho - Categoria'. 

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


**Quantitativo de computadores de uso exclusivo do Conselho (com e sem internet)**

COMPUTE d11_exclusivos= SUM(q11_1,q11_2). 

VARIABLE LABELS  d11_exclusivos 'd11.Total de computadores exclusivos do Conselho'. 

RECODE d11_exclusivos (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_exclusivos_categoria. 

VALUE LABELS d11_exclusivos_categoria
0 "Nenhum computador exclusivo"
2 "De 1 a 3 computadores exclusivos" 
3 "De 4 a 6 computadores exclusivos" 
4 "De 7 a 10 computadores exclusivos"
5 "Mais de 10 computadores exclusivos". 

VARIABLE LABELS d11_exclusivos_categoria 'd11.Total de computadores exclusivos do Conselho - Categoria'. 

**Quantitativo de computadores de uso compartilhado do Conselho (com e sem internet)**

COMPUTE d11_compartilhados= SUM(q11_3,q11_4). 

VARIABLE LABELS d11_compartilhados 'd11.Total de computadores compartilhados do Conselho'.

RECODE d11_compartilhados (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_compartilhados_categoria. 

VALUE LABELS d11_compartilhados_categoria
0 "Nenhum computador compartilhado"
2 "De 1 a 3 computadores compartilhados" 
3 "De 4 a 6 computadores compartilhados" 
4 "De 7 a 10 computadores compartilhados"
5 "Mais de 10 computadores compartilhados". 

VARIABLE LABELS d11_compartilhados_categoria 'd11.Total de computadores compartilhados do Conselho - Categoria'. 



**Quantitativo de computadores conectados a internet (compartilhados e exclusivos)** 

COMPUTE d11_internet= SUM(q11_2,q11_4).

VARIABLE LABELS  d11_internet 'd11.Computadores de uso exclusivo e compartilhado que estão contectados à internet'. 

RECODE d11_internet (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_internet_categoria.

VALUE LABELS  d11_internet_categoria
0 "Nenhum computador com conexão à internet"
2 "De 1 a 3 computadores com conexão à internet" 
3 "De 4 a 6 computadores com conexão à internet" 
4 "De 7 a 10 computadores com conexão à internet"
5 "Mais de 10 computadores com conexão à internet". 

VARIABLE LABELS d11_internet_categoria 'd11.Total de computadores contectados à internet - Categoria'. 

**Total computadores**

COMPUTE d11_total= SUM(q11_1,q11_2,q11_3,q11_4). 

VARIABLE LABELS d11_total 'd11.Total de computadores de uso (compartilhado e exclusivo) dos Conselhos'.

RECODE d11_total (0=0) (1 thru 3=2) (4 thru 6=3) (7 thru 10=4) (11 thru HIGHEST=5) INTO d11_total_categoria. 

VALUE LABELS d11_total_categoria
0 "Nenhum computador"
2 "De 1 a 3 computadores" 
3 "De 4 a 6 computadores" 
4 "De 7 a 10 computadores"
5 "Mais de 10 computadores". 

VARIABLE LABELS d11_total_categoria 'd11.Total de computadores'. 

*******q14******************************************************************* 

RECODE q14_1 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d14_1. 

VARIABLE LABELS d14_1   'd14_1. Funcionárias(os) exclusivas(os) da Secretaria Executiva do Conselho'. 

VALUE LABELS d14_1
1"1 a 2 funcionarios"
2"3 a 5 funcionarios"
3"6 a 10  funcionarios"
4"11 a 20  funcionarios"
5"Mais de 20  funcionarios".



RECODE q14_2 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d14_2. 

VARIABLE LABELS d14_2  'd14_2. Funcionárias(os) não exclusivas(os) da Secretaria Executiva do Conselho'. 

VALUE LABELS d14_2
1"1 a 2 funcionarios"
2"3 a 5 funcionarios"
3"6 a 10  funcionarios"
4"11 a 20  funcionarios"
5"Mais de 20  funcionarios".


************************q25**************************************************** 

RECODE q25 (0 thru 8=1) (9 thru 16=2) (17 thru 20=3) (21 thru 30=4) (31 thru 40=5) (41 thru HIGHEST=6) INTO d25.

VARIABLE LABELS d25  'd25.Horário de funcionamento do Conselho - Horas por dia'.

VALUE LABELS  d25
1 "De 0 a 8 horas"
2" De 9 a 16 horas"
3 "De 17 a 20 horas" 
4 "De 21 a 30 horas" 
5 "De 31 a 40 horas"
6 "Mais de 40 horas" .


***********q31*********************************************************************

RECODE q31_1_99  (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d31_1_99. 

VARIABLE LABELS d31_1_99   'd31_1_99.Quantos Conselheiros participaram de algum curso do CAPACITASUAS'. 

VALUE LABELS  d31_1_99
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .

****q47***************************************************************************************

RECODE q47  (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru HIGHEST=5) INTO d47. 

VARIABLE LABELS d47 'd47. Em 2019, quantas reuniões da CIB o conselho de assistência social acompanhou?'.

VALUE LABELS  d47
1 "Nenhuma reunião" 
2 "De 1 a 2 reuniões"
3 "De 3 a 5 reuniões" 
4 "De 6 a 10 reuniões" 
5 "Mais de 10 reuniões" . 


*****q51*********************************

RECODE q51_1 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d51_1. 

VARIABLE LABELS d51_1  'd51_1.conselheiros titulares são representantes do Coegemas ou congênere'. 

VALUE LABELS d51_1 
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .

RECODE q51_2 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d51_2. 

VARIABLE LABELS d51_2  'd51_2. suplentes representando o COEGEMAS '. 

VALUE LABELS d51_2
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .

**q56****************************************************

RECODE q56_1  (0=0) (1thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru HIGHEST=5) INTO d56_1. 

VARIABLE LABELS d56_1  'd56_1 .Visitas a unidades públicas da rede socioassistencial'.

VALUE LABELS  d56_1 
0 "Não houve visita"
1 "De 1 a 10 visitas"
2 "De 11 a 20 visitas" 
3 "De 21 a 40 visitas" 
4 "De 41 a 60 visitas"
5 "Mais de 60 visitas" .


RECODE q56_2  (0=0) (1thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru HIGHEST=5) INTO d56_2. 

VARIABLE LABELS d56_2  'd56_2. Visitas a entidades/organizações da sociedade civil'.

VALUE LABELS  d56_2 
0 "Não houve visita"
1 "De 1 a 10 visitas"
2 "De 11 a 20 visitas" 
3 "De 21 a 40 visitas" 
4 "De 41 a 60 visitas"
5 "Mais de 60 visitas" .


**q59****************************************************

RECODE q59_1  (0 thru 1994=1) (1995 thru 1997=2) (1998 thru 2004=3) (2005 thru 2008=4) (2009 thru 2014=5) (2015 thru 2018=6)  INTO  d59_1.

VARIABLE LABELS d59_1 'd59_1. De que ano é a Resolução?'.

VALUE LABELS d59_1
1 "Até 1994"
2 "De 1995 a 1997"
3 "De 1998 a 2004"
4 "De 2005 a 2008"
5 "De 2009 a 2014"
6 "De 2015 a 2018" .


**61****************************************************

RECODE q61 (0 =0) (1thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru HIGHEST=5) INTO d61. 

VARIABLE LABELS d61  'd61. Atualmente, quantas Entidades ou OSC possuem INSCRIÇÃO no Conselho?'. 

VALUE LABELS  d61
0 "Nenhuma instituição possui inscrição" 
1 "De 0 a 5 instituições" 
2 "De 6 a 10 instituições" 
3 "De 11 a 20 instituições" 
4 "De 21 a 40 instituições" 
5 "Mais de 41 instituições" .


**62***************************************************

RECODE q62 (0 =0) (1thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru HIGHEST=5) INTO d62. 

VARIABLE LABELS d62  'd62. Quantas entidades fizeram pedidos de inscrição junto a este Conselho em 2019 (De 1º de janeiro a 31 de agosto de 2019)?'. 

VALUE LABELS  d62
0 "Nenhuma  entidade" 
1 "De 1 a 5 entidades" 
2 "De 6 a 10 entidades" 
3 "De 11 a 20 entidades" 
4 "De 21 a 40 entidades" 
5 "Mais de 41entidades" .


**63***************************************************

RECODE q63_1 (0 =0) (1thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru HIGHEST=5) INTO d63_1. 

VARIABLE LABELS d63_1  'd63_1. entidades com pedidos iniciados em anos anteriores'. 

VALUE LABELS  d63_1
0 "Nenhuma  entidade" 
1 "De 1 a 5 entidades" 
2 "De 6 a 10 entidades" 
3 "De 11 a 20 entidades" 
4 "De 21 a 40 entidades" 
5 "Mais de 41entidades" .


RECODE q63_2  (0 =0) (1thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru HIGHEST=5) INTO d63_2. 

VARIABLE LABELS d63_2  'd63_2. entidades com pedidos iniciados este ano'. 

VALUE LABELS  d63_2
0 "Nenhuma  entidade" 
1 "De 1 a 5 entidades" 
2 "De 6 a 10 entidades" 
3 "De 11 a 20 entidades" 
4 "De 21 a 40 entidades" 
5 "Mais de 41entidades" .


**q65******************************************************** 

RECODE q65  (0=0)(1 thru 10=1) (11 thru 20=2) (21 thru 40=3) (41 thru 60=4) (61 thru 80=5) (81 thru HIGHEST=6) INTO d65.

VARIABLE LABELS d65  'd65 .v13009_q6565. Quantos cancelamentos foram realizados em 2019 (De 1º de janeiro a 31 de agosto de 2019)?'. 

VALUE LABELS  d65
0 "Não houve cancelamento"
1 "De 1 a 10 cancelamentos"
2 "De 11 a 20 cancelamentos"
3 "De 21 a 40 cancelamentos"
4 "De 41 a 60 cancelamentos" 
5 "De 61 a 80 cancelamentos" 
6 "Mais de 80 cancelamentos".


*****q66***********************************************************************

RECODE q66 (0 thru 6=1) (7 thru 12=2) (13 thru 18=3) (19 thru 24=4) (25 thru 48=5) (49 thru HIGHEST=6) INTO d66.

VARIABLE LABELS  d66  'd66. Quanto tempo, em média, leva do momento que a entidade ou OSC faz o pedido de inscrição até o seu deferimento/indeferimento?'. 

VALUE LABELS  d66
1 "De 0 a 6 meses"
2 "De 7 a 12 meses"
3 "De 13 a 18 meses" 
4 "De 19 a 24 meses" 
5 "De 25 a 48 meses" 
6 "Mais de 4 anos" . 


*****q67***********************************************************************

RECODE q67 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru HIGHEST=5) INTO d67. 

VARIABLE LABELS d67 'd67. Quantas audiências públicas para apresentação das entidades inscritas foram realizadas no último ano?'.

VALUE LABELS  d67
1 "Nenhuma audiência" 
2 "De 1 a 2 audiências"
3 "De 3 a 5 audiências" 
4 "De 6 a 10 audiências" 
5 "Mais de 10 audiências" . 


*****q82***********************************************************************

RECODE q82_1  (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d82_1. 

VARIABLE LABELS d82_1   'd82_1. Segundo as normatizações, esse conselho é composto por quantos conselheiros Titulares '. 

VALUE LABELS  d82_1
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .



RECODE q82_2  (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d82_2. 

VARIABLE LABELS d82_2  'd82_2. Segundo as normatizações, esse conselho é composto por quantos conselheiros Suplentes '. 

VALUE LABELS  d82_2
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .




*****q83***********************************************************************

RECODE q83_5  (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d83_5. 

VARIABLE LABELS d83_5   'd83_5. Quantos Conselheiros são representantes do governo '. 

VALUE LABELS  d83_5
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .



RECODE q83_6  (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d83_6. 

VARIABLE LABELS d83_6   'd83_6. Quantos Conselheiros são representantes da sociedade civil'. 

VALUE LABELS  d83_6
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .



*****q84***********************************************************************

RECODE q84_1 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d84_1. 

VARIABLE LABELS d84_1  'd84_1. Quantos Conselheiros da sociedade civil  entre os titulares são  Trabalhadoras(es) '. 

VALUE LABELS  d84_1
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .


RECODE q84_2 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d84_2. 

VARIABLE LABELS d84_2  'd84_2. Quantos Conselheiros da sociedade civil  entre os titulares são  titulares Usuárias(os)'. 

VALUE LABELS  d84_2
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .


RECODE q84_3 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d84_3. 

VARIABLE LABELS d84_3  'd84_3. Quantos Conselheiros da sociedade civil  entre os titulares são  Entidades'. 

VALUE LABELS  d84_3
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .




RECODE q84_4 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d84_4. 

VARIABLE LABELS d84_4  'd84_4. Quantos Conselheiros da sociedade civil  entre os suplentes são  Trabalhadoras(es) '. 

VALUE LABELS  d84_4
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .


RECODE q84_5 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d84_5. 

VARIABLE LABELS d84_5  'd84_5. Quantos Conselheiros da sociedade civil  entre os suplentes são  titulares Usuárias(os)'. 

VALUE LABELS  d84_5
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .


RECODE q84_6 (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru HIGHEST=5) INTO d84_6. 

VARIABLE LABELS d84_6  'd84_6. Quantos Conselheiros da sociedade civil  entre os suplentes são  Entidades'. 

VALUE LABELS  d84_6
1"1 a 2 conselheiros"
2"3 a 5 conselheiros"
3"6 a 10 conselheiros"
4"11 a 20 conselheiros"
5"Mais de 20 conselheiros" .
































