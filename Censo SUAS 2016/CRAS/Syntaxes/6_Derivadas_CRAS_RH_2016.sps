

**Trocar o ano de referência no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE d43_2=DATEDIFF((DATE.DMY(31,12,2016)),q43_2_dtnasc,"years").
VARIABLE LABELS d43_2 'd43_2_Idade em anos (data ref. 31-12-2016)'.
EXECUTE.

**** REMOVER DA d43_2 os casos em que o profissional tem idade < 16 ou > 70.
RECODE d43_2 (LOWEST thru 15=SYSMIS) (81 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE d43_2 (16 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 80=4) INTO d43_2_categoria.
VARIABLE LABELS  d43_2_categoria  'd43_2_categoria_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  d43_2_categoria
1 'De 16 a 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 'De 50 a 80 anos'.
EXECUTE.



RECODE q43_7_esc (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d43_7.
VARIABLE LABELS d43_7 'd43_7_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d43_7
0 'Nível Fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE q43_9_vinc (292=3) (139=2) (138=1) (else=4) INTO d43_9.
VARIABLE LABELS   d43_9 'd43_9_Tipo de vínculo'.

VALUE LABELS d43_9
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d43_7 (0=1) INTO d43_7bin1.
VARIABLE LABELS  d43_7bin1 'd43_7bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d43_7bin1
1 'Nível Fundamental'.
EXECUTE.

RECODE d43_7 (1=1) INTO d43_7bin2.
VARIABLE LABELS  d43_7bin2 'd43_7bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d43_7bin2
1 'Nível Médio'.
EXECUTE.

RECODE d43_7 (2=1) INTO d43_7bin3.
VARIABLE LABELS  d43_7bin3 'd43_7bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d43_7bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q43_8_prof (275=1) INTO d43_8bin1.
VARIABLE LABELS  d43_8bin1 'd43_8bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d43_8bin1
1 'Pedagogo'.
EXECUTE.

RECODE q43_8_prof (273=1) INTO d43_8bin2.
VARIABLE LABELS  d43_8bin2 'd43_8bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d43_8bin2
1 'Assistente Social'.
EXECUTE.

RECODE q43_8_prof (234=1) INTO d43_8bin3.
VARIABLE LABELS  d43_8bin3 'd43_8bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d43_8bin3
1 'Antropólogo'.
EXECUTE.

RECODE q43_8_prof (232=1) INTO d43_8bin4.
VARIABLE LABELS  d43_8bin4 'd43_8bin4_Advogado'.
EXECUTE.

VALUE LABELS  d43_8bin4
1 'Advogado'.
EXECUTE.

RECODE q43_8_prof (274=1) INTO d43_8bin5.
VARIABLE LABELS  d43_8bin5 'd43_8bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d43_8bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d43_9 (1=1) INTO d43_9bin1.
VARIABLE LABELS   d43_9bin1 'd43_9bin1_Servidor Estatutário'.

VALUE LABELS  d43_9bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d43_9  (2=1) INTO d43_9bin2.
VARIABLE LABELS  d43_9bin2 'd43_9bin2_Empregado Público (CLT)'.

VALUE LABELS  d43_9bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d43_9 (3=1) INTO d43_9bin3.
VARIABLE LABELS d43_9bin3 'd43_9bin3_Comissionado'.

VALUE LABELS  d43_9bin3
1 'Comissionado'.
EXECUTE.

RECODE d43_9 (4=1) INTO d43_9bin4.
VARIABLE LABELS d43_9bin4 'd43_9bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d43_9bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


**** variáveis binárias - Serviços****

RECODE  q43_13_1 (1=1) INTO d43_13_1bin_Gestão.
VARIABLE LABELS   d43_13_1bin_Gestão 'd43_13_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS  d43_13_1bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q43_13_1 (2=1) INTO d43_13_1bin_PAIF.
VARIABLE LABELS   d43_13_1bin_PAIF 'd43_13_1bin_PAIF - Principal serviço/atividade'.

VALUE LABELS  d43_13_1bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q43_13_1 (3=1) INTO d43_13_1bin_SCFV.
VARIABLE LABELS   d43_13_1bin_SCFV 'd43_13_1bin_SCFV - Principal serviço/atividade'.

VALUE LABELS  d43_13_1bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculos - SCFV'.
EXECUTE.

RECODE  q43_13_1 (4=1) INTO d43_13_1bin_Cadastramento.
VARIABLE LABELS   d43_13_1bin_Cadastramento 'd43_13_1bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  d43_13_1bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q43_13_1 (99=1) INTO d43_13_1bin_Outros.
VARIABLE LABELS   d43_13_1bin_Outros 'd43_13_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d43_13_1bin_Outros
1 'Outros'.
EXECUTE.



RECODE  q43_13_2 (1=1) INTO d43_13_2bin_Gestão.
VARIABLE LABELS   d43_13_2bin_Gestão 'd43_13_2bin_Gestão - Segundo principal serviço/atividade'.

VALUE LABELS  d43_13_2bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q43_13_2 (2=1) INTO d43_13_2bin_PAIF.
VARIABLE LABELS   d43_13_2bin_PAIF 'd43_13_2bin_PAIF - Segundo principal serviço/atividade'.

VALUE LABELS  d43_13_2bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q43_13_2 (3=1) INTO d43_13_2bin_SCFV.
VARIABLE LABELS   d43_13_2bin_SCFV 'd43_13_2bin_SCFV - Segundo principal serviço/atividade'.

VALUE LABELS  d43_13_2bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculos - SCFV'.
EXECUTE.

RECODE  q43_13_2 (4=1) INTO d43_13_2bin_Cadastramento.
VARIABLE LABELS   d43_13_2bin_Cadastramento 'd43_13_2bin_Cadastramento - Segundo principal serviço/atividade'.

VALUE LABELS  d43_13_2bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q43_13_2 (99=1) INTO d43_13_2bin_Outros.
VARIABLE LABELS   d43_13_2bin_Outros 'd43_13_2bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d43_13_2bin_Outros
1 'Outros'.
EXECUTE.




RECODE  q43_13_3 (1=1) INTO d43_13_3bin_Gestão.
VARIABLE LABELS   d43_13_3bin_Gestão 'd43_13_3bin_Gestão - Terceiro principal serviço/atividade'.

VALUE LABELS  d43_13_3bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q43_13_3 (2=1) INTO d43_13_3bin_PAIF.
VARIABLE LABELS   d43_13_3bin_PAIF 'd43_13_3bin_PAIF - Terceiro principal serviço/atividade'.

VALUE LABELS  d43_13_3bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q43_13_3 (3=1) INTO d43_13_3bin_SCFV.
VARIABLE LABELS   d43_13_3bin_SCFV 'd43_13_3bin_SCFV - Terceiro principal serviço/atividade'.

VALUE LABELS  d43_13_3bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculos - SCFV'.
EXECUTE.

RECODE  q43_13_3 (4=1) INTO d43_13_3bin_Cadastramento.
VARIABLE LABELS   d43_13_3bin_Cadastramento 'd43_13_3bin_Cadastramento - Terceiro principal serviço/atividade'.

VALUE LABELS  d43_13_3bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q43_13_3 (99=1) INTO d43_13_3bin_Outros.
VARIABLE LABELS   d43_13_3bin_Outros 'd43_13_3bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d43_13_3bin_Outros
1 'Outros'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NºIDENTIFICADOR
  /d43_7bin1_sum=SUM(d43_7bin1)
  /d43_7bin2_sum=SUM(d43_7bin2)
  /d43_7bin3_sum=SUM(d43_7bin3)
  /d43_8bin1_sum=SUM(d43_8bin1) 
  /d43_8bin2_sum=SUM(d43_8bin2) 
  /d43_8bin3_sum=SUM(d43_8bin3) 
  /d43_8bin4_sum=SUM(d43_8bin4) 
  /d43_8bin5_sum=SUM(d43_8bin5) 
  /d43_9bin1_sum=SUM(d43_9bin1) 
  /d43_9bin2_sum=SUM(d43_9bin2) 
  /d43_9bin3_sum=SUM(d43_9bin3) 
  /d43_9bin4_sum=SUM(d43_9bin4)
  /d43_13_1bin_Gestão_sum=SUM(d43_13_1bin_Gestão)
  /d43_13_1bin_PAIF_sum=SUM(d43_13_1bin_PAIF)
  /d43_13_1bin_SCFV_sum=SUM(d43_13_1bin_SCFV)
		/d43_13_1bin_Cadastramento_sum=SUM(d43_13_1bin_Cadastramento)
  /d43_13_1bin_Outros_sum=SUM(d43_13_1bin_Outros)
  /d43_13_2bin_Gestão_sum=SUM(d43_13_2bin_Gestão)
  /d43_13_2bin_PAIF_sum=SUM(d43_13_2bin_PAIF)
  /d43_13_2bin_SCFV_sum=SUM(d43_13_2bin_SCFV)
		/d43_13_2bin_Cadastramento_sum=SUM(d43_13_2bin_Cadastramento)
  /d43_13_2bin_Outros_sum=SUM(d43_13_2bin_Outros)
  /d43_13_3bin_Gestão_sum=SUM(d43_13_3bin_Gestão)
  /d43_13_3bin_PAIF_sum=SUM(d43_13_3bin_PAIF)
  /d43_13_3bin_SCFV_sum=SUM(d43_13_3bin_SCFV)
		/d43_13_3bin_Cadastramento_sum=SUM(d43_13_3bin_Cadastramento)
  /d43_13_3bin_Outros_sum=SUM(d43_13_3bin_Outros)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d43_7bin1_sum 'd43_7bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
/d43_7bin2_sum'd43_7bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
/d43_7bin3_sum'd43_7bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
/d43_8bin1_sum'd43_8bin1_sum_Número de Pedagogos'
/d43_8bin2_sum'd43_8bin2_sum_Número de Assistentes Sociais'
/d43_8bin3_sum'd43_8bin3_sum_Número de Antropólogos'
/d43_8bin4_sum'd43_8bin4_sum_Número de Advogados'
/d43_8bin5_sum'd43_8bin5_sum_Número de Psicólogos'
/d43_9bin1_sum'd43_9bin1_sum_Número de Servidores Estatutários'
/d43_9bin2_sum'd43_9bin2_sum_Número de Empregados Públicos(CLT)'
/d43_9bin3_sum'd43_9bin3_sum_Número de Comissionados'
/d43_9bin4_sum'd43_9bin4_sum_Número de profissionais com outros vínculos não permanentes'
/d43_13_1bin_Gestão_sum'd43_13_1bin_Gestão - Principal serviço/atividade'
/d43_13_1bin_PAIF_sum'd43_13_1bin_PAIF - Principal serviço/atividade'
/d43_13_1bin_SCFV_sum'd43_13_1bin_SCFV - Principal serviço/atividade'
/d43_13_1bin_Cadastramento_sum'd43_13_1bin_Cadastramento- Principal serviço/atividade'
/d43_13_1bin_Outros_sum'd43_13_1bin_Outros - Principal serviço/atividade'
/d43_13_2bin_Gestão_sum'd43_13_2bin_Gestão - Segundo principal serviço/atividade'
/d43_13_2bin_PAIF_sum'd43_13_2bin_PAIF - Segundo principal serviço/atividade'
/d43_13_2bin_SCFV_sum'd43_13_2bin_SCFV - Segundo principal serviço/atividade'
/d43_13_2bin_Cadastramento_sum'd43_13_2bin_Cadastramento- Segundo serviço/atividade'
/d43_13_2bin_Outros_sum'd43_13_2bin_Outros - Principal serviço/atividade'
/d43_13_3bin_Gestão_sum'd43_13_3bin_Gestão - Terceiro principal serviço/atividade'
/d43_13_3bin_PAIF_sum'd43_13_3bin_PAIF - Terceiro principal serviço/atividade'
/d43_13_3bin_SCFV_sum'd43_13_3bin_SCFV - Terceiro principal serviço/atividade'
/d43_13_3bin_Cadastramento_sum'd43_13_3bin_Cadastramento - Terceiro principal serviço/atividade'
/d43_13_3bin_Outros_sum'd43_13_3bin_Outros - Principal serviço/atividade'
/nu_trabalhadores'Número de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d43_7bin1_sum d43_7bin2_sum d43_7bin3_sum d43_8bin1_sum d43_8bin2_sum d43_8bin3_sum 
d43_8bin4_sum d43_8bin5_sum d43_9bin1_sum d43_9bin2_sum d43_9bin3_sum d43_9bin4_sum d43_13_1bin_Gestão_sum
d43_13_1bin_PAIF_sum	d43_13_1bin_SCFV_sum	d43_13_1bin_Cadastramento_sum	d43_13_1bin_Outros_sum	d43_13_2bin_Gestão_sum	d43_13_2bin_PAIF_sum	
d43_13_2bin_SCFV_sum	d43_13_2bin_Cadastramento_sum	d43_13_2bin_Outros_sum	d43_13_3bin_Gestão_sum	d43_13_3bin_PAIF_sum	d43_13_3bin_SCFV_sum	
d43_13_3bin_Cadastramento_sum	d43_13_3bin_Outros_sum nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
d43_7bin1_sum 'd43_7bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d43_7bin2_sum'd43_7bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d43_7bin3_sum'd43_7bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d43_8bin1_sum'd43_8bin1_sum_Número de Pedagogos'
 d43_8bin2_sum'd43_8bin2_sum_Número de Assistentes Sociais'
 d43_8bin3_sum'd43_8bin3_sum_Número de Antropólogos'
 d43_8bin4_sum'd43_8bin4_sum_Número de Advogados'
 d43_8bin5_sum'd43_8bin5_sum_Número de Psicólogos'.
EXECUTE.

VARIABLE LABELS
 d43_9bin1_sum'd43_9bin1_Número de Servidores Estatutários'
 d43_9bin2_sum'd43_9bin2_Número de Empregados Públicos(CLT)'
 d43_9bin3_sum'd43_9bin3_Número de Comissionados'
 d43_9bin4_sum'd43_9bin4_Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Ser. Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d43_7bin1_sum
d43_7bin2_sum
d43_7bin3_sum
d43_8bin1_sum
d43_8bin2_sum
d43_8bin3_sum
d43_8bin4_sum
d43_8bin5_sum
d43_9bin1_sum
d43_9bin2_sum
d43_9bin3_sum
d43_9bin4_sum
d43_13_1bin_Gestão_sum
d43_13_1bin_PAIF_sum
d43_13_1bin_SCFV_sum
d43_13_1bin_Cadastramento_sum
d43_13_1bin_Outros_sum
d43_13_2bin_Gestão_sum
d43_13_2bin_PAIF_sum
d43_13_2bin_SCFV_sum
d43_13_2bin_Cadastramento_sum
d43_13_2bin_Outros_sum
d43_13_3bin_Gestão_sum
d43_13_3bin_PAIF_sum
d43_13_3bin_SCFV_sum
d43_13_3bin_Cadastramento_sum
d43_13_3bin_Outros_sum
(F8.0).

SORT CASES BY NºIDENTIFICADOR(A).


******* MESCLAR AS VARIÁVEIS DA BASE AGGR À BASE DADOS GERAIS



