* Encoding: UTF-8.

**Criação de Derivadas  - RH Posto Cadastramento - CENSO 2023**



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

COMPUTE q17_2_rec=number(q17_2, EDATE10).
VARIABLE LABELS q17_2_rec "q17_2_data nascimento recodificada".
VARIABLE LEVEL  q17_2_rec (SCALE).
FORMATS q17_2_rec (EDATE10).
VARIABLE WIDTH  q17_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2023, q17_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  




FREQUENCIES VARIABLES=Idade 
  /ORDER=ANALYSIS.



RECODE Idade (16 thru 17=1) (18 thru 29=2) (30 thru 40=3) (41 thru 50=4) (51 thru 60=5) (61 thru 80=6) INTO 
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

RECODE q17_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d17_9.

VARIABLE LABELS d17_9   'd17_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d17_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE d17_9 (0=1) INTO d17_9bin1.

VARIABLE LABELS  d17_9bin1  'd17_9bin1_Nível fundamental - Trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d17_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d17_9  (1=1) INTO d17_9bin2.
VARIABLE LABELS d17_9bin2  'd17_9bin2_Nível médio - Trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS d17_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d17_9(2=1) INTO d17_9bin3.
VARIABLE LABELS  d17_9bin3  'd17_9bin3_Nível superior - inclui Trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d17_9bin3
1 'Nível Superior'.
EXECUTE.





****variáveis binárias profissão****

RECODE q17_10  (275=1) (273=2) (234=3) (232=4)(274=5) (238=6) (238=7)(else=8) INTO d17_10.
VARIABLE LABELS   d17_10  'd17_10_Profissão'.

VALUE LABELS d17_10
1 'Pedagogo'
2 'Assistente Social'
3 'Antropólogo'
4 'Advogado'
5 'Psicólogo'
6 'Profissional de nível médio'
7 'Sem formação profissional'
8 'Outro profissional de nivel superior'.
EXECUTE.




RECODE q17_10 (275=1) INTO d17_10bin1.
VARIABLE LABELS d17_10bin1  'd17_10bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d17_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q17_10     (273=1) INTO d17_10bin2.
VARIABLE LABELS  d17_10bin2  'd17_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d17_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q17_10  (234=1) INTO d17_10bin3.
VARIABLE LABELS  d17_10bin3  'd17_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d17_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q17_10  (232=1) INTO d17_10bin4.
VARIABLE LABELS  d17_10bin4   'd17_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d17_10bin4
1 'Advogado'.
EXECUTE.

RECODE q17_10  (274=1) INTO d17_10bin5.
VARIABLE LABELS  d17_10bin5  'd17_10bin5_Psicologo'.
EXECUTE.

VALUE LABELS  d17_10bin5
1 'Psicólogo'.
EXECUTE.



**** variáveis binárias - tipo de vínculo****


RECODE q17_11  (138=1) (139=2)(292=3) (else=4) INTO d17_11.
VARIABLE LABELS   d17_11  'd17_11_Tipo de vínculo'.

VALUE LABELS d17_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.




RECODE  d17_11  (1=1) INTO d17_11bin1.
VARIABLE LABELS   d17_11bin1  'd17_11bin1_Servidor Estatutário'.

VALUE LABELS d17_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d17_11   (2=1) INTO d17_11bin2.
VARIABLE LABELS  d17_11bin2  ' d17_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d17_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d17_11 (3=1) INTO d17_11bin3.
VARIABLE LABELS d17_11bin3    'd17_11bin3_Comissionado'.

VALUE LABELS  d17_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d17_11 (4=1) INTO d17_11bin4.
VARIABLE LABELS d17_11bin4   'd17_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d17_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.





*******************AGGREGATE VARIÁVEIS BINÁRIAS PARA MERGE*************************


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d17_9bin1_sum=SUM(d17_9bin1)
  /d17_9bin2_sum=SUM(d17_9bin2)
  /d17_9bin3_sum=SUM(d17_9bin3)
  /d17_10bin1_sum=SUM(d17_10bin1)
  /d17_10bin2_sum=SUM(d17_10bin2)
  /d17_10bin3_sum=SUM(d17_10bin3)
  /d17_10bin4_sum=SUM(d17_10bin4)
  /d17_10bin5_sum=SUM(d17_10bin5)
  /d17_11bin1_sum=SUM(d17_11bin1)
  /d17_11bin2_sum=SUM(d17_11bin2)
  /d17_11bin3_sum=SUM(d17_11bin3)
  /d17_11bin4_sum=SUM(d17_11bin4)
  /nu_trabalhador=N.




VARIABLE LABELS
d17_9bin1_sum  'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d17_9bin2_sum 'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d17_9bin3_sum 'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d17_10bin1_sum 'Número de Pedagogos'
d17_10bin2_sum 'Número de Assistentes Sociais'
d17_10bin3_sum 'Número de Antropólogos'
d17_10bin4_sum  'Número de Advogados'
d17_10bin5_sum  'Número de Psicólogos'
d17_11bin1_sum  'Número de Servidores Estatutários'
d17_11bin2_sum  'Número de Empregados Públicos(CLT)'
d17_11bin3_sum   'Número de Comissionados'
d17_11bin4_sum  'Número de profissionais com outros vínculos não permanentes'
 nu_trabalhador 'Número de trabalhadores no Posto'
.
EXECUTE.

