
** Tempo de Implantação da Unidade

COMPUTE time=DATE.DMY(31,12,2015).
EXECUTE.
COMPUTE Dident15=DATEDIFF (time,ident_15,"year").
VARIABLE LABELS Dident15 'Dident15_Tempo de Implantação da Unidade'. 
FORMATS Dident15 (f1.0).
EXECUTE.

**(se o comando der errado, verifique se a variável ident_15 está em formato "Date". 

DELETE VARIABLES time. 
Execute. 

recode Dident15 (0 thru 5 =1) (5 thru 10 =2) (11 thru 20 =3) (21 thru 40=4) (41 thru highest =5) into Dident15_2.
execute.

var labels Dident15_2 'Dident15_2_Tempo de Implantação da Unidade'. 
FORMATS Dident15_2 (f1.0).

value labels Dident15_2
1 "De 0 a 5 anos"
2 "De 6 a 10 anos"
3 "De 11 a 20 anos"
4 "De 21 a 40 anos"
5 "Mais de 40 anos".
execute.

** Público criança e adolescente

RECODE q2 (315=1) (317=1) (ELSE=0) INTO D2_crianca.
EXECUTE.

VARIABLE LABELS D2_crianca 'D2_crianca_Público criança e adolescente (q2=315 | q2=317)'.
FORMATS D2_crianca (f1.0).
EXECUTE.

value labels D2_crianca
1 'Criança e Adolescente'
0 'Outros públicos'. 

** Público criança, adolescentes e jovens egressos

RECODE q2 (315=1) (316=1) (317=1) (ELSE=0) INTO D2_crianca_jovem.
EXECUTE.

VARIABLE LABELS D2_crianca_jovem 'D2_crianca_Público criança, adolescente e jovens egressos (q2=315 | q2=316 | q2=317)'.
FORMATS D2_crianca_jovem (f1.0).
EXECUTE.

value labels D2_crianca_jovem
1 'Criança, Adolescente e jovens Egressos'
0 'Outros públicos'. 


** Quantidade de Municípios com os quais o acolhimento tem algum termo de parceria/convenio/cooperação


RECODE D10 (sysmiss=sysmiss) (0 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru highest=4) into D10_sum. 
execute.

FORMATS D10_sum (f1.0).
variable labels D10_sum 'D10_sum_Quantidade de outros municípios que tem termo de parceria/conveio/cooperação com esta unidade'.

value labels D10_sum 
1 'Até 2 municípios'
2 'De 3 a 5 municípios'
3 'De 6 a 10 municípios'
4 'Mais de 10 municípios'. 
execute. 



**Capacidade Máxima de Atendimento - Cuidado com 0 ou 1

RECODE q14_1  (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D14_1.
VARIABLE LABELS  D14_1 'D14_1_Capacidade máxima para atendimento (numero de vagas) da unidade'.
FORMATS D14_1 (f1.0).
EXECUTE.

VALUE LABELS D14_1
1	De 0 a 5 vagas
2	De 6 a 10 vagas
3	De 11 a 20 vagas
4	De 21 a 40 vagas
5	De 41 a 60 vagas
6	De 61 a 80 vagas
7	De 81 a 100 vagas
8	Mais de 100 vagas.
EXECUTE.

*****quantidade de vagas ocupadas - Cuidado com 0 ou 1 

RECODE q14_2 (0 thru 5=1) (6 thru 10=2) (11 thru 20=3) (21 thru 40=4) (41 thru 60=5) (61 thru 
    80=6) (81 thru 100=7) (101 thru Highest=8) INTO D14_2.
VARIABLE LABELS  D14_2 'D14_2_Quantas pessoas estão acolhidas na unidade (número de vagas ocupadas)'.
FORMATS D14_2 (f1.0).
EXECUTE.

VALUE LABELS D14_2
1	De 0 a 5 vagas
2	De 6 a 10 vagas
3	De 11 a 20 vagas
4	De 21 a 40 vagas
5	De 41 a 60 vagas
6	De 61 a 80 vagas
7	De 81 a 100 vagas
8	Mais de 100 vagas.
EXECUTE.

*** Quantidade de crianças que retornaram a família de origem

RECODE q14_2_1 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D14_2_1.
VARIABLE LABELS  D14_2_1 'D14_2_1_Quantas crianças/adolescentes desta unidade retornaram às suas famílias de origem'.
FORMATS D14_2_1 (f1.0).
EXECUTE.

VALUE LABELS D14_2_1
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.


*** Quantidade de crianças que foram encaminhadas a famílias substitutas_REINTEGRAÇÃO

RECODE q14_2_2_1 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D14_2_2_1.
VARIABLE LABELS  D14_2_2_1 'D14_2_2_1_Quantas crianças/adolescentes foram encaminhadas a famílias substitutas - mediante REINTEGRAÇÂO'.
FORMATS D14_2_2_1 (f1.0).
EXECUTE.

VALUE LABELS D14_2_2_1
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.

*** Quantidade de crianças que foram encaminhadas a famílias substitutas_ADOÇÃO

RECODE q14_2_2_2 (0=1) (1 thru 2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru 40=6) (41 thru 60=7) (60 thru Highest=8) INTO D14_2_2_2.
VARIABLE LABELS  D14_2_2_2 'D14_2_2_2_Quantas crianças/adolescentes foram encaminhadas a famílias substitutas - mediante ADOÇÃO'.
FORMATS D14_2_2_2 (f1.0).
EXECUTE.

VALUE LABELS D14_2_2_2
1	'Nenhuma crianças/adolescentes'
2	'De 1 a 2 crianças/adolescentes'	
3	'De 3 a 5 crianças/adolescentes'
4	'De 6 a 10 crianças/adolescentes'
5	'De 11 a 20 crianças/adolescentes'
6	'De 21 a 40 crianças/adolescentes'
7	'De 41 a 60 crianças/adolescentes'
8	'Mais de 60 crianças/adolescentes'.
EXECUTE.


*** Quantidade de acolhidos de 0 a 17 anos

COMPUTE D15_mas_0a17 = q15_mas_1 + q15_mas_2+ q15_mas_3 + q15_mas_4 + q15_mas_5 + q15_mas_6.
execute. 
COMPUTE D15_fem_0a17 = q15_fem_1 + q15_fem_2+ q15_fem_3 + q15_fem_4 + q15_fem_5 + q15_fem_6.
execute. 
COMPUTE D15_tot_0a17 = q15_tot_1 + q15_tot_2+ q15_tot_3 + q15_tot_4 + q15_tot_5 + q15_tot_6.
execute. 

VARIABLE LABELS D15_mas_0a17 'D15_mas_0a17__Quantidade de pessoas acolhidas: Masculino - 0 a 147'.
VARIABLE LABELS D15_fem_0a17 'D15_fem_0a17__Quantidade de pessoas acolhidas: Feminino - 0 a 147'.
VARIABLE LABELS D15_tot_0a17 'D15_tot_0a17__Quantidade de pessoas acolhidas: Total - 0 a 147'.
Execute.

formats D15_mas_0a17 (f1.0).
formats D15_fem_0a17 (f1.0).
formats D15_tot_0a17 (f1.0).

**** quantidade de pessoas dormindo em um mesmo dormitório - Cuidado com 0 ou 1

RECODE q16 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D16.
VARIABLE LABELS  D16 'D16_Numero máximo de pessoas dormindo em um mesmo dormitório'.
FORMATS D16 (f1.0).
EXECUTE.

VALUE LABELS D16
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.

** Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro município

RECODE q17 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D17.
VARIABLE LABELS  D17 'D17_Das pessoas atualmente acolhidas nesta unidade, quantas delas vieram encaminhadas de outro município'.
FORMATS D17 (f1.0).
EXECUTE.

VALUE LABELS D17
1	De 0 a 3 pessoas
2	De 4 a 6 pessoas
3	De 7 a 9 pessoas
4	De 10 a 12 pessoas
5	De 13 a 15 pessoas
6	Mais de 15 pessoas.
EXECUTE.

** Pessoas que recebem BPC - Idosos

RECODE q18_1 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D18_1.
VARIABLE LABELS  D18_1 'D18_1_Quantidade de Idosos beneficiários do BPC'.
FORMATS D18_1 (f1.0).
EXECUTE.

VALUE LABELS D18_1
1	De 0 a 5 idosos
2	De 6 a 10 idosos
3	De 11 a 20 idosos
4	De 21 a 40 idosos
5	De 41 a 60 idosos
6	Mais de 60 idosos.
EXECUTE.

** Pessoas que recebem BPC - PCD

RECODE q18_2 (0 thru 3=1) (4 thru 6=2) (7 thru 9=3) (10 thru 12=4) (13 thru 15=5) (15 thru 
    Highest=6) INTO D18_2.
VARIABLE LABELS  D18_2 'D18_2_Quantidade de Pessoas com deficiência beneficiários do BPC'.
FORMATS D18_2 (f1.0).
EXECUTE.

VALUE LABELS D18_2
1	De 0 a 5 pessoas
2	De 6 a 10 pessoas
3	De 11 a 20 pessoas
4	De 21 a 40 pessoas
5	De 41 a 60 pessoas
6	Mais de 60 pessoas.
EXECUTE.


****Critérios de idade para admissão de usuários****

RECODE q20a_1 (0 thru 6=1) (7 thru 12=2) (13 thru 17=3) (18 thru 59=4) (60 thru Highest=5) INTO 
    D20a.
ADD VALUE LABEL
 D20a 1"De 0 a 6 anos"  2"De 7 a 12 anos"  3"De 13 a 17 anos"  4"De 18 a 59 anos" 5"60 ou mais".
EXECUTE.

VARIABLE LABELS  D20a 'D20a_Idade mínima para admissão dos usuários'.
FORMATS D20a (f1.0).
EXECUTE.

RECODE q20b_1 (0 thru 6=1) (7 thru 12=2) (13 thru 17=3) (18 thru 59=4) (60 thru Highest=5) INTO 
    D20b.
ADD VALUE LABEL
 D20b 1"De 0 a 6 anos"  2"De 7 a 12 anos"  3"De 13 a 17 anos"  4"De 18 a 59 anos" 5"60 ou mais".
EXECUTE.

VARIABLE LABELS  D20b 'D20b_Idade máxima para admissão dos usuários'.
FORMATS D20b (f1.0).
EXECUTE.

*** Características específcas dos acohidos

recode q23a_1 (0=0) (sysmiss=sysmiss) (else=1) into D23a_1.
FORMATS D23a_1 (f1.0).
execute.

var labels D23a_1 'D23a_1_Unidades com pelo menos 1 acolhido com Deficiência Física'. 
value labels D23a_1
0 'Não'
1 'Sim'. 

recode q23b_1 (0=0) (sysmiss=sysmiss) (else=1) into D23b_1.
FORMATS D23b_1 (f1.0).
execute.

var labels D23b_1 'D23b_1_Unidades com pelo menos 1 acolhido com Deficiência Sensorial'. 
value labels D23b_1
0 'Não'
1 'Sim'. 

recode q23c_1 (0=0) (sysmiss=sysmiss) (else=1) into D23c_1.
FORMATS D23c_1 (f1.0).
execute.

var labels D23c_1 'D23c_1_Unidades com pelo menos 1 acolhido com Deficiência Intelectual (Deficiência Mental)'. 
value labels D23c_1
0 'Não'
1 'Sim'. 


recode q23d_1 (0=0) (sysmiss=sysmiss) (else=1) into D23d_1.
FORMATS D23d_1 (f1.0).
execute.

var labels D23d_1 'D23d_1_Unidades com pelo menos 1 acolhido com Doença Intelectual (Transtorno Mental)'. 
value labels D23d_1
0 'Não'
1 'Sim'. 

recode q23e_1 (0=0) (sysmiss=sysmiss) (else=1) into D23e_1.
FORMATS D23e_1 (f1.0).
execute.

var labels D23e_1 'D23e_1_Unidades com pelo menos 1 acolhido com Dependência de Alcool ou Outras Drogas'. 
value labels D23e_1
0 'Não'
1 'Sim'.


recode q23f_1 (0=0) (sysmiss=sysmiss) (else=1) into D23f_1.
FORMATS D23f_1 (f1.0).
execute.

var labels D23f_1 'D23f_1_Unidades com pelo menos 1 acolhido com Doentes Crônicos'. 
value labels D23f_1
0 'Não'
1 'Sim'. 
 

recode q23g_1 (0=0) (sysmiss=sysmiss) (else=1) into D23g_1.
FORMATS D23g_1 (f1.0).
execute.

var labels D23g_1 'D23g_1_Unidades com pelo menos 1 acolhido com Trajetória de Rua'. 
value labels D23g_1
0 'Não'
1 'Sim'. 


recode q23h_1 (0=0) (sysmiss=sysmiss) (else=1) into D23h_1.
FORMATS D23h_1 (f1.0).
execute.

var labels D23h_1 'D23h_1_Unidades com pelo menos 1 acolhido Idosos ou pessoas com deficiência que requeriam assistencia em atividades de auto-cuidado'. 
value labels D23h_1
0 'Não'
1 'Sim'. 


recode q23i_1 (0=0) (sysmiss=sysmiss) (else=1) into D23i_1.
FORMATS D23i_1 (f1.0).
execute.

var labels D23i_1 'D23i_1_Unidades com pelo menos 1 acolhido Refugiados/Imigrantes'. 
value labels D23i_1
0 'Não'
1 'Sim'. 


recode q23j_1 (0=0) (sysmiss=sysmiss) (else=1) into D23j_1.
FORMATS D23j_1 (f1.0).
execute.

var labels D23j_1 'D23j_1_Unidades com pelo menos 1 acolhido pessoa vitima de calamidade ou situação de emergência'. 
value labels D23j_1
0 'Não'
1 'Sim'. 


recode q23k_1 (0=0) (sysmiss=sysmiss) (else=1) into D23k_1.
FORMATS D23k_1 (f1.0).
execute.

var labels D23k_1 'D23k_1_Unidades com pelo menos 1 acolhido Pessoas vítimas e tráfico de seres humanos'. 
value labels D23k_1
0 'Não'
1 'Sim'. 


recode q23l_1 (0=0) (sysmiss=sysmiss) (else=1) into D23l_1.
FORMATS D23l_1 (f1.0).
execute.

var labels D23l_1 'D23l_1_Unidades com pelo menos 1 acolhido com Deficiência Multipla'. 
value labels D23l_1
0 'Não'
1 'Sim'. 


recode q23m_1 (0=0) (sysmiss=sysmiss) (else=1) into D23m_1.
FORMATS D23m_1 (f1.0).
execute.

var labels D23m_1 'D23m_1_Unidades com pelo menos 1 acolhido Indígena'. 
value labels D23m_1
0 'Não'
1 'Sim'. 


recode q23n_1 (0=0) (sysmiss=sysmiss) (else=1) into D23n_1.
FORMATS D23n_1 (f1.0).
execute.

var labels D23n_1 'D23n_1_Unidades com pelo menos 1 acolhido Travesti, transexual, trangênero'. 
value labels D23n_1
0 'Não'
1 'Sim'. 


** Quantidade de Computadores***


RECODE
  q41_1
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D41_1 .
EXECUTE .

ADD VALUE LABEL
D41_1 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D41_1 D41_1_Quantidade de computadores na Unidade.
FORMATS D41_1 (f1.0).
EXECUTE.


RECODE
  q41_2
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D41_2.
EXECUTE .

ADD VALUE LABEL
D41_2 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D41_2 D41_2_Quantidade de computadores na Unidade conectados à internet.
FORMATS D41_2 (f1.0).
EXECUTE.

RECODE
  q41_3
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D41_3 .
EXECUTE .

ADD VALUE LABEL
D41_3 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D41_3 D413_Quantidade de computadores na Unidade para utilização dos usuários.
FORMATS D41_3 (f1.0).
EXECUTE.

RECODE
  q41_4
(0=0) (1=1)  (2=2)  (3=3)  (4=4)  (5=5)  (6 thru 10=10)  (11 thru Highest=11) INTO  D41_4 .
EXECUTE .

ADD VALUE LABEL
D41_4 0"0" 1"1" 2"2" 3"3" 4"4" 5"5" 10"De 6 a 10" 11"Mais de 10".

VARIABLE LABELS
D41_4 D4_4_Quantidade de computadores na Unidade, para a utilização do usuários, conectados à internet.
FORMATS D41_4 (f1.0).
EXECUTE.



**********************************************************************************
**'*****************  Derivadas de Recursos Humanos **********************
**********************************************************************************

*Fazer a agregação das variáveis Derivadas do Recursos Humanos


AGGREGATE
  /OUTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Acolhimento\Base de Dados\Base de RH para os DG.sav'
  /BREAK=id_acolhimento
  /D44_sum=SUM(D44)
  /D44_8bin1_sum=SUM(D44_8bin1) 
  /D44_8bin2_sum=SUM(D44_8bin2) 
  /D44_8bin3_sum=SUM(D44_8bin3) 
  /D44_9bin1_sum=SUM(D44_9bin1) 
  /D44_9bin2_sum=SUM(D44_9bin2) 
  /D44_9bin3_sum=SUM(D44_9bin3) 
  /D44_9bin4_sum=SUM(D44_9bin4) 
  /D44_9bin5_sum=SUM(D44_9bin5) 
  /D44_9bin6_sum=SUM(D44_9bin6) 
  /D44_9bin7_sum=SUM(D44_9bin7) 
  /D44_9bin8_sum=SUM(D44_9bin8) 
  /D44_10bin1_sum=SUM(D44_10bin1) 
  /D44_10bin2_sum=SUM(D44_10bin2) 
  /D44_10bin3_sum=SUM(D44_10bin3) 
  /D44_10bin4_sum=SUM(D44_10bin4) 
  /D44_10bin5_sum=SUM(D44_10bin5).

*Fazer o merge com o banco de Acolhimento

* MATCH FILES /FILE=*
  /TABLE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados - '+
    'Tratamento\Acolhimento\Lixo\Acolhimento_Variáveis do DG para o RH.sav'
  /RENAME (codigo_ibge ident_1 q1 q2 q5 = d0 d1 d2 d3 d4) 
  /BY id_acolhimento
  /DROP= d0 d1 d2 d3 d4.
*EXECUTE.

*Renomear as variáveis

variable labels 
D44_sum 'D44_sum_Quantidade de trabalhadores'
/ D44_8bin1_sum ' D44_8bin1_Quantidade de trabalhadores - Nível Fundamental '
/ D44_8bin2_sum ' D44_8bin2_Quantidade de trabalhadores - Nível Médio '
/ D44_8bin3_sum ' D44_8bin3_Quantidade de trabalhadores - Nível Superior '
/ D44_9bin1_sum ' D44_9bin1_Quantidade de trabalhadores - Assistente Social '
/ D44_9bin2_sum ' D44_9bin2_Quantidade de trabalhadores - Psicólogo '
/ D44_9bin3_sum ' D44_9bin3_Quantidade de trabalhadores - Pedagógo '
/ D44_9bin4_sum ' D44_9bin4_Quantidade de trabalhadores - Enfermeiro '
/ D44_9bin5_sum ' D44_9bin5_Quantidade de trabalhadores - Médico '
/ D44_9bin6_sum ' D44_9bin6_Quantidade de trabalhadores - Administrador '
/ D44_9bin7_sum ' D44_9bin7_Quantidade de trabalhadores - Advogado '
/ D44_9bin8_sum ' D44_9bin8_Quantidade de trabalhadores - Fisiterapeuta/Terapia Ocupacional '
/ D44_10bin1_sum ' D44_10bin1_Quantidade de trabalhadores - Servidor Público ou Comissionado '
/ D44_10bin2_sum ' D44_10bin2_Quantidade de trabalhadores - Empregado Público (CLT) '
/ D44_10bin3_sum ' D44_10bin3_Quantidade de trabalhadores - Voluntario ou Sem Vínculo '
/ D44_10bin4_sum ' D44_10bin4_Quantidade de trabalhadores - Tercerizado ou Trabalhador de Empresa, Cooperativa ou Entidade Prestadora de serviços '
/ D44_10bin5_sum ' D44_10bin5_Quantidade de trabalhadores - Outro vínculo não permanente '.
execute.

formats D44_sum (f3.0).
formats D44_8bin1_sum (f3.0).
formats D44_8bin2_sum (f3.0).
formats D44_8bin3_sum (f3.0).
formats D44_9bin1_sum (f3.0).
formats D44_9bin2_sum (f3.0).
formats D44_9bin3_sum (f3.0).
formats D44_9bin4_sum (f3.0).
formats D44_9bin5_sum (f3.0).
formats D44_9bin6_sum (f3.0).
formats D44_9bin7_sum (f3.0).
formats D44_9bin8_sum (f3.0).
formats D44_10bin1_sum (f3.0).
formats D44_10bin2_sum (f3.0).
formats D44_10bin3_sum (f3.0).
formats D44_10bin4_sum (f3.0).
formats D44_10bin5_sum (f3.0).












DATASET ACTIVATE DataSet1.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=q2 q5 q18_1 q18_2 DISPLAY=DEFAULT
  /TABLE q2 [C] BY q5 [C] > (q18_1 [S][SUM] + q18_2 [S][SUM])
  /CATEGORIES VARIABLES=q2 q5 ORDER=A KEY=VALUE EMPTY=INCLUDE.
