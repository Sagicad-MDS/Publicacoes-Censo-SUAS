
*************************************************************************************

CREAS 2018 - BASE DE RH

*************************************************************************************
**SYNTAX PARA LIMPEZA DE INCONSISTÊNCIAS E CRIAÇÃO DE VARIAVEIS DERIVADAS NA BASE DE RH DO CREAS 2018



* Encoding: UTF-8.
****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13575691200). Para descobrir esse número seguir os seguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Será criada a variável com número procurado. Em seguida rodar a sintax abaixo**


COMPUTE num_data=DATE.DMY(31,12,2018).

COMPUTE  D56_2= DATEDIFF (13765593600,q56_2,"years").
FORMATS D56_2 (SCALE).
EXECUTE.

****CORREÇÃO DE DATAS****************.

* Date and Time Wizard: q56_2data.

COMPUTE q56_2data =number(q56_2, DATE10).
VARIABLE LABELS q56_2data "q56_2_Data de nascimento -formato data".
VARIABLE LEVEL  q56_2data (SCALE).

FORMATS q56_2data (DATE11).
VARIABLE WIDTH  q56_2data(11).
EXECUTE.

COMPUTE  D56_2=DATEDIFF(13765593600, q56_2data,"years").
format D56_2 (F2.0).
EXECUTE.

VARIABLE LABELS D56_2 'Idade em anos (data ref. 31-12-2018)'.
EXECUTE.

***********************************************************************************************************

RECODE D56_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) (100 thru 100000=5) (MISSING=5) INTO D56_2_categoria.
VARIABLE LABELS  D56_2_categoria  'Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D56_2_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'
5 'Valores inconsistentes'.
execute.



RECODE q56_6 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D56_6.
VARIABLE LABELS D56_6 'Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D56_6
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE q56_8 (292=3) (139=2) (138=1) (else=4) INTO D56_8.
VARIABLE LABELS   D56_8 'D56_8_Tipo de vínculo'.

VALUE LABELS D56_8
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.



****variáveis binárias escolaridade***

RECODE D56_6 (0=1) INTO D56_6bin1.
VARIABLE LABELS  D56_6bin1 'D56_6bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D56_6bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D56_6 (1=1) INTO D56_6bin2.
VARIABLE LABELS  D56_6bin2 'D56_6bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D56_6bin2
1 'Nível Médio'.
EXECUTE.

RECODE D56_6 (2=1) INTO D56_6bin3.
VARIABLE LABELS  D56_6bin3 'D56_6bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D56_6bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q56_7 (275=1) INTO D56_7bin1.
VARIABLE LABELS  D56_7bin1 'D56_7bin1_Pedagogo'.
EXECUTE.

VALUE LABELS D56_7bin1
1 'Pedagogo'.
EXECUTE.

RECODE q56_7  (273=1) INTO D56_7bin2.
VARIABLE LABELS  D56_7bin2 'D56_7bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  D56_7bin2
1 'Assistente Social'.
EXECUTE.

RECODE q56_7  (234=1) INTO D56_7bin3.
VARIABLE LABELS  D56_7bin3 'D56_7bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  D56_7bin3
1 'Antropólogo'.
EXECUTE.

RECODE q56_7  (232=1) INTO D56_7bin4.
VARIABLE LABELS  D56_7bin4 'D56_7bin4_Advogado'.
EXECUTE.

VALUE LABELS  D56_7bin4
1 'Advogado'.
EXECUTE.

RECODE q56_7 (274=1) INTO D56_7bin5.
VARIABLE LABELS  D56_7bin5 'D56_7bin5_Psicologo'.
EXECUTE.

VALUE LABELS  D56_7bin5
1 'Psicólogo'.
EXECUTE.





**** variáveis binárias - tipo de vínculo****

RECODE  D56_8(1=1) INTO D56_8bin1.
VARIABLE LABELS   D56_8bin1 'D56_8bin1_Servidor Estatutário'.

VALUE LABELS  D56_8bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE D56_8 (2=1) INTO D56_8bin2.
VARIABLE LABELS  D56_8bin2 ' D56_8bin2_Empregado Público (CLT)'.

VALUE LABELS  D56_8bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE D56_8(3=1) INTO D56_8bin3.
VARIABLE LABELS D56_8bin3 'D56_8bin3_Comissionado'.

VALUE LABELS  D56_8bin3
1 'Comissionado'.
EXECUTE.

RECODE D56_8(4=1) INTO D56_8bin4.
VARIABLE LABELS D56_8bin4 'D56_8bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  D56_8bin4
1 'Outros vínculos não permanentes'.
EXECUTE.







** variáveis binárias - Serviços****





**** Principal serviço/atividade

RECODE q56_12_1 (1=1) INTO D56_12_1bin_Gestão.
VARIABLE LABELS   D56_12_1bin_Gestão 'D56_12_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS   D56_12_1bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q56_12_1  (2=1) INTO D56_12_1bin_PAEFI.
VARIABLE LABELS   D56_12_1bin_PAEFI 'D56_12_1bin_PAEFI - Principal serviço/atividade'.

VALUE LABELS D56_12_1bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE   q56_12_1 (3=1) INTO D56_12_1bin_MSE.
VARIABLE LABELS   D56_12_1bin_MSE 'D56_12_1bin_MSE - Principal serviço/atividade'.

VALUE LABELS D56_12_1bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE q56_12_1  (4=1) INTO D56_12_1bin_Abordagem.
VARIABLE LABELS   D56_12_1bin_Abordagem ' D56_12_1bin_Abordagem- Principal serviço/atividade'.

VALUE LABELS  D56_12_1bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE  q56_12_1  (5=1) INTO D56_12_1bin_Cadastramento.
VARIABLE LABELS  D56_12_1bin_Cadastramento 'D56_12_1bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  D56_12_1bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q56_12_1  (99=1) INTO D56_12_1bin_Outros.
VARIABLE LABELS  D56_12_1bin_Outros 'D56_12_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  D56_12_1bin_Outros
1 'Outros'.
EXECUTE.

**** Segundo principal serviço/atividade

RECODE q56_12_2 (1=1) INTO D56_12_2bin_Gestão.
VARIABLE LABELS   D56_12_2bin_Gestão 'D56_12_2bin_Gestão - Segundo principal serviço/atividade'.

VALUE LABELS D56_12_2bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE   q56_12_2  (2=1) INTO D56_12_2bin_PAEFI.
VARIABLE LABELS  D56_12_2bin_PAEFI 'D56_12_2bin_PAEFI - Segundo principal serviço/atividade'.

VALUE LABELS  D56_12_2bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE  q56_12_2   (3=1) INTO D56_12_2bin_MSE.
VARIABLE LABELS   D56_12_2bin_MSE 'D56_12_2bin_MSE - Segundo principal serviço/atividade'.

VALUE LABELS D56_12_2bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE q56_12_2   (4=1) INTO  D56_12_2bin_Abordagem.
VARIABLE LABELS  D56_12_2bin_Abordagem ' D56_12_2bin_Abordagem - Segundo principal serviço/atividade'.

VALUE LABELS  D56_12_2bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE  q56_12_2  (5=1) INTO D56_12_2bin_Cadastramento.
VARIABLE LABELS  D56_12_2bin_Cadastramento 'D56_12_2bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  D56_12_2bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q56_12_2  (99=1) INTO D56_12_2bin_Outros.
VARIABLE LABELS  D56_12_2bin_Outros 'D56_12_2bin_Outros - Principal serviço/atividade'.

VALUE LABELS  D56_12_2bin_Outros
1 'Outros'.
EXECUTE.




***** Terceiro principal serviço/atividade

RECODE q56_12_3 (1=1) INTO D56_12_3bin_Gestão.
VARIABLE LABELS   D56_12_3bin_Gestão 'D56_12_3bin_Gestão - Terceiro principal serviço/atividade'.

VALUE LABELS D56_12_3bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q56_12_3  (2=1) INTO D56_12_3bin_PAEFI.
VARIABLE LABELS  D56_12_3bin_PAEFI 'D56_12_3bin_PAEFI - Terceiro principal serviço/atividade'.

VALUE LABELS  D56_12_3bin_PAEFI
1 'PAEFI'.
EXECUTE.

RECODE  q56_12_3 (3=1) INTO D56_12_3bin_MSE.
VARIABLE LABELS   D56_12_3bin_MSE 'D56_12_3bin_MSE - Terceiro principal serviço/atividade'.

VALUE LABELS D56_12_3bin_MSE
1 'Serviço de Medidas Socioeducativas'.
EXECUTE.

RECODE q56_12_3  (4=1) INTO  D56_12_3bin_Abordagem.
VARIABLE LABELS  D56_12_3bin_Abordagem ' D56_12_3bin_Abordagem - Terceiro principal serviço/atividade'.

VALUE LABELS  D56_12_3bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.

RECODE  q56_12_3  (5=1) INTO D56_12_3bin_Cadastramento.
VARIABLE LABELS  D56_12_3bin_Cadastramento 'D56_12_3bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  D56_12_3bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.

RECODE  q56_12_3  (99=1) INTO D56_12_3bin_Outros.
VARIABLE LABELS  D56_12_3bin_Outros 'D56_12_3bin_Outros - Principal serviço/atividade'.

VALUE LABELS  D56_12_3bin_Outros
1 'Outros'.
EXECUTE.

**** Variável Gestão, PAEFI, MSE e Abordagem - mencionada, no minimo, 1 vez na questao resposta multipla q47_14 *****

IF  (q56_12_1 = 1 | q56_12_2 =1 | q56_12_3=1) Gestao=1.
EXECUTE.


IF  (q56_12_1 = 2 | q56_12_2 =2 | q56_12_3=2) PAEFI=1.
EXECUTE .


IF  (q56_12_1 = 3 | q56_12_2 =3 | q56_12_3=3) MSE=1.
EXECUTE .


IF  ( q56_12_1 = 4 | q56_12_2 =4 | q56_12_3=4) Abordagem=1.
EXECUTE .


IF  (q56_12_1 = 5 | q56_12_2=5 | q56_12_3=5) Cadastramento=1.
EXECUTE.

IF  (q56_12_1 = 99 | q56_12_2=99 | q56_12_3=99) Outros=1.
EXECUTE.

Variable labels 
Gestao 'Atividades de Gestão - mencionada, no minimo, 1 vez'
PAEFI 'PAEFI - mencionado, no mínimo, 1 vez'
MSE 'MSE - mencionado, no mínimo, 1 vez'
Abordagem 'Abordagem social - mencionada, no mínimo, 1 vez'
Cadastramento 'Cadastramento e/ou atualização cadastral (CadÚnico)'
Outros 'Outras atividades - mencionadas, no mínimo, 1 vez'.




********************AGGREGATE VARIÁVEIS BINÁRIAS NA BASE RH**************************



********************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE*************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_identificador
  /D56_6bin1_sum=SUM(D56_6bin1)
  /D56_6bin2_sum=SUM(D56_6bin2)
  /D56_6bin3_sum=SUM(D56_6bin3)
  /D56_7bin1_sum=SUM(D56_7bin1) 
  /D56_7bin2_sum=SUM(D56_7bin2) 
  /D56_7bin3_sum=SUM(D56_7bin3) 
  /D56_7bin4_sum=SUM(D56_7bin4) 
  /D56_7bin5_sum=SUM(D56_7bin5) 
  /D56_8bin1_sum=SUM(D56_8bin1) 
  /D56_8bin2_sum=SUM(D56_8bin2) 
  /D56_8bin3_sum=SUM(D56_8bin3) 
  /D56_8bin4_sum=SUM(D56_8bin4)
  /D56_12_1bin_Gestão_sum=SUM(D56_12_1bin_Gestão)
  /D56_12_1bin_PAEFI_sum=SUM(D56_12_1bin_PAEFI)
  /D56_12_1bin_MSE_sum=SUM(D56_12_1bin_MSE)
  /D56_12_1bin_Abordagem_sum=SUM(D56_12_1bin_Abordagem) 
  /D56_12_1bin_Cadastramento_sum=SUM(D56_12_1bin_Cadastramento)
  /D56_12_1bin_Outros_sum=SUM(D56_12_1bin_Outros)
  /D56_12_2bin_Gestão_sum=SUM(D56_12_2bin_Gestão)
  /D56_12_2bin_PAEFI_sum=SUM(D56_12_2bin_PAEFI)
  /D56_12_2bin_MSE_sum=SUM(D56_12_2bin_MSE)
  /D56_12_2bin_Abordagem_sum=SUM(D56_12_2bin_Abordagem)
  /D56_12_2bin_Cadastramento_sum=SUM(D56_12_2bin_Cadastramento)
  /D56_12_2bin_Outros_sum=SUM(D56_12_2bin_Outros)
  /D56_12_3bin_Gestão_sum=SUM(D56_12_3bin_Gestão)
  /D56_12_3bin_PAEFI_sum=SUM(D56_12_3bin_PAEFI)
  /D56_12_3bin_MSE_sum=SUM(D56_12_3bin_MSE)
  /D56_12_3bin_Abordagem_sum=SUM(D56_12_3bin_Abordagem)
  /D56_12_3bin_Cadastramento_sum=SUM(D56_12_3bin_Cadastramento)
  /D56_12_3bin_Outros_sum=SUM(D56_12_3bin_Outros)
  /nu_trabalhadores=N.
EXECUTE.


VARIABLE LABELS
/D56_6bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
/D56_6bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
/D56_6bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
/D56_7bin1_sum'Número de Pedagogos'
/D56_7bin2_sum'Número de Assistentes Sociais'
/D56_7bin3_sum'Número de Antropólogos'
/D56_7bin4_sum'Número de Advogados'
/D56_7bin5_sum'Número de Psicólogos'
/D56_8bin1_sum'Número de Servidores Estatutários'
/D56_8bin2_sum'Número de Empregados Públicos(CLT)'
/D56_8bin3_sum'Número de Comissionados'
/D56_8bin4_sum'Número de profissionais com outros vínculos não permanentes'
/nu_trabalhadores'Número de trabalhdores no CREAS'
.
EXECUTE.


VARIABLE LABELS
  D56_12_1bin_Gestão_sum 'D56_12_1bin_Gestão - Principal serviço/atividade'
  D56_12_1bin_PAEFI_sum 'D56_12_1bin_PAEFI - Principal serviço/atividade'
  D56_12_1bin_MSE_sum 'D56_12_1bin_MSE - Principal serviço/atividade'
  D56_12_1bin_Abordagem_sum 'D56_12_1bin_Abordagem - Principal serviço/atividade'
  D56_12_1bin_Cadastramento_sum 'D56_12_1bin_Cadastramento - Principal serviço/atividade'
  D56_12_1bin_Outros_sum 'D56_12_1bin_Outros - Principal serviço/atividade'
  D56_12_2bin_Gestão_sum 'D56_12_2bin_Gestão - Segundo principal serviço/atividade'
  D56_12_2bin_PAEFI_sum 'D56_12_2bin_PAEFI - Segundo principal serviço/atividade'
  D56_12_2bin_MSE_sum 'D56_12_2bin_MSE - Segundo principal serviço/atividade'
  D56_12_2bin_Abordagem_sum 'D56_12_2bin_Abordagem- Segundo serviço/atividade'
  D56_12_2bin_Cadastramento_sum 'D56_12_2bin_Cadastramento - Principal serviço/atividade'
  D56_12_2bin_Outros_sum 'D56_12_2bin_Outros - Principal serviço/atividade'
  D56_12_3bin_Gestão_sum 'D56_12_3bin_Gestão - Terceiro principal serviço/atividade'
  D56_12_3bin_PAEFI_sum 'D56_12_3bin_PAEFI - Terceiro principal serviço/atividade'
  D56_12_3bin_MSE_sum 'D56_12_3bin_MSE - Terceiro principal serviço/atividade'
  D56_12_3bin_Abordagem_sum 'D56_12_3bin_Abordagem - Terceiro principal serviço/atividade'
  D56_12_3bin_Cadastramento_sum 'D56_12_3bin_Cadastramento - Principal serviço/atividade'
  D56_12_3bin_Outros_sum 'D56_12_3bin_Outros - Principal serviço/atividade'.
EXECUTE.





**** RECODE MISSING TO ZERO ****

RECODE D56_6bin1_sum D56_6bin2_sum D56_6bin3_sum D56_7bin1_sum D56_7bin2_sum D56_7bin3_sum 
    D56_7bin4_sum D56_7bin5_sum D56_8bin1_sum D56_8bin2_sum D56_8bin3_sum D56_8bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

RECODE
D56_12_1bin_Gestão_sum 
  D56_12_1bin_PAEFI_sum 
  D56_12_1bin_MSE_sum 
  D56_12_1bin_Abordagem_sum 
  D56_12_1bin_Cadastramento_sum 
  D56_12_1bin_Outros_sum 
  D56_12_2bin_Gestão_sum 
  D56_12_2bin_PAEFI_sum 
  D56_12_2bin_MSE_sum 
  D56_12_2bin_Abordagem_sum 
  D56_12_2bin_Cadastramento_sum 
  D56_12_2bin_Outros_sum 
  D56_12_3bin_Gestão_sum 
  D56_12_3bin_PAEFI_sum 
  D56_12_3bin_MSE_sum 
  D56_12_3bin_Abordagem_sum 
  D56_12_3bin_Cadastramento_sum 
  D56_12_3bin_Outros_sum 
(SYSMIS=0).
EXECUTE.


VARIABLE LABELS
 D56_6bin1_sum 'D56_6bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D56_6bin2_sum'D56_6bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D56_6bin3_sum'D56_6bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D56_7bin1_sum'D56_7bin1_sum_Número de Pedagogos'
 D56_7bin2_sum'D56_7bin2_sum_Número de Assistentes Sociais'
 D56_7bin3_sum'D56_7bin3_sum_Número de Antropólogos'
 D56_7bin4_sum'D56_7bin4_sum_Número de Advogados'
 D56_7bin5_sum'D56_7bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 D56_8bin1_sum'D56_8bin1_Número de Servidores Estatutários'
 D56_8bin2_sum'D56_8bin2_Número de Empregados Públicos(CLT)'
 D56_8bin3_sum'D56_8bin3_Número de Comissionados'
 D56_8bin4_sum'Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Ser. Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.




*****TABELAS PARA SEREM RODADAS NA BASE DO RH******

FREQUENCIES VARIABLES=q56_3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_7
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_8
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_11
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_12_1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_12_2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q56_12_3
  /ORDER=ANALYSIS.




***BASE DO RH - ver arquivo 04_Derivadas_Tabelas_CREAS_RH****** 

**** VARIÁVEIS DERIVADAS****


FREQUENCIES VARIABLES=D56_8bin1_sum D56_8bin2_sum D56_8bin3_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D56_9bin1_sum D56_9bin2_sum D56_9bin3_sum D56_9bin4_sum D56_9bin5_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= D56_10bin1_sum D56_10bin2_sum D56_10bin3_sum D56_10bin4_sum 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= nu_trabalhadores
  /ORDER=ANALYSIS.

MEANS TABLES=D56_8bin1_sum D56_8bin2_sum D56_8bin3_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D56_9bin1_sum D56_9bin2_sum D56_9bin3_sum D56_9bin4_sum D56_9bin5_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.

MEANS TABLES=D56_10bin1_sum D56_10bin2_sum D56_10bin3_sum D56_10bin4_sum nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.
 
MEANS TABLES=nu_trabalhadores BY Região Porte_pop2010
  /CELLS SUM.









