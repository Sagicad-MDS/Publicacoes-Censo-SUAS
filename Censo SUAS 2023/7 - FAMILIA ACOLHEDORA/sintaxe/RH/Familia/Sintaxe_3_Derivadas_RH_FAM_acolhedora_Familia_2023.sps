* Encoding: UTF-8.
**Derivadas - Questões de RH_FAM**

***Idade calculada na planilha excel***********


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

COMPUTE q48_2_rec=number(q48_2, EDATE10).
VARIABLE LABELS q48_2_rec "q48_2_data nascimento recodificada".
VARIABLE LEVEL  q48_2_rec (SCALE).
FORMATS q48_2_rec (EDATE10).
VARIABLE WIDTH  q48_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2023, q48_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  
FREQUENCIES VARIABLES=Idade 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.



RECODE Idade (16 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 80=5) INTO 
    d48_2_Faixas_etarias.
VARIABLE LABELS  d48_2_Faixas_etarias 'Faixa etária das Familias acolhedoras'.
EXECUTE.

VALUE LABELS
/d48_2_Faixas_etarias
1'16 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'61 a 80 anos'
.


****************************************************************************************


RECODE q48_9  (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d48_9.
VARIABLE LABELS  d48_9  'd48_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d48_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.



RECODE q48_11  (SYSMIS=SYSMIS) (138=1) (139=2) (292=3) (ELSE=4) INTO d48_11.
VARIABLE LABELS  d48_11  'd48_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS d48_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d48_9 (0=1) INTO d48_9bin1.
VARIABLE LABELS  d48_9bin1  'd48_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d48_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d48_9(1=1) INTO d48_9bin2.
VARIABLE LABELS  d48_9bin2  'd48_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d48_9
1 'Nível Médio'.
EXECUTE.

RECODE d48_9(2=1) INTO d48_9bin3.
VARIABLE LABELS  d48_9bin3 'd48_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d48_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q48_10  (275=1) INTO d48_10bin1.
VARIABLE LABELS  d48_10bin1 'd48_10bin1_Pedagogo'.
EXECUTE.


VALUE LABELS d48_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q48_10 (273=1) INTO d48_10bin2.
VARIABLE LABELS d48_10bin2 'd48_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d48_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q48_10  (234=1) INTO d48_10bin3.
VARIABLE LABELS  d48_10bin3  'd48_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d48_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q48_10  (232=1) INTO d48_10bin4.
VARIABLE LABELS d48_10bin4  'd48_10 bin4_Advogado'.
EXECUTE.

VALUE LABELS  d48_10bin4
1 'Advogado'.
EXECUTE.

RECODE q48_10 (274=1) INTO d48_10bin5.
VARIABLE LABELS  d48_10bin5  'd48_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d48_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d48_11  (1=1) INTO d48_11bin1.
VARIABLE LABELS   d48_11bin1  'd48_11bin1_Servidor Estatutário'.

VALUE LABELS  d48_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d48_11 (2=1) INTO d48_11bin2.
VARIABLE LABELS  d48_11bin2  'd48_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d48_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d48_11 (3=1) INTO d48_11bin3.
VARIABLE LABELS d48_11bin3  'd48_11bin3_Comissionado'.

VALUE LABELS  d48_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d48_11 (4=1) INTO d48_11bin4.
VARIABLE LABELS d48_11bin4  'd48_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d48_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


AGGREGATE
/BREAK=NU_IDENTIFICADOR
 /d48_9bin1_sum=SUM(d48_9bin1)
  /d48_9bin2_sum=SUM(d48_9bin2)
  /d48_9bin3_sum=SUM(d48_9bin3)
  /d48_10bin1_sum=SUM(d48_10bin1)
  /d48_10bin2_sum=SUM(d48_10bin2)
  /d48_10bin3_sum=SUM(d48_10bin3)
  /d48_10bin4_sum=SUM(d48_10bin4)
  /d48_10bin5_sum=SUM(d48_10bin5)
  /d48_11bin1_sum=SUM(d48_11bin1)
  /d48_11bin2_sum=SUM(d48_11bin2)
  /d48_11bin3_sum=SUM(d48_11bin3)
  /d48_11bin4_sum=SUM(d48_11bin4)
  /nu_familias_acolhedoras=N.
.
EXECUTE.

VARIABLE LABELS
d48_9bin1_sum 'd48_9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d48_9bin2_sum 'd48_9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d48_9bin3_sum 'd48_9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d48_10bin1_sum 'd48_10bin1_sum_Número de Pedagogos'
d48_10bin2_sum 'd48_10bin2_sum_Número de Assistentes Sociais'
d48_10bin3_sum 'd48_10bin3_sum_Número de Antropólogos'
d48_10bin4_sum 'd48_10bin4_sum_Número de Advogados'
d48_10bin5_sum 'd48_10bin5_sum_Número de Psicólogos'
d48_11bin1_sum 'd48_11bin1_sum_Número de Servidores Estatutários'
d48_11bin2_sum 'd48_11bin2_sum_Número de Empregados Públicos(CLT)'
d48_11bin3_sum 'd48_11bin3_sum_Número de Comissionados'
d48_11bin4_sum 'd48_11bin4_sum_Número de profissionais com outros vínculos não permanentes'
nu_familias_acolhedoras 'numeros de familias acolhedoras'
.
EXECUTE.







