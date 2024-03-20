* Encoding: UTF-8.

**Derivadas - Questões de RH**


*** IDADE ***

STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2020". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2020"'. 
EXECUTE.

******transfromar data nascimento string em date

COMPUTE q51_2_rec=number(q51_2, EDATE10).
VARIABLE LABELS q51_2_rec "q51_2_data nascimento recodificada".
VARIABLE LEVEL  q51_2_rec (SCALE).
FORMATS q51_2_rec (EDATE10).
VARIABLE WIDTH  q51_2_rec(10).
EXECUTE.

* Assistente de data e hora: Idade.

COMPUTE  Idade=DATEDIF(DataCenso_2020, q51_2_rec,"years").
VARIABLE LABELS  Idade "IDade".
VARIABLE LEVEL  Idade (SCALE).
FORMATS  Idade (F5.0).
VARIABLE WIDTH  Idade(5).
EXECUTE.

**transformar em FAIXA ETÁRIA*

RECODE Idade (16 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 100=5) INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores'.
EXECUTE.

VALUE LABELS Faixas_etarias 
1'16 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'Mais de 60 anos'.


*** TEMPO DO INÍCIO DO EXERCÍCIO DA FUNÇÃO

******transfromar string em date para o tempo de exercício da função

COMPUTE q51_14_rec=number(q51_14, EDATE10).
VARIABLE LABELS q51_14_rec "q51_14_Inicio do exercício da função".
VARIABLE LEVEL  q51_14_rec (SCALE).
FORMATS q51_14_rec (EDATE10).
VARIABLE WIDTH  q51_14_rec(10).
EXECUTE.


**transformar data em anos**

COMPUTE  Tempo_funcao =DATEDIF(DataCenso_2020, q51_14_rec,"years").
VARIABLE LABELS  Tempo_funcao "Tempo do início do exercício da função".
VARIABLE LEVEL  Tempo_funcao (SCALE).
FORMATS  Tempo_funcao (F5.0).
VARIABLE WIDTH  Tempo_funcao (5).
EXECUTE.

*** criar faixas

RECODE Tempo_funcao (0 =0) (1 thru 2=1) (3 thru 5=2) (6 thru 10=3) (11 thru 20=4) (21 thru highest=5) INTO 
    Tempo_funcao_faixas.
VARIABLE LABELS  Tempo_funcao_faixas 'Tempo do início do exercício da função_faixas'.
EXECUTE.

VALUE LABELS Tempo_funcao_faixas
0 'Menos de 1 ano'
1 '1 a 2 anos'
2 '3 a 5 anos'
3 '6 a 10 anos'
4 '11 a 20 anos' 
5 'Mais de 20 anos'.


RECODE q51_9  (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO D51_9.
VARIABLE LABELS  D51_9  'D51_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS D51_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.


RECODE q51_11  (138=1) (139=2) (292=3) (ELSE=4) INTO D51_11.
VARIABLE LABELS  D51_11 'D51_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS D51_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE D51_9 (0=1) INTO D51_9bin1.
VARIABLE LABELS  D51_9bin1 'D51_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS D51_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE D51_9 (1=1) INTO D51_9bin2.
VARIABLE LABELS  D51_9bin2  'D51_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  D51_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE D51_9 (2=1) INTO D51_9bin3.
VARIABLE LABELS  D51_9bin3 'D51_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  D51_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****


RECODE q51_10 (275=1) INTO D51_10bin1.
VARIABLE LABELS  D51_10bin1 'D51_10bin1_Pedagogo'.
EXECUTE.


VALUE LABELS D51_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q51_10 (273=1) INTO D51_10bin2.
VARIABLE LABELS  D51_10bin2 'D51_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  D51_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q51_10  (234=1) INTO D51_10bin3.
VARIABLE LABELS  D51_10bin3 'D51_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS D51_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q51_10 (232=1) INTO D51_10bin4.
VARIABLE LABELS  D51_10bin4 'D51_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  D51_10bin4
1 'Advogado'.
EXECUTE.

RECODE q51_10 (274=1) INTO D51_10bin5.
VARIABLE LABELS  D51_10bin5 'D51_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  D51_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  D51_11 (1=1) INTO D51_11bin1.
VARIABLE LABELS   D51_11bin1 'D51_11bin1_Servidor Estatutário'.

VALUE LABELS  D51_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE D51_11  (2=1) INTO D51_11bin2.
VARIABLE LABELS  D51_11bin2 'D51_11bin2_Empregado Público (CLT)'.

VALUE LABELS  D51_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE D51_11 (3=1) INTO D51_11bin3.
VARIABLE LABELS D51_11bin3 'D51_11bin3_Comissionado'.

VALUE LABELS  D51_11bin3
1 'Comissionado'.
EXECUTE.

RECODE D51_11 (4=1) INTO D51_11bin4.
VARIABLE LABELS D51_11bin4 'D51_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  D51_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.

if (nvalid(nu_identificador)) nu_trabalhadores =1. 
execute. 

********************AGGREGATE VARIÁVEIS BINÁRIAS**************************



AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /D51_9bin1_sum=SUM(D51_9bin1) 
  /D51_9bin2_sum=SUM(D51_9bin2) 
  /D51_9bin3_sum=SUM(D51_9bin3) 
  /D51_10bin1_sum=SUM(D51_10bin1) 
  /D51_10bin2_sum=SUM(D51_10bin2) 
  /D51_10bin3_sum=SUM(D51_10bin3) 
  /D51_10bin4_sum=SUM(D51_10bin4) 
  /D51_10bin5_sum=SUM(D51_10bin5) 
  /D51_11bin1_sum=SUM(D51_11bin1) 
  /D51_11bin2_sum=SUM(D51_11bin2) 
  /D51_11bin3_sum=SUM(D51_11bin3) 
  /D51_11bin4_sum=SUM(D51_11bin4) 
  /nu_trabalhadores_sum=SUM(nu_trabalhadores).



VARIABLE LABELS
D51_9bin1_sum 'D51_9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
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
D51_11bin4_sum  'D51_11bin4_sum_Número de profissionais com outros vínculos não permanentes'
nu_trabalhadores_sum  'nu_trabalhadores_sum_Número de trabalhadores na unidade'.
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
nu_trabalhadores_sum (SYSMIS=0). 
execute.



VARIABLE LABELS
 D51_9bin1_sum 'D51_9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D51_9bin2_sum 'D51_9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D51_9bin3_sum ' D51_9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 D51_10bin1_sum'D51_10bin1_sum_Número de Pedagogos'
 D51_10bin2_sum'D51_10bin2_sum_Número de Assistentes Sociais'
 D51_10bin3_sum'D51_10bin3_sum_Número de Antropólogos'
 D51_10bin4_sum' D51_10bin4_sum_Número de Advogados'
 D51_10bin5_sum' D51_10bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 D51_11bin1_sum' D51_11bin1_sum_Número de Servidores Estatutários'
 D51_11bin2_sum' D51_11bin1_sum_Número de Empregados Públicos(CLT)'
 D51_11bin3_sum' D51_11bin3_sum_Número de Comissionados'
 D51_11bin4_sum' D51_11bin4_sum_Número de profissionais com outros vínculos não permanentes'.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores na unidade executora do UA'.
EXECUTE.






