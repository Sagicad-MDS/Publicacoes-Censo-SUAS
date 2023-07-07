* Encoding: UTF-8.



*** Horas de funcionamento por semana da Unidade ***

IF (q3.1 * q3.2 < 30) d3_horas_por_semana_categoria = 0 .
IF (q3.1 * q3.2  >= 30 & q3.1 * q3.2  < 40) d3_horas_por_semana_categoria = 1 .
IF (q3.1 * q3.2  >= 40 & q3.1 * q3.2  < 50) d3_horas_por_semana_categoria = 2 .
IF (q3.1 * q3.2 > 49) d3_horas_por_semana_categoria = 3 .
EXECUTE.

VALUE LABELS
d3_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".
  
VARIABLE LABELS
d3_horas_por_semana_categoria	'd3_horas_por_semana_categoria_Total de horas por semana que o CRAS encontra-se em funcionamento'.
EXECUTE.

FORMATS 
d3_horas_por_semana_categoria  (F8.0).
Execute.



*** Quantidade de Salas ***

*Salas de atendimento*

COMPUTE d13_total_salas_atend= q13.1 + q13.2 + q13.3 + q13.4.
EXECUTE.

VARIABLE LABELS
d13_total_salas_atend	'd13_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

FORMATS 
d13_total_salas_atend (F8.0).
Execute.


RECODE d13_total_salas_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d13_sl_atend_categoria.

VARIABLE LABELS
d13_sl_atend_categoria	'd13_categórica_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

FORMATS 
d13_sl_atend_categoria (F8.0).
Execute.

VALUE LABELS
d13_sl_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas" 
4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.



*Salas de atendimento e atividades adminsitrativas*

COMPUTE d13_total_salas_adm_e_atend= q13.1 + q13.2 + q13.3 + q13.4+ q13.5.
EXECUTE.

VARIABLE LABELS
d13_total_salas_adm_e_atend	'd13_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

FORMATS 
d13_total_salas_adm_e_atend (F8.0).
Execute.

RECODE d13_total_salas_adm_e_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d13_total_salas_adm_e_atend_categoria.

VALUE LABELS
d13_total_salas_adm_e_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d13_total_salas_adm_e_atend_categoria 'd13_categórica_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

FORMATS 
d13_total_salas_adm_e_atend (F8.0).
Execute.




****Quantidade de Dormitórios

COMPUTE d13_total_dormitórios= q13.6.
EXECUTE.

VARIABLE LABELS
d13_total_dormitórios 'd13_Total de dormitórios'.
EXECUTE.

FORMATS 
d13_total_dormitórios (F8.0).
Execute.


RECODE d13_total_dormitórios (0 =0) (1 =1) (2=2) (3  thru Highest =3) 
INTO d13_total_dormitórios_categoria.

VALUE LABELS
d13_total_dormitórios_categoria 0"Zero dormitórios"  1"1 dormitório"  2"2 dormitórios"  3"A partir de 3 dormitórios".
EXECUTE.

VARIABLE LABELS  d13_total_dormitórios_categoria 'd13_categórica_total de dormitórios'.
EXECUTE.

FORMATS 
d13_total_dormitórios_categoria (F8.0).
Execute.


****Quantidade de banheiros

COMPUTE d13_total_banheiros= q13.7 + q13.8.
EXECUTE.

VARIABLE LABELS
d13_total_banheiros 'd13_Total de banheiros'.
EXECUTE.

FORMATS 
d13_total_banheiros (F8.0).
Execute.


RECODE d13_total_banheiros (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d13_total_banheiros_categoria.

VALUE LABELS
d13_total_banheiros_categoria 1"Até 1 banheiro"  2"De 2 a 3 banheiros"  3"De 4 a 5 banheiros"  4"De 6 a 7 banheiros" 5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d13_total_banheiros_categoria 'd13_categórica_total de banheiros'.
EXECUTE.

FORMATS 
d13_total_banheiros_categoria (F8.0).
Execute.



*****transformação da variável q13.7 e q13.8 em q13.7.1 e q 13.8.2 (variável de banheiros em faixas).

RECODE q13.7 (0=1) (1 thru 2=2) (3 thru 4=3) (5 thru 6=4) (7 thru 8=5) (9 thru Highest=6) INTO d13.7_faixas.
VARIABLE LABELS  d13.7_faixas'd13.7_Banheiro_de_trabalhadores_faixa'.
EXECUTE.
VALUE LABELS d13.7_faixas '1' 'nenhum banheiro' '2' '1 a 2 banheiros' '3' '3 a 4 banheiros' '4' '5 a 6 banheiros' '5' '7 a 8 banheiros'  '6' '9 ou mais banheiros'.
execute.

FORMATS 
d13.7_faixas (F8.0).
Execute.


RECODE q13.8 (0=1) (1 thru 3=2) (4 thru 6=3) (7 thru 9=4) (10 thru 12=5) (13 thru 15=6) (16 thru Highest=7) INTO d13.8_faixas.
VARIABLE LABELS  d13.8_faixas'd13.8_Banheiro_de_usuário_faixa'.
EXECUTE.
VALUE LABELS d13.8_faixas '1' 'nenhum banheiro' '2' '1 a 3 banheiros' '3' '4 a 6 banheiros' '4' '7 a 9 banheiros' '5' '10 a 12 banheiros'  '6' '13 a 15 banheiros' '7' '16 ou mais banheiros'.
execute.

FORMATS 
d13.8_faixas (F8.0).
Execute.




****quartis banheiros

RECODE q13.7 (Lowest thru 1=1) (1.000001 thru 2=2) (2.000000001 thru 3=3) (3.0000001 thru Highest=4) INTO d13.7_quartil.

VARIABLE LABELS  d13.7_quartil'd13.7_quartil banheiros trabalhadores'.
EXECUTE.

VALUE LABELS d13.7_quartil'1' 'de 0 a 1 banheiro' '2' '2 a 3 banheiros' '3' '4 a 5 banheiros' '4' '5 ou mais banheiros'.
execute.




RECODE q13.8 (Lowest thru 2=1) (2.000001 thru 4=2) (4.000000001 thru 6=3) (6.0000001 thru 
    Highest=4) INTO d13.8_quartil.

VARIABLE LABELS  d13.8_quartil 'd13.8_quartil banheiros usuários'.
EXECUTE.

VALUE LABELS d13.8_quartil '1' 'de 0 a 2 banheiros' '2' '3 a 4 banheiros' '3' '5 a 6 banheiros' '4' '7 ou mais banheiros'.
execute.




***Equipamentos disponíveis no Centro Dia

IF  (q16.1 = 1  | q16.2 = 1) d16_telefone=1.
EXECUTE.

VALUE LABELS
d16_telefone  0 "Não"  1 "Sim".
  
VARIABLE LABELS
d16_telefone 'd16_telefone_Telefone (exclusivo ou compartilhado)'.
EXECUTE.


IF  (q16.10 = 1  | q16.11 = 1 | q16.12 = 1) d16_veiculo=1.
EXECUTE.

VALUE LABELS
d16_veiculo  0 "Não"  1 "Sim".

  
VARIABLE LABELS
d16_veiculo	'd16_veiculo_Veículo (exclusivo ou compartilhado)'.
EXECUTE.

RECODE d16_telefone d16_veiculo (SYSMIS=0).
EXECUTE.


*Remover casos - pulo q3 - CHECAR SE VALE PARA 2016 TAMBÉM

DO IF (q3 =1).
RECODE d22_telefone d22_veiculo (0=SYSMIS).
END IF.
EXECUTE.





*********Q 19 - Capacidade de atendimento

RECODE q19 (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 50=5) (51 thru 60=6)  (61 thru 70=7) (71 thru 80=8) (81 thru 90=9) (91 thru 100=10) (101 thru 150=11) (151 thru 200=12)
(201 thru Highest=13) INTO d19_cap_atend_faixas.
EXECUTE.

VALUE LABELS
d19_cap_atend_faixas 0"Nenhuma pessoa" 1"De 1 a 10 pessoas"  2"De 11 a 20 pessoas"  3"De 21 a 30 pessoas" 4"De 31 a 40 pessoas" 5"De 41 a 50 pessoas" 6"De 51 a 60 pessoas" 7"De 61 a 70 pessoas" 8"De 71 a 80 pessoas"
9"De 81 a 90 pessoas" 10"De 91 a 100 pessoas" 11"De 101 a 150 pessoas" 12"De 151 a 200 pessoas" 13"De 201 ou mais pessoas" .
EXECUTE.

VARIABLE LABELS
d19_cap_atend_faixas 'd19_Capacidade de atendimento por faixas'.
EXECUTE.

FORMATS 
d19_cap_atend_faixas (F8.0).
Execute.

COMMENT BOOKMARK;LINE_NUM=227;ID=1.
