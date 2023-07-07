*** Horas de funcionamento por semana da Unidade ***

IF (q3_1 * q3_2 < 30) d3_horas_por_semana_categoria = 0 .
IF (q3_1 * q3_2  >= 30 & q3_1 * q3_2   < 40) d3_horas_por_semana_categoria = 1 .
IF (q3_1 * q3_2  >= 40 & q3_1 * q3_2   < 50) d3_horas_por_semana_categoria = 2 .
IF (q3_1 * q3_2 > 49) d3_horas_por_semana_categoria = 3 .
EXECUTE.

VALUE LABELS
d3_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".

  
VARIABLE LABELS
d3_horas_por_semana_categoria	'd3_horas_por_semana_categoria_Total de horas por semana que o CRAS encontra-se em funcionamento'.
EXECUTE.


*** Quantidade de Salas ***

*Salas de atendimento*

COMPUTE d8_total_salas_atend= q8_1 + q8_2 + q8_3 + q8_4.
EXECUTE.

VARIABLE LABELS
d8_total_salas_atend	'd8_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d8_total_salas_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d8_sl_atend_categoria.

VARIABLE LABELS
d8_sl_atend_categoria	'd8_categórica_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS
d8_sl_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas" 
4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades adminsitrativas*

COMPUTE d8_total_salas_adm_e_atend= q8_1 + q8_2 + q8_3 + q8_4+ q8_5.
EXECUTE.

VARIABLE LABELS
d8_total_salas_adm_e_atend	'd8_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d8_total_salas_adm_e_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d8_total_salas_adm_e_atend_categoria.

VALUE LABELS
d8_total_salas_adm_e_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d8_total_salas_adm_e_atend_categoria 'd8_categórica_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

****Quantidade de banheiros

RECODE q8_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d8_6_banheiros.

VALUE LABELS
d8_6_banheiros  1"Até 1 banheiro"  2"De 2 a 3 banheiros"  3"De 4 a 5 banheiros"  4"De 6 a 7 banheiros" 5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d8_6_banheiros 'd8_6_banheiros_Quantidade total de banheiros'.
EXECUTE.

***Equipamentos disponíveis no CRAS

IF  (q10_1 = 1  | q10_2 = 1) d10_telefone=1.
EXECUTE.

VALUE LABELS
d10_telefone  0 "Não"  1 "Sim".
  
VARIABLE LABELS
d10_telefone 'd10_telefone_Telefone (exclusivo ou compartilhado)'.
EXECUTE.


IF  (q10_12 = 1  | q10_13 = 1) d10_veiculo=1.
EXECUTE.

VALUE LABELS
d10_veiculo  0 "Não"  1 "Sim".

  
VARIABLE LABELS
d10_veiculo	'd10_veiculo_Veículo (exclusivo ou compartilhado)'.
EXECUTE.

RECODE d10_telefone d10_veiculo (SYSMIS=0).
EXECUTE.


*** Quantidade de Computadores***

RECODE  q11_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)
(11 thru Highest=11) INTO  d11_1.
EXECUTE .

VALUE LABELS
d11_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
d11_1	'd11_1_Quantidade de computadores, em perfeito funcionamento, existentes no CRAS'.
EXECUTE.

RECODE  q11_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)
(11 thru Highest=11) INTO  d11_2.
EXECUTE .

VALUE LABELS
d11_2 0'0' 1'1' 2'2' 3'3' 4'4' 5'5' 10'De 6 a 10' 11'Mais de 10'.

VARIABLE LABELS
d11_2	'd11_2_Quantidade de computadores conectados à internet no CRAS'.
EXECUTE.


**Quantidade de unidades referenciadas

RECODE
  q19
 (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  d19 .
EXECUTE .

VALUE LABELS
d19 1"1 unidade referenciada" 2"2 unidades referenciadas" 3"3 unidades referenciadas" 4"4 unidades referenciadas" 5"5 unidades referenciadas" 10"De 6 a 10 unidades refenciadas" 11"Mais de 10 unidades referenciadas".

VARIABLE LABELS
d19	'd19_Quantidade de unidades do SCFV referenciadas aos CRAS'.
EXECUTE.

****** CORREÇÃO TIPO DE VARIÁVEL q33 e q34

ALTER TYPE q33 q34 (F6.0).

**Nos territórios atendidos pela equipe volante, quantas famílias se encontram em situação de vulnerabilidade

RECODE q33 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d33.

VALUE LABELS
d33  0"Nenhuma família" 1"Entre 1 e 20 famílias"  2"Entre 21 e 40 famílias"  3"Entre 41 e 70 famílias" 4"Entre 71 e 100 famílias" 5"Mais de 100 famílias".
EXECUTE.

VARIABLE LABELS  d33 'd33_Nos territórios atendidos pela equipe volante, quantas famílias se encontram em situação de vulnerabilidade?'.
EXECUTE.

**Nos territórios atendidos pela equipe volante, quantas famílias estão em acompanhamento sistemático pelo PAIF (Ago/2015)

RECODE q34 (0=0) (1 thru 20=1) (21 thru 40=2) (41 thru 70=3)
(71 thru 100=4) (100 thru Highest=5) INTO d34.

VALUE LABELS
d34  0"Nenhuma família" 1"Entre 1 e 20 famílias"  2"Entre 21 e 40 famílias"  3"Entre 41 e 70 famílias" 4"Entre 71 e 100 famílias" 5"Mais de 100 famílias".
EXECUTE.

VARIABLE LABELS  d34 'd34_Nos territórios atendidos pela equipe volante, quantas famílias estão em acompanhamento sistemático pelo PAIF (Ago/2015)?'.
EXECUTE.

