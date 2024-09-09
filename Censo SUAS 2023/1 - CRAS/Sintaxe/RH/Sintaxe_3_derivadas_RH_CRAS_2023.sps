* Encoding: UTF-8.

**Criação de Derivadas  RH CRAS - CENSO 2023**



****criar variavel data Censo

STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2023". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2023"'. 
EXECUTE.


***transformar variavel data string em date

* Date and Time Wizard: DataCenso_2023.
COMPUTE DataCenso_2023=number(DataCenso, EDATE10).
VARIABLE LABELS DataCenso_2023 "DataCenso recodificada".
VARIABLE LEVEL  DataCenso_2023 (SCALE).
FORMATS DataCenso_2023 (EDATE10).
VARIABLE WIDTH  DataCenso_2023(10).
EXECUTE.

******transfromar data nascimento string em date

COMPUTE q70_2_rec=number(q70_2, EDATE10).
VARIABLE LABELS q70_2_rec "q56_2_data nascimento recodificada".
VARIABLE LEVEL  q70_2_rec (SCALE).
FORMATS q70_2_rec (EDATE10).
VARIABLE WIDTH  q70_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2023, q70_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  
FREQUENCIES VARIABLES=Idade 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.



RECODE Idade (16 thru 17=1) (18 thru 29=2) (30 thru 40=3) (41 thru 50=4) (51 thru 60=5) (61 thru 100=6) INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores dos CRAS'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1 '16 a 17 anos'
2 '18 a 29 anos'
3 '30 a 40 anos'
4 '41 a 50 anos'
5 '51 a 60 anos' 
6 'Mais de 60 anos'
.

********************************************************************************
*****************************************************************************************



****variáveis binárias escolaridade***

RECODE q70_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d70_9.

VARIABLE LABELS d70_9 'd70_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d70_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE d70_9 (0=1) INTO d70_9bin1.

VARIABLE LABELS  d70_9bin1  'd70_9bin1_Nível fundamental - Trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d70_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d70_9  (1=1) INTO d70_9bin2.
VARIABLE LABELS d70_9bin2  'd70_9bin2_Nível médio - Trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS d70_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d70_9(2=1) INTO d70_9bin3.
VARIABLE LABELS  d70_9bin3  'd70_9bin3_Nível superior - inclui Trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d70_9bin3
1 'Nível Superior'.
EXECUTE.





****variáveis binárias profissão****

RECODE q70_10  (275=1) (273=2) (234=3) (232=4)(274=5) (238=6) (238=7)(else=8) INTO d70_10.
VARIABLE LABELS   d70_10  'd70_10_Profissão'.

VALUE LABELS d70_10
1 'Pedagogo'
2 'Assistente Social'
3 'Antropólogo'
4 'Advogado'
5 'Psicólogo'
6 'Profissional de nível médio'
7 'Sem formação profissional'
8 'Outro profissional de nivel superior'.
EXECUTE.




RECODE q70_10 (275=1) INTO d70_10bin1.
VARIABLE LABELS d70_10bin1  'd70_10bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d70_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q70_10  (273=1) INTO d70_10bin2.
VARIABLE LABELS  d70_10bin2  'd70_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d70_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q70_10  (234=1) INTO d70_10bin3.
VARIABLE LABELS  d70_10bin3  'd70_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d70_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q70_10  (232=1) INTO d70_10bin4.
VARIABLE LABELS  d70_10bin4   'd70_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d70_10bin4
1 'Advogado'.
EXECUTE.

RECODE q70_10 (274=1) INTO d70_10bin5.
VARIABLE LABELS  d70_10bin5  'd70_10bin5_Psicologo'.
EXECUTE.

VALUE LABELS  d70_10bin5
1 'Psicólogo'.
EXECUTE.



**** variáveis binárias - tipo de vínculo****


RECODE q70_11  (138=1) (139=2)(292=3) (else=4) INTO d70_11.
VARIABLE LABELS   d70_11 'd70_11_Tipo de vínculo'.

VALUE LABELS d70_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.




RECODE  d70_11  (1=1) INTO d70_11bin1.
VARIABLE LABELS   d70_11bin1  'd70_11bin1_Servidor Estatutário'.

VALUE LABELS d70_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d70_11   (2=1) INTO d70_11bin2.
VARIABLE LABELS  d70_11bin2  ' d70_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d70_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d70_11 (3=1) INTO d70_11bin3.
VARIABLE LABELS d70_11bin3    'd70_11bin3_Comissionado'.

VALUE LABELS  d70_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d70_11 (4=1) INTO d70_11bin4.
VARIABLE LABELS d70_11bin4   'd70_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d70_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.





*******************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE*************************


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d70_9bin1_sum=SUM(d70_9bin1) 
  /d70_9bin2_sum=SUM(d70_9bin2) 
  /d70_9bin3_sum=SUM(d70_9bin3) 
  /d70_10bin1_sum=SUM(d70_10bin1) 
  /d70_10bin2_sum=SUM(d70_10bin2) 
  /d70_10bin3_sum=SUM(d70_10bin3) 
  /d70_10bin4_sum=SUM(d70_10bin4) 
  /d70_10bin5_sum=SUM(d70_10bin5) 
  /d70_11bin1_sum=SUM(d70_11bin1) 
  /d70_11bin2_sum=SUM(d70_11bin2) 
  /d70_11bin3_sum=SUM(d70_11bin3) 
  /d70_11bin4_sum=SUM(d70_11bin4)
  /nu_trabalhador=N.

VARIABLE LABELS
d70_9bin1_sum  'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 d70_9bin2_sum 'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d70_9bin3_sum 'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 d70_10bin1_sum 'Número de Pedagogos'
 d70_10bin2_sum'Número de Assistentes Sociais'
 d70_10bin3_sum 'Número de Antropólogos'
 d70_10bin4_sum 'Número de Advogados'
 d70_10bin5_sum 'Número de Psicólogos'
 d70_11bin1_sum 'Número de Servidores Estatutários'
 d70_11bin2_sum 'Número de Empregados Públicos(CLT)'
 d70_11bin3_sum 'Número de Comissionados'
 d70_11bin4_sum'Número de profissionais com outros vínculos não permanentes'
 nu_trabalhador 'Número de trabalhadores no CRAS'
.
EXECUTE.



*** RECODE MISSING TO ZERO ****

RECODE d70_9bin1_sum  d70_9bin2_sum d70_9bin3_sum d70_10bin1_sum d70_10bin2_sum d70_10bin3_sum  d70_10bin4_sum  d70_10bin5_sum  d70_11bin1_sum  d70_11bin2_sum  d70_11bin3_sum   d70_11bin4_sum   nu_trabalhador (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 d70_9bin1_sum  'd70_9bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 d70_9bin2_sum 'd70_9bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 d70_9bin3_sum 'd70_9bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
d70_10bin1_sum 'd70_10bin1_Número de Pedagogos'
 d70_10bin2_sum 'd70_10bin2_Número de Assistentes Sociais'
d70_10bin3_sum 'd70_10bin3_Número de Antropólogos'
 d70_10bin4_sum 'd70_10bin4_Número de Advogados'
 d70_10bin5_sum 'd70_10bin5_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
d70_11bin1_sum 'd70_11bin1_Número de Servidores Estatutários'
d70_11bin2_sum 'd70_11bin2_Número de Empregados Públicos(CLT)'
 d70_11bin3_sum 'd70_11bin3_Número de Comissionados'
 d70_11bin4_sum  'd70_11bin4_Número de profissionais com outros vínculos não permanentes'.
EXECUTE.



** variáveis binárias - Serviços****

**** Principal serviço/atividade

RECODE q70_15 (1=1) INTO d70_15_1bin_Gestão.
VARIABLE LABELS  d70_15_1bin_Gestão  'd70_15_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS  d70_15_1bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q70_15  (2=1) INTO d70_15_1bin_PAIF.
VARIABLE LABELS   d70_15_1bin_PAIF  'd70_15_1bin_PAIF - Principal serviço/atividade'.

VALUE LABELS d70_15_1bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE   q70_15 (3=1) INTO d70_15_1bin_SCFV.
VARIABLE LABELS   d70_15_1bin_SCFV  'd70_15_1bin_SCFV - Principal serviço/atividade'.

VALUE LABELS d70_15_1bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculo'.
EXECUTE.

RECODE q70_15  (4=1) INTO d70_15_1bin_PSB.
VARIABLE LABELS   d70_15_1bin_PSB ' d70_15_1bin_PSB- Principal serviço/atividade'.

VALUE LABELS  d70_15_1bin_PSB
1 'Serviço de PSB no domicílio'.
EXECUTE.

RECODE  q70_15  (5=1) INTO d70_15_1bin_Cadastramento.
VARIABLE LABELS  d70_15_1bin_Cadastramento  'd70_15_1bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  d70_15_1bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.


RECODE  q70_15  (6=1) INTO d70_15_1bin_Beneficios.
VARIABLE LABELS d70_15_1bin_Beneficios   'd70_15_1bin_Beneficios - Principal serviço/atividade'.

VALUE LABELS  d70_15_1bin_Beneficios
1 'Concessão de Benefícios Eventuais'.
EXECUTE.

RECODE  q70_15  (7=1) INTO d70_15_1bin_PCF.
VARIABLE LABELS  d70_15_1bin_PCF   'd70_15_1bin_PCF - Principal serviço/atividade'.

VALUE LABELS  d70_15_1bin_PCF
1 'Programa Criança Feliz'.
EXECUTE.


RECODE  q70_15  (8=1) INTO d70_15_1bin_PBF.
VARIABLE LABELS  d70_15_1bin_PBF   'd70_15_1bin_PBF - Principal serviço/atividade'.

VALUE LABELS  d70_15_1bin_PBF
1 'Programa Bolsa Familia'.
EXECUTE.

RECODE  q70_15  (99=1) INTO d70_15_1bin_Outros.
VARIABLE LABELS  d70_15_1bin_Outros  'd70_15_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d70_15_1bin_Outros
1 'Outros'.
EXECUTE.

**** Segundo principal serviço/atividade

RECODE q70_16 (1=1) INTO d70_16_2bin_Gestão.
VARIABLE LABELS  d70_16_2bin_Gestão  'd70_16_2bin_Gestão - segundo serviço/atividade'.

VALUE LABELS  d70_16_2bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q70_16  (2=1) INTO d70_16_2bin_PAIF.
VARIABLE LABELS   d70_16_2bin_PAIF  'd70_16_2bin_PAIF - segundo serviço/atividade'.

VALUE LABELS d70_16_2bin_PAIF
1 'PAIF'.
EXECUTE.

RECODE   q70_16 (3=1) INTO d70_16_2bin_SCFV.
VARIABLE LABELS   d70_16_2bin_SCFV  'd70_16_2bin_SCFV - segundo serviço/atividade'.

VALUE LABELS d70_16_2bin_SCFV
1 'Serviço de Convivência e Fortalecimento de Vínculo'.
EXECUTE.

RECODE q70_16  (4=1) INTO d70_16_2bin_PSB.
VARIABLE LABELS   d70_16_2bin_PSB ' d70_16_2bin_PSB- segundo serviço/atividade'.

VALUE LABELS  d70_16_2bin_PSB
1 'Serviço de PSB no domicílio'.
EXECUTE.

RECODE  q70_16  (5=1) INTO d70_16_2bin_Cadastramento.
VARIABLE LABELS  d70_16_2bin_Cadastramento  'd70_16_2bin_Cadastramento - segundo serviço/atividade'.

VALUE LABELS  d70_16_2bin_Cadastramento
1 'Cadastramento e/ou Atualização Cadastral (CadÚnico)'.
EXECUTE.


RECODE  q70_16  (6=1) INTO d70_16_2bin_Beneficios.
VARIABLE LABELS d70_16_2bin_Beneficios   'd70_16_2bin_Beneficios - segundo serviço/atividade'.

VALUE LABELS  d70_16_2bin_Beneficios
1 'Concessão de Benefícios Eventuais'.
EXECUTE.

RECODE  q70_16  (7=1) INTO d70_16_2bin_PCF.
VARIABLE LABELS  d70_16_2bin_PCF   'd70_16_2bin_PCF - segundo serviço/atividade'.

VALUE LABELS  d70_16_2bin_PCF
1 'Programa Criança Feliz'.
EXECUTE.


RECODE  q70_16  (8=1) INTO d70_16_2bin_PBF.
VARIABLE LABELS  d70_16_2bin_PBF   'd70_16_2bin_PBF - segundo serviço/atividade'.

VALUE LABELS  d70_16_2bin_PBF
1 'Programa Bolsa Familia'.
EXECUTE.

RECODE  q70_16  (99=1) INTO d70_16_2bin_Outros.
VARIABLE LABELS  d70_16_2bin_Outros  'd70_16_2bin_Outros - segundo serviço/atividade'.

VALUE LABELS  d70_16_2bin_Outros
1 'Outros'.
EXECUTE.





**** Variável Gestão, PAEFI, MSE e Abordagem - mencionada, no minimo, 1 vez na questao resposta multipla q70_14 *****

IF  (q70_15= 1 | q70_16 =1 ) Gestao=1.
EXECUTE.


IF  (q70_15 = 2 | q70_16 =2) PAIF=1.
EXECUTE .


IF  (q70_15 = 3 | q70_16 =3 ) SCFV=1.
EXECUTE .


IF  ( q70_15 = 4 | q70_16 =4) PSB=1.
EXECUTE .


IF  (q70_15= 5 | q70_16=5 ) Cadastramento=1.
EXECUTE.

IF  (q70_15= 6 | q70_16=6) Beneficios=1.
EXECUTE.

IF  (q70_15= 7 | q70_16=7 ) PCF=1.
EXECUTE.

IF  (q70_15= 8 | q70_16=8) PBF=1.
EXECUTE.

IF  (q70_15 = 99 | q70_16=99 ) Outros=1.
EXECUTE.

Variable labels 
Gestao 'Atividades de Gestão - mencionada, no minimo, 1 vez'
PAIF  'PAIF - mencionado, no mínimo, 1 vez'
SCFV 'SCFV - mencionado, no mínimo, 1 vez'
PSB 'PSB no domicilio - mencionada, no mínimo, 1 vez'
Cadastramento 'Cadastramento e/ou atualização cadastral (CadÚnico) -  mencionado, no mínimo, 1 vez'
Beneficios 'Beneficios eventuais - mencionado, no mínimo, 1 vez'
PCF 'Programa Criança Feliz - mencionado, no mínimo, 1 vez'
PBF 'Programa Bolsa Familia - mencionado, no mínimo, 1 vez'
Outros 'Outras atividades - mencionadas, no mínimo, 1 vez'.



********************AGGREGATE VARIÁVEIS BINÁRIAS NA BASE RH**************************
********************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE**************************



AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d70_15_1bin_Gestão_sum=SUM(d70_15_1bin_Gestão) 
  /d70_15_1bin_PAIF_sum=SUM(d70_15_1bin_PAIF) 
  /d70_15_1bin_SCFV_sum=SUM(d70_15_1bin_SCFV) 
  /d70_15_1bin_PSB_sum=SUM(d70_15_1bin_PSB) 
  /d70_15_1bin_Cadastramento_sum=SUM(d70_15_1bin_Cadastramento) 
  /d70_15_1bin_Beneficios_sum=SUM(d70_15_1bin_Beneficios) 
  /d70_15_1bin_PCF_sum=SUM(d70_15_1bin_PCF) 
  /d70_15_1bin_PBF_sum=SUM(d70_15_1bin_PBF) 
  /d70_15_1bin_Outros_sum=SUM(d70_15_1bin_Outros) 
  /d70_16_2bin_Gestão_sum=SUM(d70_16_2bin_Gestão) 
  /d70_16_2bin_PAIF_sum=SUM(d70_16_2bin_PAIF) 
  /d70_16_2bin_SCFV_sum=SUM(d70_16_2bin_SCFV) 
  /d70_16_2bin_PSB_sum=SUM(d70_16_2bin_PSB) 
  /d70_16_2bin_Cadastramento_sum=SUM(d70_16_2bin_Cadastramento) 
  /d70_16_2bin_Beneficios_sum=SUM(d70_16_2bin_Beneficios) 
  /d70_16_2bin_PCF_sum=SUM(d70_16_2bin_PCF) 
  /d70_16_2bin_PBF_sum=SUM(d70_16_2bin_PBF) 
  /d70_16_2bin_Outros_sum=SUM(d70_16_2bin_Outros) 
  /Gestao_sum=SUM(Gestao) 
  /PAIF_sum=SUM(PAIF) 
  /SCFV_sum=SUM(SCFV) 
  /PSB_sum=SUM(PSB) 
  /Cadastramento_sum=SUM(Cadastramento) 
  /Beneficios_sum=SUM(Beneficios) 
  /PCF_sum=SUM(PCF) 
  /PBF_sum=SUM(PBF) 
  /Outros_sum=SUM(Outros)
  /N_BREAK=N.



VARIABLE LABELS
  d70_15_1bin_Gestão_sum  'd70_15_1bin_Gestão - Principal serviço/atividade'
  d70_15_1bin_PAIF_sum 'd70_15_1bin_PAIF - Principal serviço/atividade'
  d70_15_1bin_SCFV_sum  'd70_15_1bin_SCFV - Principal serviço/atividade'
  d70_15_1bin_PSB_sum  'd70_15_1bin_PSB - Principal serviço/atividade'
  d70_15_1bin_Cadastramento_sum  'd70_15_1bin_Cadastramento - Principal serviço/atividade'
  d70_15_1bin_Beneficios_sum 'd70_15_1bin_Beneficios - Principal serviço/atividade'
  d70_15_1bin_PCF_sum 'd70_15_1bin_PCF- Principal serviço/atividade'
  d70_15_1bin_PBF_sum 'd70_15_1bin_PBF_Principal serviço/atividade'
  d70_15_1bin_Outros_sum  'd70_15_1bin_Outros - Principal serviço/atividade'
  d70_16_2bin_Gestão_sum  'd70_16_2bin_Gestão - Segundo principal serviço/atividade'
  d70_16_2bin_PAIF_sum 'd70_16_2bin_PAIF -Segundo principal serviço/atividade'
  d70_16_2bin_SCFV_sum  'd70_16_2bin_SCFV - Segundo principal serviço/atividade'
  d70_16_2bin_PSB_sum  'd70_16_2bin_PSB - Segundo principal  serviço/atividade'
  d70_16_2bin_Cadastramento_sum  'd70_16_2bin_Cadastramento - Segundo principal  serviço/atividade'
  d70_16_2bin_Beneficios_sum 'd70_16_2bin_Beneficios - Segundo principal serviço/atividade'
  d70_16_2bin_PCF_sum 'd70_16_2bin_PCF- Segundo principal  serviço/atividade'
  d70_16_2bin_PBF_sum 'd70_16_2bin_PBF- Segundo principal  serviço/atividade'
  d70_16_2bin_Outros_sum  'd70_16_2bin_Outros - Segundo principal  serviço/atividade'
EXECUTE.


VARIABLE LABELS
Gestao_sum 'atividades de gestão - administrativo'
PAIF_sum 'PAIF'
SCFV_sum 'SCFV'
PSB_sum 'PSB'
Cadastramento_sum 'Cadastramento'
Beneficios_sum 'Concessão de Beneficios'
PCF_sum 'Programa Criança Feliz'
PBF_sum 'Programa Bolsa Familia'
Outros_sum 'Outros'
EXECUTE.