* Encoding: UTF-8.

**Derivadas - Questões de RH**



****criar variavel data Censo


STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2022". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2022"'. 
EXECUTE.

***transformar variavel data string em date

* Date and Time Wizard: DataCenso_2022.
COMPUTE DataCenso_2022=number(DataCenso, EDATE10).
VARIABLE LABELS DataCenso_2022 "DataCenso recodificada".
VARIABLE LEVEL  DataCenso_2022 (SCALE).
FORMATS DataCenso_2022 (EDATE10).
VARIABLE WIDTH  DataCenso_2022(10).
EXECUTE.



******transfromar data nascimento string em date

*COMPUTE q51_2_rec=number(q51_2, EDATE10).
*VARIABLE LABELS q51_2_rec "q51_2_data nascimento recodificada".
*VARIABLE LEVEL  q51_2_rec (SCALE).
*FORMATS q51_2_rec (EDATE10).
*VARIABLE WIDTH  q51_2_rec(10).
*EXECUTE.

**transformar em data**


COMPUTE  Idade=DATEDIF(DataCenso_2022, q51_2, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  

RECODE Idade (Lowest thru 13=SYSMIS).
EXECUTE.

**transformar em FAIXA ETÁRIA*

RECODE Idade (14 thru 17=1) (18 thru 29=2) (30 thru 40=3) (41 thru 50=4) (51 thru 60=5) (61 thru 100=6) INTO  Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores'.
EXECUTE.

VALUE LABELS Faixas_etarias 
1 '14 a 17 anos'
2 '18 a 29 anos'
3 '30 a 40 anos'
4 '41 a 50 anos'
5 '51 a 60 anos' 
6 'Mais de 60 anos'
.

*** TEMPO DO INÍCIO DO EXERCÍCIO DA FUNÇÃO

******transfromar string em date para o tempo de exercício da função

*COMPUTE q51_14_rec=number(q51_14, EDATE10).
*VARIABLE LABELS q51_14_rec "q51_14_Inicio do exercício da função".
*VARIABLE LEVEL  q51_14_rec (SCALE).
*FORMATS q51_14_rec (EDATE10).
*VARIABLE WIDTH  q51_14_rec(10).
*EXECUTE.


**transformar data em anos**

COMPUTE  Tempo_funcao =DATEDIF(DataCenso_2022, q51_14,"years").
VARIABLE LABELS  Tempo_funcao "Tempo do início do exercício da função".
VARIABLE LEVEL  Tempo_funcao (SCALE).
FORMATS  Tempo_funcao (F5.0).
VARIABLE WIDTH  Tempo_funcao (5).
EXECUTE.

*** criar faixas

RECODE Tempo_funcao (0 =0) (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru highest=5) INTO Tempo_funcao_faixas.
VARIABLE LABELS  Tempo_funcao_faixas 'Tempo do início do exercício da função_faixas'.
EXECUTE.

VALUE LABELS Tempo_funcao_faixas
0 'Menos de 1 ano'
1 '1 a 2 anos'
2 '3 a 5 anos'
3 '6 a 10 anos'
4 '11 a 20 anos' 
5 'Mais de 20 anos'.


RECODE q51_9  (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d51_9.
VARIABLE LABELS  d51_9  'd51_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d51_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


RECODE q51_11  (138=1) (139=2) (292=3) (362=4) (ELSE=5) INTO d51_11.
VARIABLE LABELS  d51_11 'd51_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS d51_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'CLT - Setor Privado'
5 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d51_9 (0=1) INTO d51_9bin1.
VARIABLE LABELS  d51_9bin1 'd51_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d51_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d51_9 (1=1) INTO d51_9bin2.
VARIABLE LABELS  d51_9bin2  'd51_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d51_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d51_9 (2=1) INTO d51_9bin3.
VARIABLE LABELS  d51_9bin3 'd51_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d51_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****


RECODE q51_10 (275=1) INTO d51_10bin1.
VARIABLE LABELS  d51_10bin1 'd51_10bin1_Pedagogo'.
EXECUTE.


VALUE LABELS d51_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q51_10 (273=1) INTO d51_10bin2.
VARIABLE LABELS  d51_10bin2 'd51_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d51_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q51_10  (234=1) INTO d51_10bin3.
VARIABLE LABELS  d51_10bin3 'd51_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS d51_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q51_10 (232=1) INTO d51_10bin4.
VARIABLE LABELS  d51_10bin4 'd51_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d51_10bin4
1 'Advogado'.
EXECUTE.

RECODE q51_10 (274=1) INTO d51_10bin5.
VARIABLE LABELS  d51_10bin5 'd51_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d51_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d51_11 (1=1) INTO d51_11bin1.
VARIABLE LABELS   d51_11bin1 'd51_11bin1_Servidor Estatutário'.

VALUE LABELS  d51_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d51_11  (2=1) INTO d51_11bin2.
VARIABLE LABELS  d51_11bin2 'd51_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d51_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d51_11 (3=1) INTO d51_11bin3.
VARIABLE LABELS d51_11bin3 'd51_11bin3_Comissionado'.

VALUE LABELS  d51_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d51_11 (4=1) INTO d51_11bin4.
VARIABLE LABELS d51_11bin4 'd51_11bin4_CLT_Setor Privado'.

VALUE LABELS  d51_11bin4
1 'CLT_Setor Privado'.
EXECUTE.

RECODE d51_11 (5=1) INTO d51_11bin5.
VARIABLE LABELS d51_11bin5 'd51_11bin5_Outros vínculos não permanentes '.

VALUE LABELS  d51_11bin5
1 'Outros vínculos não permanentes'.
EXECUTE.

*********************************************************************************************************************************************************
********************AGGREGATE VARIÁVEIS BINÁRIAS**************************


DATASET DECLARE RH_agregado.
AGGREGATE
  /OUTFILE='RH_agregado'
  /BREAK=NU_IDENTIFICADOR
  /d51_9bin1_sum=SUM(d51_9bin1) 
  /d51_9bin2_sum=SUM(d51_9bin2) 
  /d51_9bin3_sum=SUM(d51_9bin3) 
  /d51_10bin1_sum=SUM(d51_10bin1) 
  /d51_10bin2_sum=SUM(d51_10bin2) 
  /d51_10bin3_sum=SUM(d51_10bin3) 
  /d51_10bin4_sum=SUM(d51_10bin4) 
  /d51_10bin5_sum=SUM(d51_10bin5) 
  /d51_11bin1_sum=SUM(d51_11bin1) 
  /d51_11bin2_sum=SUM(d51_11bin2) 
  /d51_11bin3_sum=SUM(d51_11bin3) 
  /d51_11bin4_sum=SUM(d51_11bin4)
  /d51_11bin5_sum=SUM(d51_11bin5)
  /nu_trabalhadores=N.


VARIABLE LABELS
D51_9bin1_sum 'D51_9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade)'
D51_9bin2_sum  'D51_9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
D51_9bin3_sum  'D51_9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
D51_10bin1_sum  'D51_10bin1_sum_Número de Pedagogos'
D51_10bin2_sum 'D51_10bin2_sum_Número de Assistentes Sociais'
D51_10bin3_sum  'D51_10bin3_sum_Número de Antropólogos'
D51_10bin4_sum  'D51_10bin4_sum_Número de Advogados'
D51_10bin5_sum  'D51_10bin5_sum_Número de Psicólogos'
D51_11bin1_sum  'D51_11bin1_sum_Número de Servidores Estatutários'
D51_11bin2_sum  'D51_11bin2_sum_Número de Empregados Públicos(CLT)'
D51_11bin3_sum  'D51_11bin3_sum_Número de Comissionados'
D51_11bin4_sum  'D51_11bin4_sum_CLT Setor Privado'
D51_11bin5_sum  'D51_11bin5_sum_Número de profissionais com outros vínculos não permanentes'
nu_trabalhadores  'nu_trabalhadores_Número de trabalhadores na unidade'.
EXECUTE.

**** RECODE MISSING TO ZERO ****

recode
D51_9bin1_sum
D51_9bin2_sum
D51_9bin3_sum
D51_10bin1_sum
D51_10bin2_sum
D51_10bin3_sum
D51_10bin4_sum
D51_10bin5_sum
D51_11bin1_sum
D51_11bin2_sum
D51_11bin3_sum
D51_11bin4_sum
D51_11bin5_sum
nu_trabalhadores (SYSMIS=0). 
execute.


