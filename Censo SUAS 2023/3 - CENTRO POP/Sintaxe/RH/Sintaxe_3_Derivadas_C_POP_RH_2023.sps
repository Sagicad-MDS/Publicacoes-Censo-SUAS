* Encoding: UTF-8.
**Derivadas - Questões de RH**

***Idade calculada na planilha excel***********


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

COMPUTE q33_2_rec=number(q33_2, EDATE10).
VARIABLE LABELS q33_2_rec "q33_2_data nascimento recodificada".
VARIABLE LEVEL  q33_2_rec (SCALE).
FORMATS q33_2_rec (EDATE10).
VARIABLE WIDTH  q33_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2023, q33_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  
FREQUENCIES VARIABLES=Idade 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.


RECODE Idade (16 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 80=5)  INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores dos Centro POP'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1'16 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'61 a 80 anos'.



FREQUENCIES VARIABLES=Faixas_etarias
  /ORDER=ANALYSIS.


RECODE q33_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d33_9.
VARIABLE LABELS  d33_9  'd33_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d33_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


RECODE q33_11  (138=1) (139=2) (292=3) (ELSE=4) INTO d33_11.
VARIABLE LABELS  d33_11 'd33_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS d33_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d33_9 (0=1) INTO d33_9bin1.
VARIABLE LABELS  d33_9bin1 'd33_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d33_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d33_9 (1=1) INTO d33_9bin2.
VARIABLE LABELS  d33_9bin2  'd33_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d33_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d33_9 (2=1) INTO d33_9bin3.
VARIABLE LABELS  d33_9bin3 'd33_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d33_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q33_10 (275=1) INTO d33_10bin1.
VARIABLE LABELS  d33_10bin1 'd33_10bin1_Pedagogo'.
EXECUTE.


VALUE LABELS d33_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q33_10 (273=1) INTO d33_10bin2.
VARIABLE LABELS  d33_10bin2 'd33_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d33_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q33_10  (234=1) INTO d33_10bin3.
VARIABLE LABELS  d33_10bin3 'd33_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS d33_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q33_10 (232=1) INTO d33_10bin4.
VARIABLE LABELS  d33_10bin4 'd33_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d33_10bin4
1 'Advogado'.
EXECUTE.

RECODE q33_10 (274=1) INTO d33_10bin5.
VARIABLE LABELS  d33_10bin5 'd33_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d33_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d33_11 (1=1) INTO d33_11bin1.
VARIABLE LABELS   d33_11bin1 'd33_11bin1_Servidor Estatutário'.

VALUE LABELS  d33_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d33_11  (2=1) INTO d33_11bin2.
VARIABLE LABELS  d33_11bin2 'd33_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d33_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d33_11 (3=1) INTO d33_11bin3.
VARIABLE LABELS d33_11bin3  'd33_11bin3_Comissionado'.

VALUE LABELS  d33_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d33_11 (4=1) INTO d33_11bin4.
VARIABLE LABELS d33_11bin4 'd33_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d33_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d33_9bin1_sum=SUM(d33_9bin1) 
  /d33_9bin2_sum=SUM(d33_9bin2) 
  /d33_9bin3_sum=SUM(d33_9bin3) 
  /d33_10bin1_sum=SUM(d33_10bin1) 
  /d33_10bin2_sum=SUM(d33_10bin2) 
  /d33_10bin3_sum=SUM(d33_10bin3) 
  /d33_10bin4_sum=SUM(d33_10bin4) 
  /d33_10bin5_sum=SUM(d33_10bin5) 
  /d33_11bin1_sum=SUM(d33_11bin1) 
  /d33_11bin2_sum=SUM(d33_11bin2) 
  /d33_11bin3_sum=SUM(d33_11bin3) 
  /d33_11bin4_sum=SUM(d33_11bin4)
    /nu_trabalhadores=N.
EXECUTE.


VARIABLE LABELS
d33_9bin1_sum 'd33.9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d33_9bin2_sum  'd33.9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d33_9bin3_sum  'd33.9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d33_10bin1_sum  'd33.10bin1_sum_Número de Pedagogos'
d33_10bin2_sum 'd33.10bin2_sum_Número de Assistentes Sociais'
d33_10bin3_sum  'd33.10bin3_sum_Número de Antropólogos'
d33_10bin4_sum  'd33.10bin4_sum_Número de Advogados'
d33_10bin5_sum  'd33.10bin5_sum_Número de Psicólogos'
d33_11bin1_sum  'd33.11bin1_sum_Número de Servidores Estatutários'
d33_11bin2_sum  'd33.11bin2_sum_Número de Empregados Públicos(CLT)'
d33_11bin3_sum  'd33.11bin3_sum_Número de Comissionados'
d33_11bin4_sum  'd33.11bin4_sum_Número de profissionais com outros vínculos não permanentes'
nu_trabalhadores  'Número de trabalhadores na unidade'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE 
d33_9bin1_sum  d33_9bin2_sum d33_9bin3_sum d33_10bin1_sum d33_10bin2_sum d33_10bin3_sum 
d33_10bin4_sum d33_10bin5_sum d33_11bin1_sum d33_11bin2_sum d33_11bin3_sum d33_11bin4_sum nu_trabalhadores (SYSMIS=0). 
EXECUTE.

VARIABLE LABELS
 d33_9bin1_sum 'd33.9bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 d33_9bin2_sum'd33.9bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 d33_9bin3_sum'd33.9bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d33_10bin1_sum'd33.10bin1_sum_Número de Pedagogos'
 d33_10bin2_sum'd33.10bin2_sum_Número de Assistentes Sociais'
 d33_10bin3_sum'd33.10bin3_sum_Número de Antropólogos'
 d33_10bin4_sum'd33.10bin4_sum_Número de Advogados'
 d33_10bin5_sum'd33.10bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
d33_11bin1_sum'd33.11bin1_Número de Servidores Estatutários'
 d33_11bin2_sum'd33.11bin2_Número de Empregados Públicos(CLT)'
 d33_11bin3_sum'd33.11bin3_Número de Comissionados'
d33_11bin4_sum'd33.11bin4_Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços/Voluntários/Ser. Temporário/Sem vínculo/Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores na unidade executora do Centro POP'.
EXECUTE.



** variáveis binárias - Serviços****

**** Principal serviço/atividade

RECODE q33_15_1 (1=1) INTO d33_15_1_1bin_Gestão.
VARIABLE LABELS  d33_15_1_1bin_Gestão  'd33_15_1_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS  d33_15_1_1bin_Gestão
1 'Atividades de gestão (administrativo)'.
EXECUTE.

RECODE  q33_15_1 (2=1) INTO  d33_15_1_1bin_PopRua.
VARIABLE LABELS  d33_15_1_1bin_PopRua  'd33_15_1_1bin_PopRua - Principal serviço/atividade'.

VALUE LABELS d33_15_1_1bin_PopRua
1 'Serviço Especializado para Pessoas em Situação de Rua'.
EXECUTE.

RECODE   q33_15_1  (3=1) INTO d33_15_1_1bin_Abordagem.
VARIABLE LABELS   d33_15_1_1bin_Abordagem  'd33_15_1_1bin_Abordagem - Principal serviço/atividade'.

VALUE LABELS d33_15_1_1bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.


RECODE  q33_15_1  (4=1) INTO d33_15_1_1bin_Cadastramento.
VARIABLE LABELS  d33_15_1_1bin_Cadastramento  'd33_15_1_1bin_Cadastramento - Principal serviço/atividade'.

VALUE LABELS  d33_15_1_1bin_Cadastramento
1 'Cadastramento e/ou Revisão/Atualização Cadastral (CadÚnico)'.
EXECUTE.


RECODE  q33_15_1  (99=1) INTO d33_15_1_1bin_Outros.
VARIABLE LABELS  d33_15_1_1bin_Outros  'd33_15_1_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d33_15_1_1bin_Outros
1 'Outros'.
EXECUTE.

**** Segundo principal serviço/atividade

RECODE q33_15_2 (1=1) INTO d33_15_2_1bin_Gestão.
VARIABLE LABELS  d33_15_2_1bin_Gestão  'd33_15_2_1bin_Gestão - Segundo principal serviço/atividade'.

VALUE LABELS  d33_15_2_1bin_Gestão
1 'Atividades de gestão (administrativo)'.
EXECUTE.

RECODE  q33_15_2 (2=1) INTO  d33_15_2_1bin_PopRua.
VARIABLE LABELS  d33_15_2_1bin_PopRua  'd33_15_2_1bin_PopRua - Segundo principal serviço/atividade'.

VALUE LABELS d33_15_2_1bin_PopRua
1 'Serviço Especializado para Pessoas em Situação de Rua'.
EXECUTE.

RECODE   q33_15_2  (3=1) INTO d33_15_2_1bin_Abordagem.
VARIABLE LABELS   d33_15_2_1bin_Abordagem  'd33_15_2_1bin_Abordagem - Segundo principal serviço/atividade'.

VALUE LABELS d33_15_2_1bin_Abordagem
1 'Serviço de Abordagem Social'.
EXECUTE.


RECODE  q33_15_2  (4=1) INTO d33_15_2_1bin_Cadastramento.
VARIABLE LABELS  d33_15_2_1bin_Cadastramento  'd33_15_2_1bin_Cadastramento - Segundo principal serviço/atividade'.

VALUE LABELS  d33_15_2_1bin_Cadastramento
1 'Cadastramento e/ou Revisão/Atualização Cadastral (CadÚnico)'.
EXECUTE.


RECODE  q33_15_2  (99=1) INTO d33_15_2_1bin_Outros.
VARIABLE LABELS  d33_15_2_1bin_Outros  'd33_15_2_1bin_Outros - Segundo principal serviço/atividade'.

VALUE LABELS  d33_15_2_1bin_Outros
1 'Outros'.
EXECUTE.




**** Variável Gestão,  Abordagem, POP rua, cadunico, etc - mencionada, no minimo, 1 vez na questao resposta multipla q33_15 *****

IF  (q33_15_1 = 1 |q33_15_2 =1) Gestao=1.
EXECUTE.


IF  (q33_15_1 = 2 |q33_15_2 =2 ) PopRua=1.
EXECUTE .


IF  (q33_15_1 = 3 |q33_15_2 =3 ) Abordagem=1.
EXECUTE .


IF  (q33_15_1 = 4 |q33_15_2 =4 ) Cadastramento=1.
EXECUTE.


IF  (q33_15_1 = 99 |q33_15_2 =99 ) Outros=1.
EXECUTE.

Variable labels 
Gestao 'Atividades de gestão (administrativo) - mencionada, no minimo, 1 vez'
PopRua  'Serviço Especializado para Pessoas em Situação de Rua - mencionado, no mínimo, 1 vez'
Abordagem 'Serviço de Abordagem Social - mencionado, no mínimo, 1 vez'
Cadastramento 'Cadastramento e/ou Revisão/Atualização Cadastral (CadÚnico) -  mencionado, no mínimo, 1 vez'
Outros 'Outras atividades - mencionadas, no mínimo, 1 vez'.



********************AGGREGATE VARIÁVEIS BINÁRIAS NA BASE RH**************************
********************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE**************************

AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d33_15_1_1bin_Gestão_sum=SUM(d33_15_1_1bin_Gestão) 
  /d33_15_1_1bin_PopRua_sum=SUM(d33_15_1_1bin_PopRua) 
  /d33_15_1_1bin_Abordagem_sum=SUM(d33_15_1_1bin_Abordagem) 
  /d33_15_1_1bin_Cadastramento_sum=SUM(d33_15_1_1bin_Cadastramento) 
  /d33_15_1_1bin_Outros_sum=SUM(d33_15_1_1bin_Outros) 
  /d33_15_2_1bin_Gestão_sum=SUM(d33_15_2_1bin_Gestão) 
  /d33_15_2_1bin_PopRua_sum=SUM(d33_15_2_1bin_PopRua) 
  /d33_15_2_1bin_Abordagem_sum=SUM(d33_15_2_1bin_Abordagem) 
  /d33_15_2_1bin_Cadastramento_sum=SUM(d33_15_2_1bin_Cadastramento) 
  /d33_15_2_1bin_Outros_sum=SUM(d33_15_2_1bin_Outros) 
  /N_BREAK=N.


VARIABLE LABELS
d33_15_1_1bin_Gestão_sum  'd33_15_1_1bin_Gestão - Principal serviço/atividade'
d33_15_1_1bin_PopRua_sum  'd33_15_1_1bin_PopRua - Principal serviço/atividade'
d33_15_1_1bin_Abordagem_sum  'd33_15_1_1bin_Abordagem - Principal serviço/atividade'
d33_15_1_1bin_Cadastramento_sum  'd33_15_1_1bin_Cadastramento - Principal serviço/atividade'
d33_15_1_1bin_Outros_sum  'd33_15_1_1bin_Outros - Principal serviço/atividade'
d33_15_2_1bin_Gestão_sum  'd33_15_2_1bin_Gestão - Segundo principal serviço/atividade'
d33_15_2_1bin_PopRua_sum  'd33_15_2_1bin_PopRua - Segundo principal serviço/atividade'
d33_15_2_1bin_Abordagem_sum  'd33_15_2_1bin_Abordagem - Segundo principal serviço/atividade'
d33_15_2_1bin_Cadastramento_sum  'd33_15_2_1bin_Cadastramento - Segundo principal serviço/atividade'
d33_15_2_1bin_Outros_sum  'd33_15_2_1bin_Outros - Segundo principal serviço/atividade'
.
EXECUTE.




Variable labels 
Gestao_sum  'Atividades de gestão (administrativo) - mencionada, no minimo, 1 vez'
PopRua_sum  'Serviço Especializado para Pessoas em Situação de Rua - mencionado, no mínimo, 1 vez'
Abordagem_sum 'Serviço de Abordagem Social - mencionado, no mínimo, 1 vez'
Cadastramento_sum 'Cadastramento e/ou Revisão/Atualização Cadastral (CadÚnico) -  mencionado, no mínimo, 1 vez'
Outros_sum  'Outras atividades - mencionadas, no mínimo, 1 vez'.
EXECUTE.




