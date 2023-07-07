****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

********************************************* BACKUP E CORREÇÕES

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Trocar o ano de referência no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE d31_2=DATEDIFF((DATE.DMY(31,12,2015)),q31_2,"years").
VARIABLE LABELS d31_2 'd31_2_Idade em anos (data ref. 31-12-2015)'.
EXECUTE.

**** REMOVER DA d31_2 os casos em que o profissional tem idade < 16 ou > 70.
RECODE d31_2 (LOWEST thru 15=SYSMIS) (71 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE d31_2 (16 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 70=4) INTO d31_2_categoria.
VARIABLE LABELS  d31_2_categoria  'd31_2_categoria_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  d31_2_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
EXECUTE.



RECODE q31_8 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d31_8.
VARIABLE LABELS d31_8 'd31_8_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d31_8
0 'Nível Fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE q31_10 (292=3) (139=2) (361=2) (363=2) (138=1) (else=4) INTO d31_10.
VARIABLE LABELS   d31_10 'd31_10_Tipo de vínculo'.

VALUE LABELS d31_10
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d31_8 (0=1) INTO d31_8bin1.
VARIABLE LABELS  d31_8bin1 'd31_8bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d31_8bin1
1 'Nível Fundamental'.
EXECUTE.

RECODE d31_8 (1=1) INTO d31_8bin2.
VARIABLE LABELS  d31_8bin2 'd31_8bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d31_8bin2
1 'Nível Médio'.
EXECUTE.

RECODE d31_8 (2=1) INTO d31_8bin3.
VARIABLE LABELS  d31_8bin3 'd31_8bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d31_8bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q31_9 (275=1) INTO d31_9bin1.
VARIABLE LABELS d31_9bin1 'd31_9bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d31_9bin1
1 'Pedagogo'.
EXECUTE.

RECODE q31_9 (273=1) INTO d31_9bin2.
VARIABLE LABELS  d31_9bin2 'd31_9bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d31_9bin2
1 'Assistente Social'.
EXECUTE.

RECODE q31_9 (234=1) INTO d31_9bin3.
VARIABLE LABELS  d31_9bin3 'd31_9bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d31_9bin3
1 'Antropólogo'.
EXECUTE.

RECODE q31_9 (232=1) INTO d31_9bin4.
VARIABLE LABELS  d31_9bin4 'd31_9bin4_Advogado'.
EXECUTE.

VALUE LABELS  d31_9bin4
1 'Advogado'.
EXECUTE.

RECODE q31_9 (274=1) INTO d31_9bin5.
VARIABLE LABELS  d31_9bin5 'd31_9bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d31_9bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d31_10 (1=1) INTO d31_10bin1.
VARIABLE LABELS   d31_10bin1 'd31_10bin1_Servidor Estatutário'.

VALUE LABELS  d31_10bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d31_10  (2=1) INTO d31_10bin2.
VARIABLE LABELS  d31_10bin2 'd31_10bin2_Empregado Público (CLT)'.

VALUE LABELS  d31_10bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d31_10 (3=1) INTO d31_10bin3.
VARIABLE LABELS d31_10bin3 'd31_10bin3_Comissionado'.

VALUE LABELS  d31_10bin3
1 'Comissionado'.
EXECUTE.

RECODE d31_10 (4=1) INTO d31_10bin4.
VARIABLE LABELS d31_10bin4 'd31_10bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d31_10bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /d31_8bin1_sum=SUM(d31_8bin1)
  /d31_8bin2_sum=SUM(d31_8bin2)
  /d31_8bin3_sum=SUM(d31_8bin3)
  /d31_9bin1_sum=SUM(d31_9bin1) 
  /d31_9bin2_sum=SUM(d31_9bin2) 
  /d31_9bin3_sum=SUM(d31_9bin3) 
  /d31_9bin4_sum=SUM(d31_9bin4) 
  /d31_9bin5_sum=SUM(d31_9bin5) 
  /d31_10bin1_sum=SUM(d31_10bin1) 
  /d31_10bin2_sum=SUM(d31_10bin2) 
  /d31_10bin3_sum=SUM(d31_10bin3) 
  /d31_10bin4_sum=SUM(d31_10bin4)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d31_8bin1_sum'd31_8bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
/d31_8bin2_sum'd31_8bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
/d31_8bin3_sum'd31_8bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
/d31_9bin1_sum'd31_9bin1_sum_Número de Pedagogos'
/d31_9bin2_sum'd31_9bin2_sum_Número de Assistentes Sociais'
/d31_9bin3_sum'd31_9bin3_sum_Número de Antropólogos'
/d31_9bin4_sum'd31_9bin4_sum_Número de Advogados'
/d31_9bin5_sum'd31_9bin5_sum_Número de Psicólogos'
/d31_10bin1_sum'd31_10bin1_sum_Número de Servidores Estatutários'
/d31_10bin2_sum'd31_10bin2_sum_Número de Empregados Públicos(CLT)'
/d31_10bin3_sum'd31_10bin3_sum_Número de Comissionados'
/d31_10bin4_sum'd31_10bin4_sum_Número de profissionais com outros vínculos não permanentes'
/nu_trabalhadores'Número de trabalhdores no CRAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d31_8bin1_sum d31_8bin2_sum d31_8bin3_sum d31_9bin1_sum d31_9bin2_sum d31_9bin3_sum 
d31_9bin4_sum d31_9bin5_sum d31_10bin1_sum d31_10bin2_sum d31_10bin3_sum d31_10bin4_sum (SYSMIS=0)
.
EXECUTE.

VARIABLE LABELS
d31_8bin1_sum 'd31_8bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d31_8bin2_sum'd31_8bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d31_8bin3_sum'd31_8bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
d31_9bin1_sum'd31_9bin1_sum_Número de Pedagogos'
 d31_9bin2_sum'd31_9bin2_sum_Número de Assistentes Sociais'
 d31_9bin3_sum'd31_9bin3_sum_Número de Antropólogos'
 d31_9bin4_sum'd31_9bin4_sum_Número de Advogados'
 d31_9bin5_sum'd31_9bin5_sum_Número de Psicólogos'.
EXECUTE.

VARIABLE LABELS
 d31_10bin1_sum'd31_10bin1_Número de Servidores Estatutários'
 d31_10bin2_sum'd31_10bin2_Número de Empregados Públicos(CLT)'
 d31_10bin3_sum'd31_10bin3_Número de Comissionados'
 d31_10bin4_sum'd31_10bin4_Número de profissionais com outros vínculos '+
'não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Ser. Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d31_8bin1_sum
d31_8bin2_sum
d31_8bin3_sum
d31_9bin1_sum
d31_9bin2_sum
d31_9bin3_sum
d31_9bin4_sum
d31_9bin5_sum
d31_10bin1_sum
d31_10bin2_sum
d31_10bin3_sum
d31_10bin4_sum
(F8.0).

SORT CASES BY NU_IDENTIFICADOR(A).


******* MESCLAR AS VARIÁVEIS DA BASE AGGR À BASE DADOS GERAIS



