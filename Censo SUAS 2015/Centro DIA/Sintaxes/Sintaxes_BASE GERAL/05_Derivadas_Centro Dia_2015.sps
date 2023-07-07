********************************************* BACKUP E CORREÇÕES

**** Correção do IBGE 2 dígitos (perfil estado)

COMPUTE IBGE_original = IBGE.
VARIABLE LABELS IBGE_original'Original - Código IBGE do Município'.
EXECUTE.

IF  (IBGE<100) IBGE=TRUNC(NU_IDENTIFICADOR/10000000).
VARIABLE LABELS  IBGE 'Código IBGE do Município'.
EXECUTE.

*** Horas de funcionamento por semana da Unidade ***

IF (q4_1 * q4_2 < 30) d4_horas_por_semana_categoria = 0 .
IF (q4_1 * q4_2  >= 30 & q4_1 * q4_2   < 40) d4_horas_por_semana_categoria = 1 .
IF (q4_1 * q4_2  >= 40 & q4_1 * q4_2   < 50) d4_horas_por_semana_categoria = 2 .
IF (q4_1 * q4_2 > 49) d4_horas_por_semana_categoria = 3 .
EXECUTE.

VALUE LABELS
d4_horas_por_semana_categoria  0 "Menos de 30 horas/semana"  1 "De 30 a 39 horas/semana"  2 "De 40 a 49 horas/semana"  3 "Mais de 49 horas/semana".

  
VARIABLE LABELS
d4_horas_por_semana_categoria	'd4_horas_por_semana_categoria_Total de horas por semana que o CRAS encontra-se em funcionamento'.
EXECUTE.


*** Quantidade de Salas ***

*Salas de atendimento*

COMPUTE d19_total_salas_atend= q19_1 + q19_2 + q19_3 + q19_4.
EXECUTE.

VARIABLE LABELS
d19_total_salas_atend	'd19_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

RECODE d19_total_salas_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d19_sl_atend_categoria.

VARIABLE LABELS
d19_sl_atend_categoria	'd19_categórica_Total de salas utilizadas para atendimento individual ou coletivo'.
EXECUTE.

VALUE LABELS
d19_sl_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas" 
4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

*Salas de atendimento e atividades adminsitrativas*

COMPUTE d19_total_salas_adm_e_atend= q19_1 + q19_2 + q19_3 + q19_4+ q19_5.
EXECUTE.

VARIABLE LABELS
d19_total_salas_adm_e_atend	'd19_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

RECODE d19_total_salas_adm_e_atend (0 thru 1=1) (2 thru 3=2) (4 thru 5=3)
(6 thru 7=4) (8 thru Highest=5) INTO d19_total_salas_adm_e_atend_categoria.

VALUE LABELS
d19_total_salas_adm_e_atend_categoria  1"Até 1 sala"  2"De 2 a 3 salas"  3"De 4 a 5 salas"  4"De 6 a 7 salas" 5"8 ou mais salas".
EXECUTE.

VARIABLE LABELS  d19_total_salas_adm_e_atend_categoria 'd19_categórica_Total de salas utilizadas para atendimento e para atividades administrativas'.
EXECUTE.

****Quantidade de Dormitórios

COMPUTE d19_total_dormitórios= q19_6.
EXECUTE.

VARIABLE LABELS
d19_total_dormitórios 'd19_Total de dormitórios'.
EXECUTE.

RECODE d19_total_dormitórios (0 =0) (1 =1) (2=2) (3  thru Highest =3) 
INTO d19_total_dormitórios_categoria.

VALUE LABELS
d19_total_dormitórios_categoria 0"Zero dormitórios"  1"1 dormitório"  2"2 dormitórios"  3"A partir de 3 dormitórios".
EXECUTE.

VARIABLE LABELS  d19_total_dormitórios_categoria 'd19_categórica_total de dormitórios'.
EXECUTE.



****Quantidade de banheiros

COMPUTE d19_total_banheiros= q19_7 + q19_8.
EXECUTE.

VARIABLE LABELS
d19_total_banheiros 'd19_Total de banheiros'.
EXECUTE.

RECODE d19_total_banheiros (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) (6 thru 7=4)
(8 thru Highest=5) INTO d19_total_banheiros_categoria.

VALUE LABELS
d19_total_banheiros_categoria 1"Até 1 banheiro"  2"De 2 a 3 banheiros"  3"De 4 a 5 banheiros"  4"De 6 a 7 banheiros" 5"8 ou mais banheiros".
EXECUTE.

VARIABLE LABELS  d19_total_banheiros_categoria 'd19_categórica_total de banheiros'.
EXECUTE.


*****transformação da variável q19.7 e q19.8 em q19_7.1 e q 19_8.2 (variável de banheiros em faixas).

RECODE q19_7 (0=1) (1 thru 2=2) (3 thru 4=3) (5 thru 6=4) (7 thru 8=5) (9 thru Highest=6) INTO d19_7_faixas.
VARIABLE LABELS  d19_7_faixas'd19_7_Banheiro_de_trabalhadores_faixa'.
EXECUTE.
VALUE LABELS d19_7_faixas '1' 'nenhum banheiro' '2' '1 a 2 banheiros' '3' '3 a 4 banheiros' '4' '5 a 6 banheiros' '5' '7 a 8 banheiros'  '6' '9 ou mais banheiros'.
execute.



RECODE q19_8 (0=1) (1 thru 3=2) (4 thru 6=3) (7 thru 9=4) (10 thru 12=5) (13 thru 15=6) (16 thru Highest=7) INTO d19_8_faixas.
VARIABLE LABELS  d19_8_faixas'd19_8_Banheiro_de_usuário_faixa'.
EXECUTE.
VALUE LABELS d19_8_faixas '1' 'nenhum banheiro' '2' '1 a 3 banheiros' '3' '4 a 6 banheiros' '4' '7 a 9 banheiros' '5' '10 a 12 banheiros'  '6' '13 a 15 banheiros' '7' '16 ou mais banheiros'.
execute.



****quartis banheiros

RECODE q19_7 (Lowest thru 1=1) (1.000001 thru 2=2) (2.000000001 thru 3=3) (3.0000001 thru Highest=4) INTO d19_7_quartil.
VARIABLE LABELS  d19_7_quartil'd19_7_quartil banheiros trabalhadores'.
EXECUTE.
VALUE LABELS d19_7_quartil'1' 'de 0 a 1 banheiro' '2' '2 a 3 banheiros' '3' '4 a 5 banheiros' '4' '5 ou mais banheiros'.
execute.



RECODE q19_8 (Lowest thru 2=1) (2.000001 thru 4=2) (4.000000001 thru 6=3) (6.0000001 thru 
    Highest=4) INTO d19_8_quartil.
VARIABLE LABELS  d19_8_quartil 'd19_8_quartil banheiros usuários'.
EXECUTE.
VALUE LABELS d19_8_quartil '1' 'de 0 a 2 banheiros' '2' '3 a 4 banheiros' '3' '5 a 6 banheiros' '4' '7 ou mais banheiros'.
execute.


***Equipamentos disponíveis no Centro Dia

IF  (q22_1 = 1  | q22_2 = 1) d22_telefone=1.
EXECUTE.

VALUE LABELS
d22_telefone  0 "Não"  1 "Sim".
  
VARIABLE LABELS
d22_telefone 'd22_telefone_Telefone (exclusivo ou compartilhado)'.
EXECUTE.


IF  (q22_10 = 1  | q22_11 = 1 | q22_12 = 1) d22_veiculo=1.
EXECUTE.

VALUE LABELS
d22_veiculo  0 "Não"  1 "Sim".

  
VARIABLE LABELS
d22_veiculo	'd22_veiculo_Veículo (exclusivo ou compartilhado)'.
EXECUTE.

RECODE d22_telefone d22_veiculo (SYSMIS=0).
EXECUTE.

*Remover casos - pulo q3

DO IF (q3 =1).
RECODE d22_telefone d22_veiculo (0=SYSMIS).
END IF.
EXECUTE.


*** Quantidade de Computadores***

RECODE  q23_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)
(11 thru Highest=11) INTO  d23_1.
EXECUTE .

VALUE LABELS
d23_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
d23_1	'd23_1_Quantidade de computadores, em perfeito funcionamento, existentes no CRAS'.
EXECUTE.

RECODE  q23_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)
(11 thru Highest=11) INTO  d23_2.
EXECUTE .

VALUE LABELS
d23_2 0'0' 1'1' 2'2' 3'3' 4'4' 5'5' 10'De 6 a 10' 11'Mais de 10'.

VARIABLE LABELS
d23_2	'd23_2_Quantidade de computadores conectados à internet no CRAS'.
EXECUTE.




*********Q 25- Capacidade de atendimento (REVER ESTÁ ERRADO)

RECODE q25 (0=0) (1 thru 10=1) (11 thru 20=2) (21 thru 30=3) (31 thru 40=4) (41 thru 50=5) (51 thru 60=6)  (61 thru 70=7) (71 thru 80=8) (81 thru 90=9) (91 thru 100=10) (101 thru 150=11) (151 thru 200=12)
(201 thru Highest=13) INTO d25_cap_atend_faixas.
EXECUTE.

VALUE LABELS
d25_cap_atend_faixas 0"Nenhuma pessoa" 1"De 1 a 10 pessoas"  2"De 11 a 20 pessoas"  3"De 21 a 30 pessoas" 4"De 31 a 40 pessoas" 5"De 41 a 50 pessoas" 6"De 51 a 60 pessoas" 7"De 61 a 70 pessoas" 8"De 71 a 80 pessoas"
9"De 81 a 90 pessoas" 10"De 91 a 100 pessoas" 11"De 101 a 150 pessoas" 12"De 151 a 200 pessoas" 13"De 201 ou mais pessoas" .
EXECUTE.

VARIABLE LABELS
d25_cap_atend_faixas 'd25_Capacidade de atendimento por faixas'.
EXECUTE.

