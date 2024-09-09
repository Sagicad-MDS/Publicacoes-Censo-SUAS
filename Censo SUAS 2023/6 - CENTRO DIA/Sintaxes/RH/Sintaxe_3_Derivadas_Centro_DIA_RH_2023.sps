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

COMPUTE q37_2_rec=number(q37_2, EDATE10).
VARIABLE LABELS q37_2_rec "q37_2_data nascimento recodificada".
VARIABLE LEVEL  q37_2_rec (SCALE).
FORMATS q37_2_rec (EDATE10).
VARIABLE WIDTH  q37_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2023, q37_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  


FREQUENCIES VARIABLES=Idade 
  /ORDER=ANALYSIS.



RECODE Idade (16 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 80=5) (81 thru 100=6)  INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores dos Centro Dia'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1'16 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'61 a 80 anos'
6'Mais de 80 anos'.



RECODE q37_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d37_9.
VARIABLE LABELS  d37_9  'd37_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d37_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


****variáveis binárias escolaridade***

RECODE d37_9 (0=1) INTO d37_9bin1.
VARIABLE LABELS  d37_9bin1 'd37_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d37_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d37_9 (1=1) INTO d37_9bin2.
VARIABLE LABELS  d37_9bin2  'd37_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS d37_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d37_9 (2=1) INTO d37_9bin3.
VARIABLE LABELS  d37_9bin3 'd37_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d37_9bin3
1 'Nível Superior'.
EXECUTE.



****variáveis binárias profissão****

RECODE q37_10  (275=1) (273=2) (234=3) (232=4)(274=5) (238=6) (238=7)(else=8) INTO d37_10.
VARIABLE LABELS   d37_10  'd37_10_Profissão'.

VALUE LABELS d37_10
1 'Pedagogo'
2 'Assistente Social'
3 'Antropólogo'
4 'Advogado'
5 'Psicólogo'
6 'Profissional de nível médio'
7 'Sem formação profissional'
8 'Outro profissional de nivel superior'.
EXECUTE.




RECODE q37_10 (275=1) INTO d37_10bin1.
VARIABLE LABELS d37_10bin1  'd37_10bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d37_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q37_10  (273=1) INTO d37_10bin2.
VARIABLE LABELS  d37_10bin2  'd37_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d37_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q37_10  (234=1) INTO d37_10bin3.
VARIABLE LABELS  d37_10bin3  'd37_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d37_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q37_10  (232=1) INTO d37_10bin4.
VARIABLE LABELS  d37_10bin4   'd37_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d37_10bin4
1 'Advogado'.
EXECUTE.

RECODE q37_10 (274=1) INTO d37_10bin5.
VARIABLE LABELS  d37_10bin5  'd37_10bin5_Psicologo'.
EXECUTE.

VALUE LABELS  d37_10bin5
1 'Psicólogo'.
EXECUTE.









**** variáveis binárias - tipo de vínculo****


RECODE q37_11  (138=1) (139=2) (292=3) (ELSE=4) INTO d37_11.
VARIABLE LABELS  d37_11 'd37_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS d37_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.




RECODE  d37_11 (1=1) INTO d37_11bin1.
VARIABLE LABELS   d37_11bin1 'd37_11bin1_Servidor Estatutário'.

VALUE LABELS  d37_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d37_11  (2=1) INTO d37_11bin2.
VARIABLE LABELS  d37_11bin2 'd37_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d37_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d37_11 (3=1) INTO d37_11bin3.
VARIABLE LABELS d37_11bin3 'd37_11bin3_Comissionado'.

VALUE LABELS  d37_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d37_11 (4=1) INTO d37_11bin4.
VARIABLE LABELS d37_11bin4 'd37_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d37_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d37_9bin1_sum=SUM(d37_9bin1)
  /d37_9bin2_sum=SUM(d37_9bin2)
  /d37_9bin3_sum=SUM(d37_9bin3)
  /d37_10bin1_sum=SUM(d37_10bin1)
  /d37_10bin2_sum=SUM(d37_10bin2)
  /d37_10bin3_sum=SUM(d37_10bin3)
  /d37_10bin4_sum=SUM(d37_10bin4)
  /d37_10bin5_sum=SUM(d37_10bin5)
  /d37_11bin1_sum=SUM(d37_11bin1)
  /d37_11bin2_sum=SUM(d37_11bin2)
  /d37_11bin3_sum=SUM(d37_11bin3)
  /d37_11bin4_sum=SUM(d37_11bin4)
  /nu_trabalhadores=N.
EXECUTE.



VARIABLE LABELS
d37_9bin1_sum 'd37.9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d37_9bin2_sum  'd37.9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d37_9bin3_sum  'd37.9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d37_10bin1_sum  'd37.10bin1_sum_Número de Pedagogos'
d37_10bin2_sum 'd37.10bin2_sum_Número de Assistentes Sociais'
d37_10bin3_sum  'd37.10bin3_sum_Número de Antropólogos'
d37_10bin4_sum  'd37.10bin4_sum_Número de Advogados'
d37_10bin5_sum  'd37.10bin5_sum_Número de Psicólogos'
d37_11bin1_sum  'd37.11bin1_sum_Número de Servidores Estatutários'
d37_11bin2_sum  'd37.11bin2_sum_Número de Empregados Públicos(CLT)'
d37_11bin3_sum  'd37.11bin3_sum_Número de Comissionados'
d37_11bin4_sum  'd37.11bin4_sum_Número de profissionais com outros vínculos não permanentes'
nu_trabalhadores  'Número de trabalhadores na unidade'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE 
d37_9bin1_sum d37_9bin2_sum d37_9bin3_sum d37_10bin1_sum d37_10bin2_sum d37_10bin3_sum 
d37_10bin4_sum d37_10bin5_sum d37_11bin1_sum d37_11bin2_sum d37_11bin3_sum d37_11bin4_sum nu_trabalhadores (SYSMIS=0). 
EXECUTE.

VARIABLE LABELS
d37_9bin1_sum 'd37_9bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d37_9bin2_sum'd37_9bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d37_9bin3_sum'd37_9bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
d37_10bin1_sum'd_40.10bin1_sum_Número de Pedagogos'
d37_10bin2_sum'd_40.10bin2_sum_Número de Assistentes Sociais'
d37_10bin3_sum'd_40.10bin3_sum_Número de Antropólogos'
d37_10bin4_sum'd_40.10bin4_sum_Número de Advogados'
d37_10bin5_sum'd_40.10bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
d37_11bin1_sum'd_40.11bin1_Número de Servidores Estatutários'
d37_11bin2_sum'd_40.11bin2_Número de Empregados Públicos(CLT)'
d37_11bin3_sum'd_40.11bin3_Número de Comissionados'
d37_11bin4_sum'd_40.11bin4_Número de profissionais com outros vínculos não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços/Voluntários/Ser. Temporário/Sem vínculo/Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores na unidade executora do Centro Dia'.
EXECUTE.











