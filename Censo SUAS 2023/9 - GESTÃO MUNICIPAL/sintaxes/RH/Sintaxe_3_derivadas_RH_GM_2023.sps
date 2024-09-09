
* Encoding: UTF-8.

**Criação de Derivadas Gestão Municipal - RH - CENSO 2023**



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

COMPUTE q66_2_rec=number(q66_2, EDATE10).
VARIABLE LABELS q66_2_rec  "q66_2_data nascimento recodificada".
VARIABLE LEVEL  q66_2_rec (SCALE).
FORMATS q66_2_rec (EDATE10).
VARIABLE WIDTH  q66_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2023, q66_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  


FREQUENCIES VARIABLES=Idade .



RECODE Idade (16 thru 17=1) (18 thru 29=2) (30 thru 40=3) (41 thru 50=4) (51 thru 60=5) (61 thru 100=6) INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos trabalhadores Gestão Municipal'.
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



****variáveis binárias escolaridade***

RECODE q66_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d66_9.

VARIABLE LABELS d66_9  'd66_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d66_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE d66_9 (0=1) INTO d66_9bin1.

VARIABLE LABELS  d66_9bin1  'd66_9bin1_Nível fundamental - Trabalhadores da gestão que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d66_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d66_9  (1=1) INTO d66_9bin2.
VARIABLE LABELS d66_9bin2  'd66_9bin2_Nível médio - Trabalhadores da gestão com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS d66_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d66_9 (2=1) INTO d66_9bin3.
VARIABLE LABELS  d66_9bin3  'd66_9bin3_Nível superior - inclui Trabalhadores da gestão graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d66_9bin3
1 'Nível Superior'.
EXECUTE.


****variáveis binárias profissão****

RECODE q66_10  (275=1) (273=2) (234=3) (232=4)(274=5) (238=6) (238=7)(else=8) INTO d66_10.
VARIABLE LABELS   d66_10  'd66_10_Profissão'.

VALUE LABELS d66_10
1 'Pedagogo'
2 'Assistente Social'
3 'Antropólogo'
4 'Advogado'
5 'Psicólogo'
6 'Profissional de nível médio'
7 'Sem formação profissional'
8 'Outro profissional de nivel superior'.
EXECUTE.




RECODE q66_10 (275=1) INTO d66_10bin1.
VARIABLE LABELS d66_10bin1   'd66_10bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d66_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q66_10  (273=1) INTO d66_10bin2.
VARIABLE LABELS  d66_10bin2  'd66_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d66_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q66_10   (234=1) INTO d66_10bin3.
VARIABLE LABELS  d66_10bin3  'd66_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d66_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q66_10   (232=1) INTO d66_10bin4.
VARIABLE LABELS  d66_10bin4    'd66_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d66_10bin4
1 'Advogado'.
EXECUTE.

RECODE q66_10  (274=1) INTO d66_10bin5.
VARIABLE LABELS  d66_10bin5   'd66_10bin5_Psicologo'.
EXECUTE.

VALUE LABELS  d66_10bin5
1 'Psicólogo'.
EXECUTE.



**** variáveis binárias - tipo de vínculo****


RECODE q66_11  (138=1) (139=2)(292=3) (else=4) INTO d66_11.
VARIABLE LABELS   d66_11  'd66_11_Tipo de vínculo'.

VALUE LABELS d66_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.




RECODE  d66_11  (1=1) INTO d66_11bin1.
VARIABLE LABELS   d66_11bin1  'd66_11bin1_Servidor Estatutário'.

VALUE LABELS d66_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d66_11   (2=1) INTO d66_11bin2.
VARIABLE LABELS  d66_11bin2  ' d66_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d66_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d66_11 (3=1) INTO d66_11bin3.
VARIABLE LABELS d66_11bin3    'd66_11bin3_Comissionado'.

VALUE LABELS  d66_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d66_11 (4=1) INTO d66_11bin4.
VARIABLE LABELS d66_11bin4   'd66_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d66_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


*******************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE*************************



AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /d66_9bin1_sum=SUM(d66_9bin1) 
  /d66_9bin2_sum=SUM(d66_9bin2) 
  /d66_9bin3_sum=SUM(d66_9bin3) 
  /d66_10bin1_sum=SUM(d66_10bin1) 
  /d66_10bin2_sum=SUM(d66_10bin2) 
  /d66_10bin3_sum=SUM(d66_10bin3) 
  /d66_10bin4_sum=SUM(d66_10bin4) 
  /d66_10bin5_sum=SUM(d66_10bin5) 
  /d66_11bin1_sum=SUM(d66_11bin1) 
  /d66_11bin2_sum=SUM(d66_11bin2) 
  /d66_11bin3_sum=SUM(d66_11bin3) 
  /d66_11bin4_sum=SUM(d66_11bin4)
  /nu_trabalhador=N.


VARIABLE LABELS
d66_9bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d66_9bin2_sum 'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d66_9bin3_sum 'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d66_10bin1_sum 'Número de Pedagogos'
d66_10bin2_sum 'Número de Assistentes Sociais'
d66_10bin3_sum 'Número de Antropólogos'
d66_10bin4_sum 'Número de Advogados'
d66_10bin5_sum 'Número de Psicólogos'
d66_11bin1_sum 'Número de Servidores Estatutários'
d66_11bin2_sum 'Número de Empregados Públicos(CLT)'
d66_11bin3_sum 'Número de Comissionados'
d66_11bin4_sum 'Número de profissionais com outros vínculos não permanentes'
 nu_trabalhador 'Número de trabalhadores na GESTAO'
.
EXECUTE.



******************************************************************************************************************************************************************************************
****ERRO NAS ATIVIDADES SECUNDARIAS E TERCIARIA

** variáveis binárias - Serviços****

**** Principal serviço/atividade  1   


RECODE q66_15 (1=1) INTO d66_15_1bin_Gestão.
VARIABLE LABELS  d66_15_1bin_Gestão  'd66_15_1bin_Gestão - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q66_15  (2=1) INTO d66_15_1bin_Gestão_do_SUAS.
VARIABLE LABELS   d66_15_1bin_Gestão_do_SUAS  'd66_15_1bin_Gestão do SUAS - Principal serviço/atividade'.

VALUE LABELS d66_15_1bin_Gestão_do_SUAS
1 'Gestão do SUAS'.
EXECUTE.

RECODE   q66_15 (3=1) INTO d66_15_1bin_Vigilância_Socioassistencial.
VARIABLE LABELS   d66_15_1bin_Vigilância_Socioassistencial  'd66_15_1bin_Vigilância Socioassistencial - Principal serviço/atividade'.

VALUE LABELS d66_15_1bin_Vigilância_Socioassistencial
1 'Vigilância Socioassistencial'.
EXECUTE.

RECODE q66_15  (4=1) INTO d66_15_1bin_Gestão_do_Trabalho.
VARIABLE LABELS   d66_15_1bin_Gestão_do_Trabalho ' d66_15_1bin_Gestão do Trabalho- Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_Gestão_do_Trabalho
1 'Gestão do Trabalho'.
EXECUTE.

RECODE  q66_15  (5=1) INTO d66_15_1bin_Regulação_do_SUAS.
VARIABLE LABELS  d66_15_1bin_Regulação_do_SUAS  'd66_15_1bin_Regulação do SUAS - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_Regulação_do_SUAS
1 'Regulação do SUAS'.
EXECUTE.

RECODE  q66_15  (6=1) INTO d66_15_1bin_Gestão_Financeira_Orçamentária.
VARIABLE LABELS d66_15_1bin_Gestão_Financeira_Orçamentária   'd66_15_1bin_Gestão Financeira e Orçamentária - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_Gestão_Financeira_Orçamentária
1 'Gestão Financeira e Orçamentária'.
EXECUTE.

RECODE  q66_15  (7=1) INTO d66_15_1bin_PSB.
VARIABLE LABELS  d66_15_1bin_PSB   'd66_15_1bin_PSB - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_PSB
1 'Proteção Social Básica'.
EXECUTE.

RECODE  q66_15  (8=1) INTO d66_15_1bin_PSE_Média_Complexidade.
VARIABLE LABELS  d66_15_1bin_PSE_Média_Complexidade   'd66_15_1bin_PSE Média Complexidade - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_PSE_Média_Complexidade
1 'PSE Média Complexidade'.
EXECUTE.

RECODE  q66_15  (9=1) INTO d66_15_1bin_PSE_Alta_Complexidade.
VARIABLE LABELS  d66_15_1bin_PSE_Alta_Complexidade   'd66_15_1bin_PSE Alta Complexidade - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_PSE_Alta_Complexidade
1 'PSE Alta Complexidade'.
EXECUTE.

RECODE  q66_15  (10=1) INTO d66_15_1bin_Gestão_CadÚnico_PBF.
VARIABLE LABELS  d66_15_1bin_Gestão_CadÚnico_PBF   'd66_15_1bin_Gestão do Cadastro Único e Programa Bolsa Família - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_Gestão_CadÚnico_PBF
1 'Gestão do Cadastro Único e Programa Bolsa Família'.
EXECUTE.

RECODE  q66_15  (11=1) INTO d66_15_1bin_Gestão_Benefícios_Assistenciais.
VARIABLE LABELS  d66_15_1bin_Gestão_Benefícios_Assistenciais   'd66_15_1bin_Gestão de Benefícios Assistenciais - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_Gestão_Benefícios_Assistenciais
1 'Gestão de Benefícios Assistenciais (BPC, benefícios eventuais)'.
EXECUTE.

RECODE  q66_15  (12=1) INTO d66_15_1bin_Outros.
VARIABLE LABELS  d66_15_1bin_Outros  'd66_15_1bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d66_15_1bin_Outros
1 'Outros'.
EXECUTE.

**** Segundo principal serviço/atividade  2

RECODE q66_16 (1=1) INTO d66_16_2bin_Gestão.
VARIABLE LABELS  d66_16_2bin_Gestão  'd66_16_2bin_Gestão - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_Gestão
1 'Gestão'.
EXECUTE.

RECODE  q66_16  (2=1) INTO d66_16_2bin_Gestão_do_SUAS.
VARIABLE LABELS   d66_16_2bin_Gestão_do_SUAS  'd66_16_2bin_Gestão do SUAS - Principal serviço/atividade'.

VALUE LABELS d66_16_2bin_Gestão_do_SUAS
1 'Gestão do SUAS'.
EXECUTE.

RECODE   q66_16 (3=1) INTO d66_16_2bin_Vigilância_Socioassistencial.
VARIABLE LABELS   d66_16_2bin_Vigilância_Socioassistencial  'd66_16_2bin_Vigilância Socioassistencial - Principal serviço/atividade'.

VALUE LABELS d66_16_2bin_Vigilância_Socioassistencial
1 'Vigilância Socioassistencial'.
EXECUTE.

RECODE q66_16  (4=1) INTO d66_16_2bin_Gestão_do_Trabalho.
VARIABLE LABELS   d66_16_2bin_Gestão_do_Trabalho ' d66_16_2bin_Gestão do Trabalho- Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_Gestão_do_Trabalho
1 'Gestão do Trabalho'.
EXECUTE.

RECODE  q66_16  (5=1) INTO d66_16_2bin_Regulação_do_SUAS.
VARIABLE LABELS  d66_16_2bin_Regulação_do_SUAS  'd66_16_2bin_Regulação do SUAS - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_Regulação_do_SUAS
1 'Regulação do SUAS'.
EXECUTE.

RECODE  q66_16  (6=1) INTO d66_16_2bin_Gestão_Financeira_Orçamentária.
VARIABLE LABELS d66_16_2bin_Gestão_Financeira_Orçamentária   'd66_16_2bin_Gestão Financeira e Orçamentária - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_Gestão_Financeira_Orçamentária
1 'Gestão Financeira e Orçamentária'.
EXECUTE.

RECODE  q66_16  (7=1) INTO d66_16_2bin_PSB.
VARIABLE LABELS  d66_16_2bin_PSB   'd66_16_2bin_PSB - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_PSB
1 'Proteção Social Básica'.
EXECUTE.

RECODE  q66_16  (8=1) INTO d66_16_2bin_PSE_Média_Complexidade.
VARIABLE LABELS  d66_16_2bin_PSE_Média_Complexidade   'd66_16_2bin_PSE Média Complexidade - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_PSE_Média_Complexidade
1 'PSE Média Complexidade'.
EXECUTE.

RECODE  q66_16  (9=1) INTO d66_16_2bin_PSE_Alta_Complexidade.
VARIABLE LABELS  d66_16_2bin_PSE_Alta_Complexidade   'd66_16_2bin_PSE Alta Complexidade - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_PSE_Alta_Complexidade
1 'PSE Alta Complexidade'.
EXECUTE.

RECODE  q66_16  (10=1) INTO d66_16_2bin_Gestão_CadÚnico_PBF.
VARIABLE LABELS  d66_16_2bin_Gestão_CadÚnico_PBF   'd66_16_2bin_Gestão do Cadastro Único e Programa Bolsa Família - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_Gestão_CadÚnico_PBF
1 'Gestão do Cadastro Único e Programa Bolsa Família'.
EXECUTE.

RECODE  q66_16  (11=1) INTO d66_16_2bin_Gestão_Benefícios_Assistenciais.
VARIABLE LABELS  d66_16_2bin_Gestão_Benefícios_Assistenciais   'd66_16_2bin_Gestão de Benefícios Assistenciais - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_Gestão_Benefícios_Assistenciais
1 'Gestão de Benefícios Assistenciais (BPC, benefícios eventuais)'.
EXECUTE.

RECODE  q66_16  (12=1) INTO d66_16_2bin_Outros.
VARIABLE LABELS  d66_16_2bin_Outros  'd66_16_2bin_Outros - Principal serviço/atividade'.

VALUE LABELS  d66_16_2bin_Outros
1 'Outros'.
EXECUTE.




**** Variável Gestão  - mencionada, no minimo, 1 vez 

IF  (q66_15 = 1 | q66_16 =1) d66_Gestão=1.
EXECUTE.


IF  (q66_15 = 2 | q66_16 =2 ) d66_Gestão_do_SUAS=1.
EXECUTE .


IF  (q66_15 = 3 | q66_16 =3 ) d66_Vigilância_Socioassistencial=1.
EXECUTE .


IF  ( q66_15 = 4 | q66_16 =4 ) d66_Gestão_do_Trabalho=1.
EXECUTE .


IF  (q66_15= 5 | q66_16=5) d66_Regulação_do_SUAS=1.
EXECUTE.

IF  (q66_15= 6 | q66_16=6) d66_Gestão_Financeira_Orçamentária=1.
EXECUTE.

IF  (q66_15= 7 | q66_16=7) d66_PSB=1.
EXECUTE.

IF  (q66_15= 8 | q66_16=8) d66_PSE_Média_Complexidade=1.
EXECUTE.

IF  (q66_15= 9 | q66_16=9) d66_PSE_Alta_Complexidade=1.
EXECUTE.

IF  (q66_15= 10 | q66_16=10 ) d66_Gestão_CadÚnico_PBF=1.
EXECUTE.

IF  (q66_15= 11 | q66_16=11 ) d66_Gestão_Benefícios_Assistenciais=1.
EXECUTE.

IF  (q66_15 = 12 | q66_16=12 ) d66_Outros=1.
EXECUTE.

Variable labels
d66_Gestão 'Atividades de Gestão - mencionada, no minimo, 1 vez'
d66_Gestão_do_SUAS  'Gestão do SUAS - mencionada, no mínimo, 1 vez'
d66_Vigilância_Socioassistencial 'Vigilância Socioassistencial - mencionada, no mínimo, 1 vez'
d66_Gestão_do_Trabalho 'Gestão do Trabalho - mencionada, no mínimo, 1 vez'
d66_Regulação_do_SUAS 'Regulação do SUAS -  mencionada, no mínimo, 1 vez'
d66_Gestão_Financeira_Orçamentária 'Gestão Financeira e Orçamentária - mencionada, no mínimo, 1 vez'
d66_PSB 'Proteção Social Básica - mencionada, no mínimo, 1 vez'
d66_PSE_Média_Complexidade 'PSE_Média_Complexidade - mencionada, no mínimo, 1 vez'
d66_PSE_Alta_Complexidade 'PSE_Alta_Complexidade - mencionada, no mínimo, 1 vez'
d66_Gestão_CadÚnico_PBF 'Gestão do Cadastro Único e Programa Bolsa Família - mencionado, no mínimo, 1 vez'
d66_Gestão_Benefícios_Assistenciais 'Gestão de Benefícios Assistenciais (BPC, benefícios eventuais) - mencionado, no mínimo, 1 vez'
d66_Outros 'Outras atividades - mencionadas, no mínimo, 1 vez'.



********************AGGREGATE VARIÁVEIS BINÁRIAS NA BASE RH**************************
********************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE**************************

DATASET ACTIVATE DataSet1.
AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /d66_15_1bin_Gestão_sum=SUM(d66_15_1bin_Gestão) 
  /d66_15_1bin_Gestão_do_SUAS_sum=SUM(d66_15_1bin_Gestão_do_SUAS) 
  /d66_15_1bin_Vigilância_Socioassistencial_sum=SUM(d66_15_1bin_Vigilância_Socioassistencial) 
  /d66_15_1bin_Gestão_do_Trabalho_sum=SUM(d66_15_1bin_Gestão_do_Trabalho) 
  /d66_15_1bin_Regulação_do_SUAS_sum=SUM(d66_15_1bin_Regulação_do_SUAS) 
  /d66_15_1bin_Gestão_Financeira_Orçamentária_sum=SUM(d66_15_1bin_Gestão_Financeira_Orçamentária) 
  /d66_15_1bin_PSB_sum=SUM(d66_15_1bin_PSB) 
  /d66_15_1bin_PSE_Média_Complexidade_sum=SUM(d66_15_1bin_PSE_Média_Complexidade) 
  /d66_15_1bin_PSE_Alta_Complexidade_sum=SUM(d66_15_1bin_PSE_Alta_Complexidade) 
  /d66_15_1bin_Gestão_CadÚnico_PBF_sum=SUM(d66_15_1bin_Gestão_CadÚnico_PBF) 
  /d66_15_1bin_Gestão_Benefícios_Assistenciais_sum=SUM(d66_15_1bin_Gestão_Benefícios_Assistenciais)     
  /d66_15_1bin_Outros_sum=SUM(d66_15_1bin_Outros) 
  /d66_16_2bin_Gestão_sum=SUM(d66_16_2bin_Gestão) 
  /d66_16_2bin_Gestão_do_SUAS_sum=SUM(d66_16_2bin_Gestão_do_SUAS) 
  /d66_16_2bin_Vigilância_Socioassistencial_sum=SUM(d66_16_2bin_Vigilância_Socioassistencial) 
  /d66_16_2bin_Gestão_do_Trabalho_sum=SUM(d66_16_2bin_Gestão_do_Trabalho) 
  /d66_16_2bin_Regulação_do_SUAS_sum=SUM(d66_16_2bin_Regulação_do_SUAS) 
  /d66_16_2bin_Gestão_Financeira_Orçamentária_sum=SUM(d66_16_2bin_Gestão_Financeira_Orçamentária) 
  /d66_16_2bin_PSB_sum=SUM(d66_16_2bin_PSB) 
  /d66_16_2bin_PSE_Média_Complexidade_sum=SUM(d66_16_2bin_PSE_Média_Complexidade) 
  /d66_16_2bin_PSE_Alta_Complexidade_sum=SUM(d66_16_2bin_PSE_Alta_Complexidade) 
  /d66_16_2bin_Gestão_CadÚnico_PBF_sum=SUM(d66_16_2bin_Gestão_CadÚnico_PBF) 
  /d66_16_2bin_Gestão_Benefícios_Assistenciais_sum=SUM(d66_16_2bin_Gestão_Benefícios_Assistenciais)     
  /d66_16_2bin_Outros_sum=SUM(d66_16_2bin_Outros) 
  /d66_Gestão_sum=SUM(d66_Gestão) 
  /d66_Gestão_do_SUAS_sum=SUM(d66_Gestão_do_SUAS) 
  /d66_Vigilância_Socioassistencial_sum=SUM(d66_Vigilância_Socioassistencial) 
  /d66_Gestão_do_Trabalho_sum=SUM(d66_Gestão_do_Trabalho) 
  /d66_Regulação_do_SUAS_sum=SUM(d66_Regulação_do_SUAS) 
  /d66_Gestão_Financeira_Orçamentária_sum=SUM(d66_Gestão_Financeira_Orçamentária) 
  /d66_PSB_sum=SUM(d66_PSB) 
  /d66_PSE_Média_Complexidade_sum=SUM(d66_PSE_Média_Complexidade) 
  /d66_PSE_Alta_Complexidade_sum=SUM(d66_PSE_Alta_Complexidade) 
  /d66_Gestão_CadÚnico_PBF_sum=SUM(d66_Gestão_CadÚnico_PBF) 
  /d66_Gestão_Benefícios_Assistenciais_sum=SUM(d66_Gestão_Benefícios_Assistenciais) 
  /d66_Outros_sum=SUM(d66_Outros)
  /nu_trabalhador_1=N.



VARIABLE LABELS
d66_15_1bin_Gestão_sum 'Atividades de Gestão'
d66_15_1bin_Gestão_do_SUAS_sum 'd66_15_1bin_Gestão_do_SUAS'
d66_15_1bin_Vigilância_Socioassistencial_sum 'd66_15_1bin_Vigilância_Socioassistencial'
d66_15_1bin_Gestão_do_Trabalho_sum 'd66_15_1bin_Gestão_do_Trabalho'
d66_15_1bin_Regulação_do_SUAS_sum 'd66_15_1bin_Regulação_do_SUAS'
d66_15_1bin_Gestão_Financeira_Orçamentária_sum 'd66_15_1bin_Gestão_Financeira_Orçamentária'
d66_15_1bin_PSB_sum 'd66_15_1bin_PSB'
d66_15_1bin_PSE_Média_Complexidade_sum 'd66_15_1bin_PSE_Média_Complexidade'
d66_15_1bin_PSE_Alta_Complexidade_sum 'd66_15_1bin_PSE_Alta_Complexidade'
d66_15_1bin_Gestão_CadÚnico_PBF_sum 'd66_15_1bin_Gestão_CadÚnico_PBF'
d66_15_1bin_Gestão_Benefícios_Assistenciais_sum 'd66_15_1bin_Gestão_Benefícios_Assistenciais'
d66_15_1bin_Outros_sum 'd66_15_1bin_Outros'
d66_16_2bin_Gestão_sum 'd66_16_2bin_Gestão'
d66_16_2bin_Gestão_do_SUAS_sum 'd66_16_2bin_Gestão_do_SUAS'
d66_16_2bin_Vigilância_Socioassistencial_sum 'd66_16_2bin_Vigilância_Socioassistencial'
d66_16_2bin_Gestão_do_Trabalho_sum 'd66_16_2bin_Gestão_do_Trabalho'
d66_16_2bin_Regulação_do_SUAS_sum 'd66_16_2bin_Regulação_do_SUAS'
d66_16_2bin_Gestão_Financeira_Orçamentária_sum 'd66_16_2bin_Gestão_Financeira_Orçamentária'
d66_16_2bin_PSB_sum 'd66_16_2bin_PSB'
d66_16_2bin_PSE_Média_Complexidade_sum 'd66_16_2bin_PSE_Média_Complexidade'
d66_16_2bin_PSE_Alta_Complexidade_sum 'd66_16_2bin_PSE_Alta_Complexidade'
d66_16_2bin_Gestão_CadÚnico_PBF_sum 'd66_16_2bin_Gestão_CadÚnico_PBF'
d66_16_2bin_Gestão_Benefícios_Assistenciais_sum 'd66_16_2bin_Gestão_Benefícios_Assistenciais'
d66_16_2bin_Outros_sum 'd66_16_2bin_Outros'
d66_Gestão_sum 'atividades de gestão - administrativo'
d66_Gestão_do_SUAS_sum 'Gestão do SUAS'
d66_Vigilância_Socioassistencial_sum ' Vigilância Socioassistencial'
d66_Gestão_do_Trabalho_sum 'Gestão do Trabalho'
d66_Regulação_do_SUAS_sum 'Regulação do SUAS'
d66_Gestão_Financeira_Orçamentária_sum 'Gestão Financeira Orçamentária'
d66_PSB_sum 'Proteção Social Básica'
d66_PSE_Média_Complexidade_sum 'Proteção Social Especial de Média Complexidade'
d66_PSE_Alta_Complexidade_sum 'Proteção Social Especial de Alta Complexidade'
d66_Gestão_CadÚnico_PBF_sum 'Gestão do Cadastro Único'
d66_Gestão_Benefícios_Assistenciais_sum 'Gestão Benefícios Assistenciais'
d66_Outros_sum 'Outros'.
 EXECUTE.

