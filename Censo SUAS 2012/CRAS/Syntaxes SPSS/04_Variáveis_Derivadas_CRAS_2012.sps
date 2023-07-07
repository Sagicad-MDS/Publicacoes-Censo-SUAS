*** Horas de funcionamento por semana da Unidade ***

IF (q4_1 * q4_2 < 30) D4_horas_por_semana_categoria = 0 .
IF (q4_1 * q4_2  >= 30 & q4_1 * q4_2   < 40) D4_horas_por_semana_categoria = 1 .
IF (q4_1 * q4_2  >= 40 & q4_1 * q4_2   < 50) D4_horas_por_semana_categoria = 2 .
IF (q4_1 * q4_2 > 49) D4_horas_por_semana_categoria = 3 .
EXECUTE .

ADD VALUE LABEL
D4_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".

  
VARIABLE LABELS
D4_horas_por_semana_categoria	D4_horas_por_semana_categoria_Total de horas por semana que o CRAS encontra-se em funcionamento.
EXECUTE.

*** Quantidade de Computadores***

RECODE
  q13a
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D13a .
EXECUTE .

ADD VALUE LABEL
D13a 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D13a	D13a_Quantidade de computadores no CRAS.
EXECUTE.

RECODE
  q13b
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D13b .
EXECUTE .

ADD VALUE LABEL
D13b 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D13b	D13b_Quantidade de computadores conectados à internet no CRAS.
EXECUTE.


*** Quantidade de Salas ***

*Salas de atendimento*

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

*Salas de atendimento e atividades adminsitrativas*

COMPUTE D9b_total_salas_adm_e_atend= q9a + q9b + q9c + q9d+ q9e.
EXECUTE.

VARIABLE LABELS
D9b_total_salas_adm_e_atend	'D9b_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE D9b_total_salas_adm_e_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D9b_total_salas_adm_e_atend_categoria.
ADD VALUE LABEL
 D9b_total_salas_adm_e_atend_categoria  1"De 0 a 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  D9b_total_salas_adm_e_atend_categoria 'D9b_total_salas_adm_e_atend_categoria_Total de salas utilizadas para '+
    'atendimento individual ou coletivo'.
EXECUTE.

RECODE q9f (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4) (8 thru Highest=5) INTO 
    D9f.
ADD VALUE LABEL
D9f  1"De 0 a 1"  2"De 2 a 3"  3"De 4 a 5"  4"De 6 a 7" 5"8 ou mais".
EXECUTE.

VARIABLE LABELS  D9f 'D9f_Quantidade total de banheiros'.
EXECUTE.


***Total de crianças, jovens, idosos e pessoas com deficiência que participam de serviços de convivência e fortalecimento de vínculos***


COMPUTE D19= q18b + q18c + q18d + q18e + q18g.
VARIABLE LABELS  D19 'D19_Total de crianças, jovens, idosos e pessoas com deficiência em Serviços de Convivência e Fortalecimento de Vínculos no CRAS'.
EXECUTE.


