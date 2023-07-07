
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



