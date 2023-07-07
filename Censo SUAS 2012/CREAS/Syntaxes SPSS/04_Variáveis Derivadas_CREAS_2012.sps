*** Quantidade de Salas ***

COMPUTE D9a_total_salas_atend= q9a + q9b + q9c + q9d.
EXECUTE.
VARIABLE LABELS
D9a_total_salas_atend	'D9a_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE D9a_total_salas_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D9a_sl_atend_categoria.
ADD VALUE LABEL
D9a_sl_atend_categoria  1"De 0 a 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  D9a_sl_atend_categoria 'D9a_sl_atend_categoria_Total de salas utilizadas para '+
    'atendimento individual ou coletivo'.
EXECUTE.

COMPUTE D9b_total_salas_adm_e_atend= q9a + q9b + q9c + q9d+ q9e.
EXECUTE.

VARIABLE LABELS
D9b_total_salas_adm_e_atend	'D9b_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE D9b_total_salas_adm_e_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
  D9b_total_salas_adm_e_atend_categoria.
ADD VALUE LABEL
D9b_total_salas_adm_e_atend_categoria 1"De 0 a 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  D9b_total_salas_adm_e_atend_categoria 'D9b_total_salas_adm_e_atend_categoria_Total de salas utilizadas para '+
    'atendimento e atividades administrativas'.
EXECUTE.


RECODE q9f (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D9f.
ADD VALUE LABEL
D9f  1"De 0 a 1"  2"De 2 a 3"  3"De 4 a 5"  4"De 6 a 7" 5"8 ou mais".
EXECUTE.

VARIABLE LABELS  D9f 'D9f_Quantidade total de banheiros'.
EXECUTE.

*** Horas de funcionamento por semana da Unidade ***

IF (q4_1 * q4_2 < 30) D4_horas_por_semana_categoria = 0 .
IF (q4_1 * q4_2  >= 30 & q4_1 * q4_2   < 40) D4_horas_por_semana_categoria = 1 .
IF (q4_1 * q4_2  >= 40 & q4_1 * q4_2   < 50) D4_horas_por_semana_categoria = 2 .
IF (q4_1 * q4_2 > 49) D4_horas_por_semana_categoria = 3 .
EXECUTE .

ADD VALUE LABEL
D4_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".

  
VARIABLE LABELS
D4_horas_por_semana_categoria	D4_horas_por_semana_categoria_Total de horas por semana que o CREAS encontra-se em funcionamento.
EXECUTE.

*** Quantidade de Computadores***

RECODE
  q13
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D13 .
EXECUTE .

ADD VALUE LABEL
D13 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D13	D13_Quantidade de computadores no CREAS.
EXECUTE.

RECODE
  q14
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D14 .
EXECUTE .

ADD VALUE LABEL
D14 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D14	D14_Quantidade de computadores conectados à internet no CREAS.
EXECUTE.

**** Volume adolescentes MSE***

COMPUTE D32a=q32_1a_1 + q32_1a_2.
EXECUTE.

VARIABLE LABELS
D32a	D32a_Total de adolescentes em cumprimento de Medida Socioeducativa no ano de 2011.
EXECUTE.

COMPUTE D32b=q32_1b_1 + q32_1b_2.
EXECUTE.

VARIABLE LABELS
D32b	D32b_Quantidade total de adolescentes em cumprimento de LA no ano de 2011.
EXECUTE.

COMPUTE D32c=q32_1c_1 + q32_1c_2.
EXECUTE.

VARIABLE LABELS
D32c	D32c_Quantidade total de adolescentes em cumprimento de PSC no ano de 2011.
EXECUTE.
