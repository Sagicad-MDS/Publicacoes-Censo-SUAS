
COMPUTE q47_14_1velha=q47_14_1.

compute  q47_14_2velha=q47_14_2.

compute q47_14_3velha=q47_14_3.

RECODE q47_14_1 q47_14_2 q47_14_3 (SYSMIS=0) (99=5).
EXECUTE.

**** transformar as variáveis para string *****

STRING RH_serviços (A5).

compute RH_serviços=concat(q47_14_1, q47_14_2,  q47_14_3).

STRING RH_serviços_NOVA (A5).

IF RH_serviços='000'   RH_serviços_NOVA='0'.
IF RH_serviços='100'   RH_serviços_NOVA='1'.
IF RH_serviços='101'   RH_serviços_NOVA='1'.
IF RH_serviços='105'   RH_serviços_NOVA='15'.
IF RH_serviços='110'   RH_serviços_NOVA='1'.
IF RH_serviços='111'   RH_serviços_NOVA='1'.
IF RH_serviços='112'   RH_serviços_NOVA='12'.
IF RH_serviços='113'   RH_serviços_NOVA='13'.
IF RH_serviços='114'   RH_serviços_NOVA='14'.
IF RH_serviços='115'   RH_serviços_NOVA='15'.
IF RH_serviços='120'   RH_serviços_NOVA='12'.
IF RH_serviços='121'   RH_serviços_NOVA='12'.
IF RH_serviços='122'   RH_serviços_NOVA='12'.
IF RH_serviços='123'   RH_serviços_NOVA='123'.
IF RH_serviços='124'   RH_serviços_NOVA='124'.
IF RH_serviços='125'   RH_serviços_NOVA='125'.
IF RH_serviços='130'   RH_serviços_NOVA='13'.
IF RH_serviços='131'   RH_serviços_NOVA='13'.
IF RH_serviços='132'   RH_serviços_NOVA='132'.
IF RH_serviços='133'   RH_serviços_NOVA='13'.
IF RH_serviços='134'   RH_serviços_NOVA='134'.
IF RH_serviços='135'   RH_serviços_NOVA='135'.
IF RH_serviços='140'   RH_serviços_NOVA='14'.
IF RH_serviços='141'   RH_serviços_NOVA='14'.
IF RH_serviços='142'   RH_serviços_NOVA='142'.
IF RH_serviços='143'   RH_serviços_NOVA='143'.
IF RH_serviços='144'   RH_serviços_NOVA='14'.
IF RH_serviços='145'   RH_serviços_NOVA='145'.
IF RH_serviços='150'   RH_serviços_NOVA='15'.
IF RH_serviços='151'   RH_serviços_NOVA='15'.
IF RH_serviços='152'   RH_serviços_NOVA='152'.
IF RH_serviços='153'   RH_serviços_NOVA='153'.
IF RH_serviços='154'   RH_serviços_NOVA='154'.
IF RH_serviços='155'   RH_serviços_NOVA='15'.
IF RH_serviços='200'   RH_serviços_NOVA='2'.
IF RH_serviços='201'   RH_serviços_NOVA='21'.
IF RH_serviços='205'   RH_serviços_NOVA='25'.
IF RH_serviços='210'   RH_serviços_NOVA='21'.
IF RH_serviços='211'   RH_serviços_NOVA='21'.
IF RH_serviços='212'   RH_serviços_NOVA='21'.
IF RH_serviços='213'   RH_serviços_NOVA='213'.
IF RH_serviços='214'   RH_serviços_NOVA='214'.
IF RH_serviços='215'   RH_serviços_NOVA='21'.
IF RH_serviços='220'   RH_serviços_NOVA='2'.
IF RH_serviços='221'   RH_serviços_NOVA='21'.
IF RH_serviços='222'   RH_serviços_NOVA='2'.
IF RH_serviços='223'   RH_serviços_NOVA='23'.
IF RH_serviços='224'   RH_serviços_NOVA='24'.
IF RH_serviços='225'   RH_serviços_NOVA='25'.
IF RH_serviços='230'   RH_serviços_NOVA='23'.
IF RH_serviços='231'   RH_serviços_NOVA='231'.
IF RH_serviços='232'   RH_serviços_NOVA='232'.
IF RH_serviços='233'   RH_serviços_NOVA='23'.
IF RH_serviços='234'   RH_serviços_NOVA='234'.
IF RH_serviços='235'   RH_serviços_NOVA='235'.
IF RH_serviços='240'   RH_serviços_NOVA='24'.
IF RH_serviços='241'   RH_serviços_NOVA='241'.
IF RH_serviços='242'   RH_serviços_NOVA='24'.
IF RH_serviços='243'   RH_serviços_NOVA='243'.
IF RH_serviços='244'   RH_serviços_NOVA='24'.
IF RH_serviços='245'   RH_serviços_NOVA='245'.
IF RH_serviços='250'   RH_serviços_NOVA='25'.
IF RH_serviços='251'   RH_serviços_NOVA='251'.
IF RH_serviços='252'   RH_serviços_NOVA='25'.
IF RH_serviços='253'   RH_serviços_NOVA='253'.
IF RH_serviços='254'   RH_serviços_NOVA='254'.
IF RH_serviços='255'   RH_serviços_NOVA='25'.
IF RH_serviços='300'   RH_serviços_NOVA='3'.
IF RH_serviços='304'   RH_serviços_NOVA='34'.
IF RH_serviços='310'   RH_serviços_NOVA='31'.
IF RH_serviços='311'   RH_serviços_NOVA='31'.
IF RH_serviços='312'   RH_serviços_NOVA='312'.
IF RH_serviços='314'   RH_serviços_NOVA='314'.
IF RH_serviços='315'   RH_serviços_NOVA='315'.
IF RH_serviços='320'   RH_serviços_NOVA='32'.
IF RH_serviços='321'   RH_serviços_NOVA='321'.
IF RH_serviços='322'   RH_serviços_NOVA='32'.
IF RH_serviços='323'   RH_serviços_NOVA='32'.
IF RH_serviços='324'   RH_serviços_NOVA='324'.
IF RH_serviços='325'   RH_serviços_NOVA='325'.
IF RH_serviços='330'   RH_serviços_NOVA='3'.
IF RH_serviços='331'   RH_serviços_NOVA='31'.
IF RH_serviços='332'   RH_serviços_NOVA='32'.
IF RH_serviços='333'   RH_serviços_NOVA='3'.
IF RH_serviços='334'   RH_serviços_NOVA='34'.
IF RH_serviços='335'   RH_serviços_NOVA='35'.
IF RH_serviços='340'   RH_serviços_NOVA='34'.
IF RH_serviços='341'   RH_serviços_NOVA='341'.
IF RH_serviços='342'   RH_serviços_NOVA='342'.
IF RH_serviços='343'   RH_serviços_NOVA='34'.
IF RH_serviços='344'   RH_serviços_NOVA='34'.
IF RH_serviços='345'   RH_serviços_NOVA='345'.
IF RH_serviços='350'   RH_serviços_NOVA='35'.
IF RH_serviços='351'   RH_serviços_NOVA='351'.
IF RH_serviços='352'   RH_serviços_NOVA='352'.
IF RH_serviços='355'   RH_serviços_NOVA='35'.
IF RH_serviços='400'   RH_serviços_NOVA='4'.
IF RH_serviços='405'   RH_serviços_NOVA='45'.
IF RH_serviços='410'   RH_serviços_NOVA='41'.
IF RH_serviços='412'   RH_serviços_NOVA='412'.
IF RH_serviços='413'   RH_serviços_NOVA='413'.
IF RH_serviços='415'   RH_serviços_NOVA='415'.
IF RH_serviços='420'   RH_serviços_NOVA='42'.
IF RH_serviços='421'   RH_serviços_NOVA='421'.
IF RH_serviços='422'   RH_serviços_NOVA='42'.
IF RH_serviços='423'   RH_serviços_NOVA='423'.
IF RH_serviços='424'   RH_serviços_NOVA='42'.
IF RH_serviços='425'   RH_serviços_NOVA='425'.
IF RH_serviços='430'   RH_serviços_NOVA='43'.
IF RH_serviços='431'   RH_serviços_NOVA='431'.
IF RH_serviços='432'   RH_serviços_NOVA='432'.
IF RH_serviços='433'   RH_serviços_NOVA='43'.
IF RH_serviços='434'   RH_serviços_NOVA='43'.
IF RH_serviços='435'   RH_serviços_NOVA='435'.
IF RH_serviços='440'   RH_serviços_NOVA='4'.
IF RH_serviços='441'   RH_serviços_NOVA='41'.
IF RH_serviços='442'   RH_serviços_NOVA='42'.
IF RH_serviços='443'   RH_serviços_NOVA='43'.
IF RH_serviços='444'   RH_serviços_NOVA='4'.
IF RH_serviços='445'   RH_serviços_NOVA='45'.
IF RH_serviços='450'   RH_serviços_NOVA='45'.
IF RH_serviços='451'   RH_serviços_NOVA='451'.
IF RH_serviços='452'   RH_serviços_NOVA='452'.
IF RH_serviços='453'   RH_serviços_NOVA='453'.
IF RH_serviços='455'   RH_serviços_NOVA='45'.
IF RH_serviços='500'   RH_serviços_NOVA='5'.
IF RH_serviços='501'   RH_serviços_NOVA='51'.
IF RH_serviços='510'   RH_serviços_NOVA='51'.
IF RH_serviços='511'   RH_serviços_NOVA='51'.
IF RH_serviços='512'   RH_serviços_NOVA='512'.
IF RH_serviços='513'   RH_serviços_NOVA='513'.
IF RH_serviços='515'   RH_serviços_NOVA='515'.
IF RH_serviços='520'   RH_serviços_NOVA='52'.
IF RH_serviços='521'   RH_serviços_NOVA='521'.
IF RH_serviços='522'   RH_serviços_NOVA='52'.
IF RH_serviços='523'   RH_serviços_NOVA='523'.
IF RH_serviços='524'   RH_serviços_NOVA='524'.
IF RH_serviços='525'   RH_serviços_NOVA='52'.
IF RH_serviços='530'   RH_serviços_NOVA='53'.
IF RH_serviços='531'   RH_serviços_NOVA='531'.
IF RH_serviços='532'   RH_serviços_NOVA='532'.
IF RH_serviços='533'   RH_serviços_NOVA='53'.
IF RH_serviços='534'   RH_serviços_NOVA='534'.
IF RH_serviços='535'   RH_serviços_NOVA='53'.
IF RH_serviços='540'   RH_serviços_NOVA='54'.
IF RH_serviços='541'   RH_serviços_NOVA='541'.
IF RH_serviços='542'   RH_serviços_NOVA='542'.
IF RH_serviços='543'   RH_serviços_NOVA='543'.
IF RH_serviços='544'   RH_serviços_NOVA='54'.
IF RH_serviços='545'   RH_serviços_NOVA='54'.
IF RH_serviços='550'   RH_serviços_NOVA='5'.
IF RH_serviços='551'   RH_serviços_NOVA='51'.
IF RH_serviços='552'   RH_serviços_NOVA='52'.
IF RH_serviços='553'   RH_serviços_NOVA='53'.
IF RH_serviços='554'   RH_serviços_NOVA='54'.
IF RH_serviços='555'   RH_serviços_NOVA='5'.


*q47_14_1_final q47_14_2 q47_14_3


STRING q47_14_1_final (A1).
COMPUTE q47_14_1_final=CHAR.SUBSTR(RH_serviços_NOVA, 1,1).
EXECUTE.

*q47_14_3

STRING q47_14_2_final (A1).
COMPUTE q47_14_2_final=CHAR.SUBSTR(RH_serviços_NOVA, 2,1).
EXECUTE.


*q47_14_3

STRING q47_14_3_final (A1).
COMPUTE q47_14_3_final=CHAR.SUBSTR(RH_serviços_NOVA, 3,1).
EXECUTE.


**comando para alterar a variável de string para númerica

ALTER TYPE q47_14_1_final q47_14_2_final q47_14_3_final (F1).
EXECUTE.

**recodificar o numério zero em missing

RECODE q47_14_1_final (0=SYSMIS).
EXECUTE.

RECODE q47_14_2_final (0=SYSMIS).
EXECUTE.

RECODE q47_14_3_final (0=SYSMIS).
EXECUTE.


*** variáveis binárias - Serviços****

**** Principal serviço/atividade

RECODE q47_14_1_final (1=1) INTO D47_14_1bin_Gestão.
VARIABLE LABELS   D47_14_1bin_Gestão 'D47_14_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS   D47_14_1bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE   q47_14_1_final (2=1) INTO D47_14_1bin_PAEFI.
VARIABLE LABELS   D47_14_1bin_PAEFI 'D47_14_1bin_PAEFI - Principal serviço/atividade'.

VALUE LABELS D47_14_1bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_1_final (3=1) INTO D47_14_1bin_MSE.
VARIABLE LABELS   D47_14_1bin_MSE 'D47_14_1bin_MSE - Principal serviço/atividade'.

VALUE LABELS D47_14bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_1_final (4=1) INTO D47_14_1bin_Abordagem.
VARIABLE LABELS   D47_14_1bin_Abordagem ' D47_14_1bin_Abordagem- Principal serviço/atividade'.

VALUE LABELS  D47_14_1bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE   q47_14_1_final (5=1) INTO D47_14_1bin_Outros.
VARIABLE LABELS  D47_14_1bin_Outros 'D47_14_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  D47_14_1bin_Outros
1 'Outros'.
EXECUTE.



**** Segundo principal serviço/atividade

RECODE q47_14_2_final (1=1) INTO D47_14_2bin_Gestão.
VARIABLE LABELS   D47_14_2bin_Gestão 'D47_14_2bin_Gestão - Segundo principal serviço/atividade'.

VALUE LABELS D47_14_2bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE   q47_14_2_final (2=1) INTO D47_14_2bin_PAEFI.
VARIABLE LABELS  D47_14_2bin_PAEFI 'D47_14_2bin_PAEFI - Segundo principal serviço/atividade'.

VALUE LABELS  D47_14_2bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_2_final (3=1) INTO D47_14_2bin_MSE.
VARIABLE LABELS   D47_14_2bin_MSE 'D47_14_2bin_MSE - Segundo principal serviço/atividade'.

VALUE LABELS D47_14_2bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_2_final (4=1) INTO  D47_14_2bin_Abordagem.
VARIABLE LABELS  D47_14_2bin_Abordagem ' D47_14_2bin_Abordagem - Segundo principal serviço/atividade'.

VALUE LABELS  D47_14_2bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE   q47_14_2_final (5=1) INTO D47_14_2bin_Outros.
VARIABLE LABELS  D47_14_2bin_Outros 'D47_14_2bin_Outros - Segundo principal serviço/atividade'.

VALUE LABELS  D47_14_2bin_Outros
1 'Outros'.
EXECUTE.


***** Terceiro principal serviço/atividade

RECODE q47_14_3_final (1=1) INTO D47_14_3bin_Gestão.
VARIABLE LABELS   D47_14_3bin_Gestão 'D47_14_3bin_Gestão - Terceiro principal serviço/atividade'.

VALUE LABELS D47_14_3bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE   q47_14_3_final (2=1) INTO D47_14_3bin_PAEFI.
VARIABLE LABELS  D47_14_3bin_PAEFI 'D47_14_3bin_PAEFI - Terceiro principal serviço/atividade'.

VALUE LABELS  D47_14_3bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q47_14_3_final (3=1) INTO D47_14_3bin_MSE.
VARIABLE LABELS   D47_14_3bin_MSE 'D47_14_3bin_MSE - Terceiro principal serviço/atividade'.

VALUE LABELS D47_14_3bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE  q47_14_3_final (4=1) INTO  D47_14_3bin_Abordagem.
VARIABLE LABELS  D47_14_3bin_Abordagem ' D47_14_3bin_Abordagem - Terceiro principal serviço/atividade'.

VALUE LABELS  D47_14_3bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE   q47_14_3_final (5=1) INTO D47_14_3bin_Outros.
VARIABLE LABELS  D47_14_3bin_Outros 'D47_14_3bin_Outros - Terceiro principal serviço/atividade'.

VALUE LABELS  D47_14_3bin_Outros
1 'Outros'.
EXECUTE.

********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D47_14_1bin_Gestão_sum=SUM(D47_14_1bin_Gestão)
  /D47_14_1bin_PAEFI_sum=SUM(D47_14_1bin_PAEFI)
  /D47_14_1bin_MSE_sum=SUM(D47_14_1bin_MSE)
  /D47_14_1bin_Abordagem_sum=SUM(D47_14_1bin_Abordagem)
  /D47_14_1bin_Outros_sum=SUM(D47_14_1bin_Outros)
  /D47_14_2bin_Gestão_sum=SUM(D47_14_2bin_Gestão)
  /D47_14_2bin_PAEFI_sum=SUM(D47_14_2bin_PAEFI)
  /D47_14_2bin_MSE_sum=SUM(D47_14_2bin_MSE)
  /D47_14_2bin_Abordagem_sum=SUM(D47_14_2bin_Abordagem)
  /D47_14_2bin_Outros_sum=SUM(D47_14_2bin_Outros)
  /D47_14_3bin_Gestão_sum=SUM(D47_14_3bin_Gestão)
  /D47_14_3bin_PAEFI_sum=SUM(D47_14_3bin_PAEFI)
  /D47_14_3bin_MSE_sum=SUM(D47_14_3bin_MSE)
  /D47_14_3bin_Abordagem_sum=SUM(D47_14_3bin_Abordagem)
  /D47_14_3bin_Outros_sum=SUM(D47_14_3bin_Outros)
  /nu_trabalhadores=N.
EXECUTE.



VARIABLE LABELS
  D47_14_1bin_Gestão_sum 'D47_14_1bin_Gestão - Principal serviço/atividade'
  D47_14_1bin_PAEFI_sum 'D47_14_1bin_PAEFI - Principal serviço/atividade'
  D47_14_1bin_MSE_sum 'D47_14_1bin_MSE - Principal serviço/atividade'
  D47_14_1bin_Abordagem_sum 'D47_14_1bin_Abordagem - Principal serviço/atividade'
  D47_14_1bin_Outros_sum 'D47_14_2bin_Outros - Principal serviço/atividade'
  D47_14_2bin_Gestão_sum 'D47_14_2bin_Gestão - Segundo principal serviço/atividade'
  D47_14_2bin_PAEFI_sum 'D47_14_2bin_PAEFI - Segundo principal serviço/atividade'
  D47_14_2bin_MSE_sum 'D47_14_2bin_MSE - Segundo principal serviço/atividade'
  D47_14_2bin_Abordagem_sum 'D47_14_2bin_Abordagem- Segundo serviço/atividade'
  D47_14_2bin_Outros_sum 'D47_14_2bin_Outros - Principal serviço/atividade'
  D47_14_3bin_Gestão_sum 'D47_14_3bin_Gestão - Terceiro principal serviço/atividade'
  D47_14_3bin_PAEFI_sum 'D47_14_3bin_PAEFI - Terceiro principal serviço/atividade'
  D47_14_3bin_MSE_sum 'D47_14_3bin_MSE - Terceiro principal serviço/atividade'
  D47_14_3bin_Abordagem_sum 'D47_14_3bin_Abordagem - Terceiro principal serviço/atividade'
  D47_14_3bin_Outros_sum 'D47_14_3bin_Outros - Principal serviço/atividade'
  nu_trabalhadores'Número de trabalhdores no CRAS'.
EXECUTE.
