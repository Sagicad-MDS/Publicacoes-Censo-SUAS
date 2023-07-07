
***** VARIÁVEIS DERIVADAS - CREAS Dados gerais ******


*** Horário de funcionamento *****

IF (q3.1 * q3.2 < 30) D3_horas_por_semana_categoria = 0 .
IF (q3.1 * q3.2  >= 30 & q3.1 * q3.2   < 40) D3_horas_por_semana_categoria = 1 .
IF (q3.1 * q3.2  >= 40 & q3.1 * q3.2   < 50) D3_horas_por_semana_categoria = 2 .
IF (q3.1 * q3.2 > 49) D3_horas_por_semana_categoria = 3 .
EXECUTE .

VALUE LABELS
D3_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".
EXECUTE .
  
VARIABLE LABELS
D3_horas_por_semana_categoria	'D3_horas_por_semana_categoria_Total de horas por semana que o CREAS encontra-se em funcionamento'.
EXECUTE.

*** Quantidade de salas ****

COMPUTE D8_1_total_salas_atend= q8.1 + q8.2 + q8.3 + q8.4.
EXECUTE.

VARIABLE LABELS
D8_1_total_salas_atend	'D8_1_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE D8_1_total_salas_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D8_1_sl_atend_categoria.

VALUE LABELS
D8_1_sl_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  D8_1_sl_atend_categoria 'D8a_sl_atend_categoria_Total de salas utilizadas para '+
    'atendimento individual ou coletivo'.
EXECUTE.

COMPUTE D8_2_total_salas_adm_e_atend= q8.1 + q8.2 + q8.3 + q8.4 + q8.5.
EXECUTE.

VARIABLE LABELS
D8_2_total_salas_adm_e_atend	'D8_2_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE D8_2_total_salas_adm_e_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
  D8_2_total_salas_adm_e_atend_categoria.

VALUE LABELS
D8_2_total_salas_adm_e_atend_categoria 1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  D8_2_total_salas_adm_e_atend_categoria 'D8b_total_salas_adm_e_atend_categoria_Total de salas utilizadas para '+
    'atendimento e atividades administrativas'.
EXECUTE.


RECODE q8.6 (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D8_6.

VALUE LABELS
D8_6  1"Até 1 banheiro"  2"De 2 a 3 banheiros"  3"De 4 a 5 banheiros"  4"De 6 a 7 banheiros" 5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  D8_6  'D8_6_Quantidade total de banheiros'.
EXECUTE.

*** Quantidade de Computadores***

RECODE
  q11
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D11 .
EXECUTE .

VALUE LABELS
D11 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".
EXECUTE.

VARIABLE LABELS
D11	D11_Quantidade de computadores no CREAS.
EXECUTE.

RECODE
  q12
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D12 .
EXECUTE .

VALUE LABELS
D12 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".
EXECUTE.

VARIABLE LABELS
D12	D12_Quantidade de computadores conectados à internet no CREAS.
EXECUTE.
