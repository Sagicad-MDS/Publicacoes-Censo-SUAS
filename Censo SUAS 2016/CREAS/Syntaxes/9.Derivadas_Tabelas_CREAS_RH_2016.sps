* Encoding: UTF-8.
****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os seguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Será criada a variável com número procurado. Em seguida rodar a sintax abaixo**


COMPUTE num_data=DATE.DMY(31,12,2017).

*COMPUTE  D47_2=DATEDIFF(13670899200, q49.2,"years").
*format D47_2.
*EXECUTE.

* Date and Time Wizard: q49.2data.

COMPUTE q49.2data=number(q49.2, DATE10).
VARIABLE LABELS q49.2data "q49.2_Data de nascimento -formato data".
VARIABLE LEVEL  q49.2data (SCALE).

FORMATS q49.2data (DATE11).
VARIABLE WIDTH  q49.2data(11).
EXECUTE.

COMPUTE  D47_2=DATEDIFF(13670899200, q49.2data,"years").
format D47_2 (F2.0).
EXECUTE.

VARIABLE LABELS D47_2 'Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

***********************************************************************************************************

RECODE D47_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D47_2_categoria.
VARIABLE LABELS  D47_2_categoria  'Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D47_2_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

RECODE q49.7 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D47_8.
VARIABLE LABELS D47_8 'Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D47_8
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE q49.9 (292=3) (139=2) (138=1) (else=4) INTO D47_10.
VARIABLE LABELS   D47_10 'D47_10_Tipo de vínculo'.

VALUE LABELS D47_10
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE D47_8 (0=1) INTO D47_8bin1.
VARIABLE LABELS  D47_8bin1 'D47_8bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D47_8bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D47_8 (1=1) INTO D47_8bin2.
VARIABLE LABELS  D47_8bin2 'D47_8bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D47_8bin2
1 'Nível Médio'.
EXECUTE.

RECODE D47_8 (2=1) INTO D47_8bin3.
VARIABLE LABELS  D47_8bin3 'D47_8bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D47_8bin3
1 'Nível Superior'.
EXECUTE.


****variáveis binárias profissão****

RECODE q49.8 (275=1) INTO D47_9bin1.
VARIABLE LABELS  D47_9bin1 'D47_9bin1_Pedagogo'.
EXECUTE.

VALUE LABELS D47_9bin1
1 'Pedagogo'.
EXECUTE.

RECODE q49.8  (273=1) INTO D47_9bin2.
VARIABLE LABELS  D47_9bin2 'D47_9bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  D47_9bin2
1 'Assistente Social'.
EXECUTE.

RECODE q49.8  (234=1) INTO D47_9bin3.
VARIABLE LABELS  D47_9bin3 'D47_9bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  D47_9bin3
1 'Antropólogo'.
EXECUTE.

RECODE q49.8  (232=1) INTO D47_9bin4.
VARIABLE LABELS  D47_9bin4 'D47_9bin4_Advogado'.
EXECUTE.

VALUE LABELS  D47_9bin4
1 'Advogado'.
EXECUTE.

RECODE q49.8 (274=1) INTO D47_9bin5.
VARIABLE LABELS  D47_9bin5 'D47_9bin5_Psicologo'.
EXECUTE.

VALUE LABELS  D47_9bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  D47_10 (1=1) INTO D47_10bin1.
VARIABLE LABELS   D47_10bin1 'D47_10bin1_Servidor Estatutário'.

VALUE LABELS  D47_10bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE D47_10  (2=1) INTO D47_10bin2.
VARIABLE LABELS  D47_10bin2 ' D47_10bin2_Empregado Público (CLT)'.

VALUE LABELS  D47_10bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE D47_10 (3=1) INTO D47_10bin3.
VARIABLE LABELS D47_10bin3 'D47_10bin3_Comissionado'.

VALUE LABELS  D47_10bin3
1 'Comissionado'.
EXECUTE.

RECODE D47_10 (4=1) INTO D47_10bin4.
VARIABLE LABELS D47_10bin4 'D47_10bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  D47_10bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_identificador
  /D47_8bin1_sum=SUM(D47_8bin1)
  /D47_8bin2_sum=SUM(D47_8bin2)
  /D47_8bin3_sum=SUM(D47_8bin3)
  /D47_9bin1_sum=SUM(D47_9bin1) 
  /D47_9bin2_sum=SUM(D47_9bin2) 
  /D47_9bin3_sum=SUM(D47_9bin3) 
  /D47_9bin4_sum=SUM(D47_9bin4) 
  /D47_9bin5_sum=SUM(D47_9bin5) 
  /D47_10bin1_sum=SUM(D47_10bin1) 
  /D47_10bin2_sum=SUM(D47_10bin2) 
  /D47_10bin3_sum=SUM(D47_10bin3) 
  /D47_10bin4_sum=SUM(D47_10bin4)
  /nu_trabalhadores=N
.
EXECUTE.

VARIABLE LABELS
/D47_8bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 /D47_8bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 /D47_8bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 /D47_9bin1_sum'Número de Pedagogos'
 /D47_9bin2_sum'Número de Assistentes Sociais'
 /D47_9bin3_sum'Número de Antropólogos'
 /D47_9bin4_sum'Número de Advogados'
 /D47_9bin5_sum'Número de Psicólogos'
 /D47_10bin1_sum'Número de Servidores Estatutários'
 /D47_10bin2_sum'Número de Empregados Públicos(CLT)'
 /D47_10bin3_sum'Número de Comissionados'
 /D47_10bin4_sum'Número de profissionais com outros vínculos não permanentes'
 /nu_trabalhadores'Número de trabalhdores no CREAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum 
    D47_9bin4_sum D47_9bin5_sum D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D47_8bin1_sum 'D47_8bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D47_8bin2_sum'D47_8bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D47_8bin3_sum'D47_8bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D47_9bin1_sum'D47_9bin1_sum_Número de Pedagogos'
 D47_9bin2_sum'D47_9bin2_sum_Número de Assistentes Sociais'
 D47_9bin3_sum'D47_9bin3_sum_Número de Antropólogos'
 D47_9bin4_sum'D47_9bin4_sum_Número de Advogados'
 D47_9bin5_sum'D47_9bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 D47_10bin1_sum'D47_10bin1_Número de Servidores Estatutários'
 D47_10bin2_sum'D47_10bin2_Número de Empregados Públicos(CLT)'
 D47_10bin3_sum'D47_10bin3_Número de Comissionados'
 D47_10bin4_sum'Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Ser. Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.


** variáveis binárias - Serviços****

**** Principal serviço/atividade

RECODE q49.13.1 (1=1) INTO D47_14_1bin_Gestão.
VARIABLE LABELS   D47_14_1bin_Gestão 'D47_14_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS   D47_14_1bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q49.13.1  (2=1) INTO D47_14_1bin_PAEFI.
VARIABLE LABELS   D47_14_1bin_PAEFI 'D47_14_1bin_PAEFI - Principal serviço/atividade'.

VALUE LABELS D47_14_1bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q49.13.1 (3=1) INTO D47_14_1bin_MSE.
VARIABLE LABELS   D47_14_1bin_MSE 'D47_14_1bin_MSE - Principal serviço/atividade'.

VALUE LABELS D47_14_1bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE q49.13.1  (4=1) INTO D47_14_1bin_Abordagem.
VARIABLE LABELS   D47_14_1bin_Abordagem ' D47_14_1bin_Abordagem- Principal serviço/atividade'.

VALUE LABELS  D47_14_1bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE  q49.13.1  (5=1) INTO D47_14_1bin_Cadastramento.
VARIABLE LABELS  D47_14_1bin_Cadastramento 'D47_14_1bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  D47_14_1bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q49.13.1  (99=1) INTO D47_14_1bin_Outros.
VARIABLE LABELS  D47_14_1bin_Outros 'D47_14_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  D47_14_1bin_Outros
1 'Outros'.
EXECUTE.


**** Segundo principal serviço/atividade

RECODE q49.13.2 (1=1) INTO D47_14_2bin_Gestão.
VARIABLE LABELS   D47_14_2bin_Gestão 'D47_14_2bin_Gestão - Segundo principal serviço/atividade'.

VALUE LABELS D47_14_2bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE   q49.13.2  (2=1) INTO D47_14_2bin_PAEFI.
VARIABLE LABELS  D47_14_2bin_PAEFI 'D47_14_2bin_PAEFI - Segundo principal serviço/atividade'.

VALUE LABELS  D47_14_2bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE  q49.13.2   (3=1) INTO D47_14_2bin_MSE.
VARIABLE LABELS   D47_14_2bin_MSE 'D47_14_2bin_MSE - Segundo principal serviço/atividade'.

VALUE LABELS D47_14_2bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE q49.13.2   (4=1) INTO  D47_14_2bin_Abordagem.
VARIABLE LABELS  D47_14_2bin_Abordagem ' D47_14_2bin_Abordagem - Segundo principal serviço/atividade'.

VALUE LABELS  D47_14_2bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE  q49.13.2  (5=1) INTO D47_14_2bin_Cadastramento.
VARIABLE LABELS  D47_14_2bin_Cadastramento 'D47_14_2bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  D47_14_2bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q49.13.2  (99=1) INTO D47_14_2bin_Outros.
VARIABLE LABELS  D47_14_2bin_Outros 'D47_14_2bin_Outros - Principal serviço/atividade'.

VALUE LABELS  D47_14_2bin_Outros
1 'Outros'.
EXECUTE.



***** Terceiro principal serviço/atividade

RECODE q49.13.3 (1=1) INTO D47_14_3bin_Gestão.
VARIABLE LABELS   D47_14_3bin_Gestão 'D47_14_3bin_Gestão - Terceiro principal serviço/atividade'.

VALUE LABELS D47_14_3bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q49.13.3  (2=1) INTO D47_14_3bin_PAEFI.
VARIABLE LABELS  D47_14_3bin_PAEFI 'D47_14_3bin_PAEFI - Terceiro principal serviço/atividade'.

VALUE LABELS  D47_14_3bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE  q49.13.3 (3=1) INTO D47_14_3bin_MSE.
VARIABLE LABELS   D47_14_3bin_MSE 'D47_14_3bin_MSE - Terceiro principal serviço/atividade'.

VALUE LABELS D47_14_3bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE q49.13.3  (4=1) INTO  D47_14_3bin_Abordagem.
VARIABLE LABELS  D47_14_3bin_Abordagem ' D47_14_3bin_Abordagem - Terceiro principal serviço/atividade'.

VALUE LABELS  D47_14_3bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE  q49.13.3  (5=1) INTO D47_14_3bin_Cadastramento.
VARIABLE LABELS  D47_14_3bin_Cadastramento 'D47_14_3bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  D47_14_3bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q49.13.3  (99=1) INTO D47_14_3bin_Outros.
VARIABLE LABELS  D47_14_3bin_Outros 'D47_14_3bin_Outros - Principal serviço/atividade'.

VALUE LABELS  D47_14_3bin_Outros
1 'Outros'.
EXECUTE.


**** Variável Gestão, PAEFI, MSE e Abordagem - mencionada, no minimo, 1 vez na questao resposta multipla q47_14 *****

IF  (q49.13.1 = 1 | q49.13.2 =1 | q49.13.3=1) Gestao=1.
EXECUTE.


IF  (q49.13.1 = 2 | q49.13.2 =2 | q49.13.3=2) PAEFI=1.
EXECUTE .


IF  (q49.13.1 = 3 | q49.13.2 =3 | q49.13.3=3) MSE=1.
EXECUTE .


IF  ( q49.13.1 = 4 | q49.13.2 =4 | q49.13.3=4) Abordagem=1.
EXECUTE .


IF  (q49.13.1 = 5 | q49.13.2=5 | q49.13.3=5) Cadastramento=1.
EXECUTE.

IF  (q49.13.1 = 99 | q49.13.2=99 | q49.13.3=99) Outros=1.
EXECUTE.

Variable labels 
Gestao 'Atividades de Gestão - mencionada, no minimo, 1 vez'
PAEFI 'PAEFI - mencionado, no mínimo, 1 vez'
MSE 'MSE - mencionado, no mínimo, 1 vez'
Abordagem 'Abordagem social - mencionada, no mínimo, 1 vez'
Cadastramento 'Cadastramento e/ou atualização cadastral (CadÚnico)'
Outros 'Outras atividades - mencionadas, no mínimo, 1 vez'.



********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


DATASET DECLARE aggregate.
AGGREGATE
  /OUTFILE='aggregate'
  /BREAK=NU_IDENTIFICADOR
  /D47_14_1bin_Gestão_sum=SUM(D47_14_1bin_Gestão)
  /D47_14_1bin_PAEFI_sum=SUM(D47_14_1bin_PAEFI)
  /D47_14_1bin_MSE_sum=SUM(D47_14_1bin_MSE)
  /D47_14_1bin_Abordagem_sum=SUM(D47_14_1bin_Abordagem) 
  /D47_14_1bin_Cadastramento_sum=SUM(D47_14_1bin_Cadastramento)
  /D47_14_1bin_Outros_sum=SUM(D47_14_1bin_Outros)
  /D47_14_2bin_Gestão_sum=SUM(D47_14_2bin_Gestão)
  /D47_14_2bin_PAEFI_sum=SUM(D47_14_2bin_PAEFI)
  /D47_14_2bin_MSE_sum=SUM(D47_14_2bin_MSE)
  /D47_14_2bin_Abordagem_sum=SUM(D47_14_2bin_Abordagem)
  /D47_14_2bin_Cadastramento_sum=SUM(D47_14_2bin_Cadastramento)
  /D47_14_2bin_Outros_sum=SUM(D47_14_2bin_Outros)
  /D47_14_3bin_Gestão_sum=SUM(D47_14_3bin_Gestão)
  /D47_14_3bin_PAEFI_sum=SUM(D47_14_3bin_PAEFI)
  /D47_14_3bin_MSE_sum=SUM(D47_14_3bin_MSE)
  /D47_14_3bin_Abordagem_sum=SUM(D47_14_3bin_Abordagem)
  /D47_14_3bin_Cadastramento_sum=SUM(D47_14_3bin_Cadastramento)
  /D47_14_3bin_Outros_sum=SUM(D47_14_3bin_Outros)
  /nu_trabalhadores=N.
EXECUTE.

VARIABLE LABELS
  D47_14_1bin_Gestão_sum 'D47_14_1bin_Gestão - Principal serviço/atividade'
  D47_14_1bin_PAEFI_sum 'D47_14_1bin_PAEFI - Principal serviço/atividade'
  D47_14_1bin_MSE_sum 'D47_14_1bin_MSE - Principal serviço/atividade'
  D47_14_1bin_Abordagem_sum 'D47_14_1bin_Abordagem - Principal serviço/atividade'
  D47_14_1bin_Cadastramento_sum 'D47_14_1bin_Cadastramento - Principal serviço/atividade'
  D47_14_1bin_Outros_sum 'D47_14_1bin_Outros - Principal serviço/atividade'
  D47_14_2bin_Gestão_sum 'D47_14_2bin_Gestão - Segundo principal serviço/atividade'
  D47_14_2bin_PAEFI_sum 'D47_14_2bin_PAEFI - Segundo principal serviço/atividade'
  D47_14_2bin_MSE_sum 'D47_14_2bin_MSE - Segundo principal serviço/atividade'
  D47_14_2bin_Abordagem_sum 'D47_14_2bin_Abordagem- Segundo serviço/atividade'
  D47_14_2bin_Cadastramento_sum 'D47_14_2bin_Cadastramento - Principal serviço/atividade'
  D47_14_2bin_Outros_sum 'D47_14_2bin_Outros - Principal serviço/atividade'
  D47_14_3bin_Gestão_sum 'D47_14_3bin_Gestão - Terceiro principal serviço/atividade'
  D47_14_3bin_PAEFI_sum 'D47_14_3bin_PAEFI - Terceiro principal serviço/atividade'
  D47_14_3bin_MSE_sum 'D47_14_3bin_MSE - Terceiro principal serviço/atividade'
  D47_14_3bin_Abordagem_sum 'D47_14_3bin_Abordagem - Terceiro principal serviço/atividade'
  D47_14_3bin_Cadastramento_sum 'D47_14_3bin_Cadastramento - Principal serviço/atividade'
  D47_14_3bin_Outros_sum 'D47_14_3bin_Outros - Principal serviço/atividade'.
EXECUTE.


*****TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=q47_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q47_10 q47_11 q47_12
  /ORDER=ANALYSIS.


***BASE DO RH - ver arquivo 04_Derivadas_Tabelas_CREAS_RH****** 

**** VARIÁVEIS DERIVADAS****


FREQUENCIES VARIABLES=D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum D47_9bin4_sum D47_9bin5_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= nu_trabalhadores
  /ORDER=ANALYSIS.

MEANS TABLES=D47_8bin1_sum D47_8bin2_sum D47_8bin3_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D47_9bin1_sum D47_9bin2_sum D47_9bin3_sum D47_9bin4_sum D47_9bin5_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D47_10bin1_sum D47_10bin2_sum D47_10bin3_sum D47_10bin4_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.
 
MEANS TABLES=nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.







