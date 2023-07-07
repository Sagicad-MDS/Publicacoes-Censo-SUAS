****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

********************************************* BACKUP E CORREÇÕES

**** Correção do IBGE 2 dígitos (perfil estado)

COMPUTE CD_IBGE_original = CD_IBGE.
VARIABLE LABELS CD_IBGE_original'Original - Código IBGE do Município'.
EXECUTE.

IF  (CD_IBGE<100) CD_IBGE=TRUNC(NU_IDENTIFICADOR/100000).
VARIABLE LABELS  CD_IBGE 'Código IBGE do Município'.
EXECUTE.



****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Trocar o ano de referência no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE d55_2=DATEDIFF((DATE.DMY(31,12,2015)),q55_2,"years").
VARIABLE LABELS d55_2 'd55_2_Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

**** REMOVER DA d55_2 os casos em que o profissional tem idade < 16 ou > 70.
RECODE d55_2 (LOWEST thru 15=SYSMIS) (71 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE d55_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO d55_2_categoria.
VARIABLE LABELS  d55_2_categoria  'd55_2_categoria_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  d55_2_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
EXECUTE.



RECODE q55_6 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d55_6.
VARIABLE LABELS d55_6 'd55_6_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d55_6
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE q55_8 (292=3) (139=2) (138=1) (else=4) INTO d55_8.
VARIABLE LABELS   d55_8 'd55_8_Tipo de vínculo'.

VALUE LABELS d55_8
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d55_6 (0=1) INTO d55_6bin1.
VARIABLE LABELS  d55_6bin1 'd55_6bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d55_6bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d55_6 (1=1) INTO d55_6bin2.
VARIABLE LABELS  d55_6bin2 'd55_6bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d55_6bin2
1 'Nível Médio'.
EXECUTE.

RECODE d55_6 (2=1) INTO d55_6bin3.
VARIABLE LABELS  d55_6bin3 'd55_6bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d55_6bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q55_7 (275=1) INTO d55_7bin1.
VARIABLE LABELS  d55_7bin1 'd55_7bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d55_7bin1
1 'Pedagogo'.
EXECUTE.

RECODE q55_7 (273=1) INTO d55_7bin2.
VARIABLE LABELS  d55_7bin2 'd55_7bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d55_7bin2
1 'Assistente Social'.
EXECUTE.

RECODE q55_7 (234=1) INTO d55_7bin3.
VARIABLE LABELS  d55_7bin3 'd55_7bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d55_7bin3
1 'Antropólogo'.
EXECUTE.

RECODE q55_7 (232=1) INTO d55_7bin4.
VARIABLE LABELS  d55_7bin4 'd55_7bin4_Advogado'.
EXECUTE.

VALUE LABELS  d55_7bin4
1 'Advogado'.
EXECUTE.

RECODE q55_7 (274=1) INTO d55_7bin5.
VARIABLE LABELS  d55_7bin5 'd55_7bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d55_7bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d55_8 (1=1) INTO d55_8bin1.
VARIABLE LABELS   d55_8bin1 'd55_8bin1_Servidor Estatutário'.

VALUE LABELS  d55_8bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d55_8  (2=1) INTO d55_8bin2.
VARIABLE LABELS  d55_8bin2 'd55_8bin2_Empregado Público (CLT)'.

VALUE LABELS  d55_8bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d55_8 (3=1) INTO d55_8bin3.
VARIABLE LABELS d55_8bin3 'd55_8bin3_Comissionado'.

VALUE LABELS  d55_8bin3
1 'Comissionado'.
EXECUTE.

RECODE d55_8 (4=1) INTO d55_8bin4.
VARIABLE LABELS d55_8bin4 'd55_8bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d55_8bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


**** variáveis binárias - Serviços****

RECODE  q55_12_1 (1=1) INTO d55_12_1bin_Gestão.
VARIABLE LABELS   d55_12_1bin_Gestão 'd55_12_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS  d55_12_1bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q55_12_1 (2=1) INTO d55_12_1bin_PAIF.
VARIABLE LABELS   d55_12_1bin_PAIF 'd55_12_1bin_PAIF - Principal serviço/atividade'.

VALUE LABELS  d55_12_1bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q55_12_1 (3=1) INTO d55_12_1bin_SCFV.
VARIABLE LABELS   d55_12_1bin_SCFV 'd55_12_1bin_SCFV - Principal serviço/atividade'.

VALUE LABELS  d55_12_1bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculos - SCFV'.
EXECUTE.

RECODE  q55_12_1 (4=1) INTO d55_12_1bin_Cadastramento.
VARIABLE LABELS   d55_12_1bin_Cadastramento 'd55_12_1bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  d55_12_1bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q55_12_1 (99=1) INTO d55_12_1bin_Outros.
VARIABLE LABELS   d55_12_1bin_Outros 'd55_12_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d55_12_1bin_Outros
1 'Outros'.
EXECUTE.



RECODE  q55_12_2 (1=1) INTO d55_12_2bin_Gestão.
VARIABLE LABELS   d55_12_2bin_Gestão 'd55_12_2bin_Gestão - Segundo principal serviço/atividade'.

VALUE LABELS  d55_12_2bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q55_12_2 (2=1) INTO d55_12_2bin_PAIF.
VARIABLE LABELS   d55_12_2bin_PAIF 'd55_12_2bin_PAIF - Segundo principal serviço/atividade'.

VALUE LABELS  d55_12_2bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q55_12_2 (3=1) INTO d55_12_2bin_SCFV.
VARIABLE LABELS   d55_12_2bin_SCFV 'd55_12_2bin_SCFV - Segundo principal serviço/atividade'.

VALUE LABELS  d55_12_2bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculos - SCFV'.
EXECUTE.

RECODE  q55_12_2 (4=1) INTO d55_12_2bin_Cadastramento.
VARIABLE LABELS   d55_12_2bin_Cadastramento 'd55_12_2bin_Cadastramento - Segundo principal serviço/atividade'.

VALUE LABELS  d55_12_2bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q55_12_2 (99=1) INTO d55_12_2bin_Outros.
VARIABLE LABELS   d55_12_2bin_Outros 'd55_12_2bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d55_12_2bin_Outros
1 'Outros'.
EXECUTE.




RECODE  q55_12_3 (1=1) INTO d55_12_3bin_Gestão.
VARIABLE LABELS   d55_12_3bin_Gestão 'd55_12_3bin_Gestão - Terceiro principal serviço/atividade'.

VALUE LABELS  d55_12_3bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q55_12_3 (2=1) INTO d55_12_3bin_PAIF.
VARIABLE LABELS   d55_12_3bin_PAIF 'd55_12_3bin_PAIF - Terceiro principal serviço/atividade'.

VALUE LABELS  d55_12_3bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE  q55_12_3 (3=1) INTO d55_12_3bin_SCFV.
VARIABLE LABELS   d55_12_3bin_SCFV 'd55_12_3bin_SCFV - Terceiro principal serviço/atividade'.

VALUE LABELS  d55_12_3bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculos - SCFV'.
EXECUTE.

RECODE  q55_12_3 (4=1) INTO d55_12_3bin_Cadastramento.
VARIABLE LABELS   d55_12_3bin_Cadastramento 'd55_12_3bin_Cadastramento - Terceiro principal serviço/atividade'.

VALUE LABELS  d55_12_3bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q55_12_3 (99=1) INTO d55_12_3bin_Outros.
VARIABLE LABELS   d55_12_3bin_Outros 'd55_12_3bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d55_12_3bin_Outros
1 'Outros'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /d55_6bin1_sum=SUM(d55_6bin1)
  /d55_6bin2_sum=SUM(d55_6bin2)
  /d55_6bin3_sum=SUM(d55_6bin3)
  /d55_7bin1_sum=SUM(d55_7bin1) 
  /d55_7bin2_sum=SUM(d55_7bin2) 
  /d55_7bin3_sum=SUM(d55_7bin3) 
  /d55_7bin4_sum=SUM(d55_7bin4) 
  /d55_7bin5_sum=SUM(d55_7bin5) 
  /d55_8bin1_sum=SUM(d55_8bin1) 
  /d55_8bin2_sum=SUM(d55_8bin2) 
  /d55_8bin3_sum=SUM(d55_8bin3) 
  /d55_8bin4_sum=SUM(d55_8bin4)
  /d55_12_1bin_Gestão_sum=SUM(d55_12_1bin_Gestão)
  /d55_12_1bin_PAIF_sum=SUM(d55_12_1bin_PAIF)
  /d55_12_1bin_SCFV_sum=SUM(d55_12_1bin_SCFV)
		/d55_12_1bin_Cadastramento_sum=SUM(d55_12_1bin_Cadastramento)
  /d55_12_1bin_Outros_sum=SUM(d55_12_1bin_Outros)
  /d55_12_2bin_Gestão_sum=SUM(d55_12_2bin_Gestão)
  /d55_12_2bin_PAIF_sum=SUM(d55_12_2bin_PAIF)
  /d55_12_2bin_SCFV_sum=SUM(d55_12_2bin_SCFV)
		/d55_12_2bin_Cadastramento_sum=SUM(d55_12_2bin_Cadastramento)
  /d55_12_2bin_Outros_sum=SUM(d55_12_2bin_Outros)
  /d55_12_3bin_Gestão_sum=SUM(d55_12_3bin_Gestão)
  /d55_12_3bin_PAIF_sum=SUM(d55_12_3bin_PAIF)
  /d55_12_3bin_SCFV_sum=SUM(d55_12_3bin_SCFV)
		/d55_12_3bin_Cadastramento_sum=SUM(d55_12_3bin_Cadastramento)
  /d55_12_3bin_Outros_sum=SUM(d55_12_3bin_Outros)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d55_6bin1_sum 'd55_6bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
/d55_6bin2_sum'd55_6bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
/d55_6bin3_sum'd55_6bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
/d55_7bin1_sum'd55_7bin1_sum_Número de Pedagogos'
/d55_7bin2_sum'd55_7bin2_sum_Número de Assistentes Sociais'
/d55_7bin3_sum'd55_7bin3_sum_Número de Antropólogos'
/d55_7bin4_sum'd55_7bin4_sum_Número de Advogados'
/d55_7bin5_sum'd55_7bin5_sum_Número de Psicólogos'
/d55_8bin1_sum'd55_8bin1_sum_Número de Servidores Estatutários'
/d55_8bin2_sum'd55_8bin2_sum_Número de Empregados Públicos(CLT)'
/d55_8bin3_sum'd55_8bin3_sum_Número de Comissionados'
/d55_8bin4_sum'd55_8bin4_sum_Número de profissionais com outros vínculos não permanentes'
/d55_12_1bin_Gestão_sum'd55_12_1bin_Gestão - Principal serviço/atividade'
/d55_12_1bin_PAIF_sum'd55_12_1bin_PAIF - Principal serviço/atividade'
/d55_12_1bin_SCFV_sum'd55_12_1bin_SCFV - Principal serviço/atividade'
/d55_12_1bin_Cadastramento_sum'd55_12_1bin_Cadastramento- Principal serviço/atividade'
/d55_12_1bin_Outros_sum'd55_12_1bin_Outros - Principal serviço/atividade'
/d55_12_2bin_Gestão_sum'd55_12_2bin_Gestão - Segundo principal serviço/atividade'
/d55_12_2bin_PAIF_sum'd55_12_2bin_PAIF - Segundo principal serviço/atividade'
/d55_12_2bin_SCFV_sum'd55_12_2bin_SCFV - Segundo principal serviço/atividade'
/d55_12_2bin_Cadastramento_sum'd55_12_2bin_Cadastramento- Segundo serviço/atividade'
/d55_12_2bin_Outros_sum'd55_12_2bin_Outros - Principal serviço/atividade'
/d55_12_3bin_Gestão_sum'd55_12_3bin_Gestão - Terceiro principal serviço/atividade'
/d55_12_3bin_PAIF_sum'd55_12_3bin_PAIF - Terceiro principal serviço/atividade'
/d55_12_3bin_SCFV_sum'd55_12_3bin_SCFV - Terceiro principal serviço/atividade'
/d55_12_3bin_Cadastramento_sum'd55_12_3bin_Cadastramento - Terceiro principal serviço/atividade'
/d55_12_3bin_Outros_sum'd55_12_3bin_Outros - Principal serviço/atividade'
/nu_trabalhadores'Número de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d55_6bin1_sum d55_6bin2_sum d55_6bin3_sum d55_7bin1_sum d55_7bin2_sum d55_7bin3_sum 
d55_7bin4_sum d55_7bin5_sum d55_8bin1_sum d55_8bin2_sum d55_8bin3_sum d55_8bin4_sum d55_12_1bin_Gestão_sum
d55_12_1bin_PAIF_sum	d55_12_1bin_SCFV_sum	d55_12_1bin_Cadastramento_sum	d55_12_1bin_Outros_sum	d55_12_2bin_Gestão_sum	d55_12_2bin_PAIF_sum	
d55_12_2bin_SCFV_sum	d55_12_2bin_Cadastramento_sum	d55_12_2bin_Outros_sum	d55_12_3bin_Gestão_sum	d55_12_3bin_PAIF_sum	d55_12_3bin_SCFV_sum	
d55_12_3bin_Cadastramento_sum	d55_12_3bin_Outros_sum nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
d55_6bin1_sum 'd55_6bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d55_6bin2_sum'd55_6bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d55_6bin3_sum'd55_6bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d55_7bin1_sum'd55_7bin1_sum_Número de Pedagogos'
 d55_7bin2_sum'd55_7bin2_sum_Número de Assistentes Sociais'
 d55_7bin3_sum'd55_7bin3_sum_Número de Antropólogos'
 d55_7bin4_sum'd55_7bin4_sum_Número de Advogados'
 d55_7bin5_sum'd55_7bin5_sum_Número de Psicólogos'.
EXECUTE.

VARIABLE LABELS
 d55_8bin1_sum'd55_8bin1_Número de Servidores Estatutários'
 d55_8bin2_sum'd55_8bin2_Número de Empregados Públicos(CLT)'
 d55_8bin3_sum'd55_8bin3_Número de Comissionados'
 d55_8bin4_sum'd55_8bin4_Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Ser. Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d55_6bin1_sum
d55_6bin2_sum
d55_6bin3_sum
d55_7bin1_sum
d55_7bin2_sum
d55_7bin3_sum
d55_7bin4_sum
d55_7bin5_sum
d55_8bin1_sum
d55_8bin2_sum
d55_8bin3_sum
d55_8bin4_sum
d55_12_1bin_Gestão_sum
d55_12_1bin_PAIF_sum
d55_12_1bin_SCFV_sum
d55_12_1bin_Cadastramento_sum
d55_12_1bin_Outros_sum
d55_12_2bin_Gestão_sum
d55_12_2bin_PAIF_sum
d55_12_2bin_SCFV_sum
d55_12_2bin_Cadastramento_sum
d55_12_2bin_Outros_sum
d55_12_3bin_Gestão_sum
d55_12_3bin_PAIF_sum
d55_12_3bin_SCFV_sum
d55_12_3bin_Cadastramento_sum
d55_12_3bin_Outros_sum
(F8.0).

SORT CASES BY NU_IDENTIFICADOR(A).


******* MESCLAR AS VARIÁVEIS DA BASE AGGR À BASE DADOS GERAIS



