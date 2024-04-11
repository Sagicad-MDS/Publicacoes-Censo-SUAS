


DATASET ACTIVATE DataSet1.

**q3*********** Horas de funcionamento por semana da Unidade **********************************************************************************************


RECODE q3_2 (Lowest thru 29=0) (30 thru 39=1) (40 thru 49=2) (50 thru Highest=3) INTO d3_2.
EXECUTE.


VALUE LABELS   d3_2
0 "Menos de 30 horas/semana"  
1 "De 30 a 39 horas/semana" 
 2 "De 40 a 49 horas/semana" 
 3 "Mais de 49 horas/semana".

 VARIABLE LABELS
d3_2  'd3_2_horas por semana que o Centro de Convivência encontra-se em funcionamento'.
EXECUTE.



*Salas de exclusivas de Coordenação, equipe ou administrativas*


RECODE q11 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO d11_sala_excl_categoria.

VALUE LABELS d11_sala_excl_categoria 
 1"Até 1 sala"  
2"De 2 a 3 salas"  
3"De 4 a 5 salas"  
4"De 6 a 7 salas" 
5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d11_sala_excl_categoria 'd11_sala_excl_categoria_Total de salas salas exclusivas de Coordenação, equipe técnica ou administração'.
EXECUTE.




*********QUESTÃO 21 - Capacidade de atendimento

RECODE q21 (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 50=5) (51 thru 60=6)  (61 thru 70=7) (71 thru 80=8) (81 thru 90=9) (91 thru 100=10) (101 thru 150=11) (151 thru 200=12)
(201 thru Highest=13) INTO d21_cap_atend_cat.
EXECUTE.

VALUE LABELS d21_cap_atend_cat
 0"Nenhuma pessoa" 
1"De 1 a 10 pessoas" 
 2"De 11 a 20 pessoas"  
3"De 21 a 30 pessoas"
4"De 31 a 40 pessoas" 
5"De 41 a 50 pessoas"
 6"De 51 a 60 pessoas" 
7"De 61 a 70 pessoas"
8"De 71 a 80 pessoas"
 9"De 81 a 90 pessoas" 
10"De 91 a 100 pessoas" 
11"De 101 a 150 pessoas"
12"De 151 a 200 pessoas" 
13"De 201 ou mais pessoas" .
EXECUTE.

VARIABLE LABELS
d21_cap_atend_cat  'd21_Capacidade de atendimento por categoria'.
EXECUTE.

FORMATS 
d21_cap_atend_cat (F8.0).
Execute.









