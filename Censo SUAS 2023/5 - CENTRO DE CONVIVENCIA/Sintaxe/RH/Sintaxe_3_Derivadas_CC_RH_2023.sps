* Encoding: UTF-8.
**Derivadas - Questões de RH**

***Idade calculada na planilha excel***********


STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2023". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2023"'. 
EXECUTE.


***transformar variavel data string em date

* Date and Time Wizard: DataCenso_2023

COMPUTE DataCenso_2023=number(DataCenso, EDATE10).
VARIABLE LABELS DataCenso_2023 "DataCenso recodificada".
VARIABLE LEVEL  DataCenso_2023 (SCALE).
FORMATS DataCenso_2023 (EDATE10).
VARIABLE WIDTH  DataCenso_2023 (10).
EXECUTE.



COMPUTE q36_2_rec=number(q36_2, EDATE10).
VARIABLE LABELS q36_2_rec "q36_2_data nascimento recodificada".
VARIABLE LEVEL  q36_2_rec (SCALE).
FORMATS q36_2_rec (EDATE10).
VARIABLE WIDTH  q36_2_rec(10).
EXECUTE.





**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2023, q36_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  


FREQUENCIES VARIABLES=Idade .
 


RECODE Idade (14 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 80=5) (81 thru 100=6)  INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Trabalhadores dos Centro de Convivência'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1'14 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'61 a 80 anos'
6'Mais de 80 anos'.


***** Escolaridade


RECODE q36_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d36_9.
VARIABLE LABELS  d36_9  'd36_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d36_9
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.




****variáveis binárias profissão****

RECODE q36_10  (275=1) (273=2) (234=3) (232=4)(274=5) (238=6) (238=7)(else=8) INTO d36_10.
VARIABLE LABELS   d36_10  'd36_10_Profissão'.

VALUE LABELS d36_10
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





*************** Vinculo ******** 

RECODE q36_11  (138=1) (361=2) (292=3) (362=4) (142=5) (265=5) (266=5) (293=5)  INTO d36_11.
VARIABLE LABELS  d36_11 'd36_11_Tipo de vínculo'.
EXECUTE.
VALUE LABELS d36_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'CLT - Setor Privado'
5 'Outros vínculos não permanentes'.
EXECUTE.




****variáveis binárias escolaridade***

RECODE d36_9 (0=1) INTO d36_9bin1.
VARIABLE LABELS  d36_9bin1 'd36_9bin1_Nível fundamental '.
EXECUTE.

VALUE LABELS d36_9bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d36_9 (1=1) INTO d36_9bin2.
VARIABLE LABELS  d36_9bin2  'd36_9bin2_Nível médio'.
EXECUTE.

VALUE LABELS  d36_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d36_9 (2=1) INTO d36_9bin3.
VARIABLE LABELS  d36_9bin3 'd36_9bin3_Nível superior'.
EXECUTE.

VALUE LABELS  d36_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q36_10 (275=1) INTO d36_10bin1.
VARIABLE LABELS  d36_10bin1 'd36_10bin1_Pedagogo'.
EXECUTE.


VALUE LABELS d36_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q36_10 (273=1) INTO d36_10bin2.
VARIABLE LABELS  d36_10bin2 'd36_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d36_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q36_10  (234=1) INTO d36_10bin3.
VARIABLE LABELS  d36_10bin3 'd36_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS d36_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q36_10 (232=1) INTO d36_10bin4.
VARIABLE LABELS  d36_10bin4 'd36_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d36_10bin4
1 'Advogado'.
EXECUTE.

RECODE q36_10 (274=1) INTO d36_10bin5.
VARIABLE LABELS  d36_10bin5 'd36_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d36_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d36_11 (1=1) INTO d36_11bin1.
VARIABLE LABELS   d36_11bin1 'd36_11bin1_Servidor Estatutário'.

VALUE LABELS  d36_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d36_11  (2=1) INTO d36_11bin2.
VARIABLE LABELS  d36_11bin2 'd36_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d36_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d36_11 (3=1) INTO d36_11bin3.
VARIABLE LABELS d36_11bin3 'd36_11bin3_Comissionado'.

VALUE LABELS  d36_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d36_11 (4=1) INTO d36_11bin4.
VARIABLE LABELS d36_11bin4 'd36_11bin4_CLT - Setor Privado'.

VALUE LABELS  d36_11bin4
1 'CLT - Setor Privado'.
EXECUTE.

RECODE d36_11 (5=1) INTO d36_11bin5.
VARIABLE LABELS d36_11bin5 'd36_11bin5_Outros vínculos não permanentes'.

VALUE LABELS  d36_11bin5
1 'Outros vínculos não permanentes'.
EXECUTE.


RECODE d36_9bin1 d36_9bin2 d36_9bin3 d36_10bin1 d36_10bin2 d36_10bin3 d36_10bin4 d36_10bin5 
    d36_11bin1 d36_11bin2 d36_11bin3 d36_11bin4 d36_11bin5 (SYSMIS=0).
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************



DATASET ACTIVATE DataSet1.
AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=NU_IDENTIFICADOR
  /d36_9bin1_sum=SUM(d36_9bin1) 
  /d36_9bin2_sum=SUM(d36_9bin2) 
  /d36_9bin3_sum=SUM(d36_9bin3) 
  /d36_10bin1_sum=SUM(d36_10bin1) 
  /d36_10bin2_sum=SUM(d36_10bin2) 
  /d36_10bin3_sum=SUM(d36_10bin3) 
  /d36_10bin4_sum=SUM(d36_10bin4) 
  /d36_10bin5_sum=SUM(d36_10bin5) 
  /d36_11bin1_sum=SUM(d36_11bin1) 
  /d36_11bin2_sum=SUM(d36_11bin2) 
  /d36_11bin3_sum=SUM(d36_11bin3) 
  /d36_11bin4_sum=SUM(d36_11bin4) 
  /d36_11bin5_sum=SUM(d36_11bin5)
  /nu_trabalhadores=N.



VARIABLE LABELS
d36_9bin1_sum 'd36.9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade)'
d36_9bin2_sum  'd36.9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d36_9bin3_sum  'd36.9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
d36_10bin1_sum  'd36.10bin1_sum_Número de Pedagogos'
d36_10bin2_sum 'd36.10bin2_sum_Número de Assistentes Sociais'
d36_10bin3_sum  'd36.10bin3_sum_Número de Antropólogos'
d36_10bin4_sum  'd36.10bin4_sum_Número de Advogados'
d36_10bin5_sum  'd36.10bin5_sum_Número de Psicólogos'
d36_11bin1_sum  'd36.11bin1_sum_Número de Servidores Estatutários'
d36_11bin2_sum  'd36.11bin2_sum_Número de Empregados Públicos(CLT)'
d36_11bin3_sum  'd36.11bin3_sum_Número de Comissionados'
d36_11bin4_sum  'd36.11bin4_sum_Número de CLT - Setor Privado'
d36_11bin5_sum  'd36.11bin4_sum_Número de profissionais com outros vínculos não permanentes'
nu_trabalhadores  'Número de trabalhadores na unidade'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE 
d36_9bin1_sum d36_9bin2_sum d36_9bin3_sum d36_10bin1_sum d36_10bin2_sum d36_10bin3_sum 
d36_10bin4_sum d36_10bin5_sum d36_11bin1_sum d36_11bin2_sum d36_11bin3_sum d36_11bin4_sum  d36_11bin5_sum  nu_trabalhadores (SYSMIS=0). 
EXECUTE.

VARIABLE LABELS
 d36_9bin1_sum 'd36.9bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade)'
 d36_9bin2_sum'd36.9bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d36_9bin3_sum'd36.9bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
 d36_10bin1_sum'd36.10bin1_sum_Número de Pedagogos'
 d36_10bin2_sum'd36.10bin2_sum_Número de Assistentes Sociais'
d36_10bin3_sum'd36.10bin3_sum_Número de Antropólogos'
 d36_10bin4_sum'd36.10bin4_sum_Número de Advogados'
 d36_10bin5_sum'd36.10bin5_sum_Número de Psicólogos'.
EXECUTE.

 VARIABLE LABELS
 d36_11bin1_sum'd36.11bin1_Número de Servidores Estatutários'
d36_11bin2_sum'd36.11bin2_Número de Empregados Públicos(CLT)'
 d36_11bin3_sum'd36.11bin3_Número de Comissionados'
d36_11bin4_sum'd3611bin4_Número de profissionais com outros vínculos não permanentes '.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número total de trabalhadores'.
EXECUTE.


