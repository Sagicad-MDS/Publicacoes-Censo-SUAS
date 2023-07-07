*** Horas de funcionamento por semana da Unidade *** Q6

IF (q6_1 * q6_2 < 10) d6_horas_por_semana_categoria = 1 .
IF (q6_1 * q6_2  >= 10 & q6_1 * q6_2  < 20) d6_horas_por_semana_categoria = 2 .
IF (q6_1 * q6_2  >= 20 & q6_1 * q6_2  < 30) d6_horas_por_semana_categoria = 3 .
IF (q6_1 * q6_2  >= 30 & q6_1 * q6_2  < 40) d6_horas_por_semana_categoria = 4 .
IF (q6_1 * q6_2  >= 40 & q6_1 * q6_2  < 50) d6_horas_por_semana_categoria = 5 .
IF (q6_1 * q6_2 >= 50) d6_horas_por_semana_categoria = 6 .
EXECUTE .

VALUE LABELS
d6_horas_por_semana_categoria  1 "Menos de 10 horas/semana"  2 "De 10 a 19 horas/semana"  3 "De 20 a 29 horas/semana"  4 "De 30 a 39 horas/semana"  5 "De 40 a 49 horas/semana" 6 "Mais de 49 horas/semana".

VARIABLE LABELS
d6_horas_por_semana_categoria	d6_horas_por_semana_categoria_Total de horas por semana que a unidade encontra-se em funcionamento.
EXECUTE.

*** Quantidade de Salas Q15***

*Salas de atendimento*

COMPUTE d15_1_total_salas_atend= q15_1 + q15_2 + q15_3 + q15_4.
EXECUTE.

VARIABLE LABELS
d15_1_total_salas_atend	'd15_1_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d15_1_total_salas_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    d15_1_sl_atend_categoria.

VARIABLE LABELS
d15_1_sl_atend_categoria	'd15_1_categórica_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS
d15_1_sl_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades adminsitrativas*

COMPUTE d15_2_total_salas_adm_e_atend= q15_1 + q15_2 + q15_3 + q15_4+ q15_5.
EXECUTE.

VARIABLE LABELS
d15_2_total_salas_adm_e_atend	'd15_2_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d15_2_total_salas_adm_e_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    d15_2_total_salas_adm_e_atend_categoria.

ADD VALUE LABEL
 d15_2_total_salas_adm_e_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d15_2_total_salas_adm_e_atend_categoria 'd15_2_categórica_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

****Quantidade de banheiros

RECODE q15_6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    d15_6.

ADD VALUE LABEL
d15_6  1"Até 1 banheiro"  2"De 2 a 3 banheiros"  3"De 4 a 5 banheiros"  4"De 6 a 7 banheiros" 5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d15_6 'd15_6_Quantidade total de banheiros'.
EXECUTE.

*** Equipamentos disponíveis ***

IF  (q17_1 = 1  | q17_2 = 1) D17_telefone=1.
EXECUTE.

ADD VALUE LABEL
D17_telefone  0 "Não"  1 "Sim".

  
VARIABLE LABELS
D17_telefone D17_telefone_Telefone (exclusivo ou compartilhado).
EXECUTE.


IF  (q17_10 = 1  | q17_11 = 1) D17_veiculo=1.
EXECUTE.

ADD VALUE LABEL
D17_veiculo  0 "Não"  1 "Sim".

  
VARIABLE LABELS
D17_veiculo	D17_veiculo_Veículo (exclusivo ou compartilhado).
EXECUTE.

*** Quantidade de Computadores***

RECODE
  q18_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D18_1.
EXECUTE .

ADD VALUE LABEL
D18_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D18_1	D18_1_Quantidade de computadores, em perfeito funcionamento, existentes na unidade.
EXECUTE.

RECODE
  q18_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D18_2.
EXECUTE .

ADD VALUE LABEL
D18_2 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D18_2	D18_2_Quantidade de computadores, em perfeito funcionamento, conectados à internet na unidade.
EXECUTE.

RECODE
  Q19_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D19_1.
EXECUTE .

ADD VALUE LABEL
D19_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D19_1	D19_1_Quantidade de computadores na unidade disponíveis para utilização pelos usuários.
EXECUTE.

RECODE
  Q19_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D19_2 .
EXECUTE .

ADD VALUE LABEL
D19_2 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D19_2	D19_2_Quantidade de computadores na unidade, conectados à internet, disponíveis para utilização pelos usuários.
EXECUTE.
