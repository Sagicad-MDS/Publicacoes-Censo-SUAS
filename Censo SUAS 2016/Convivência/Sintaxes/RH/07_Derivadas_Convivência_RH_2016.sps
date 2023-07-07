* Encoding: UTF-8.
****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

********************************************* BACKUP E CORREÇÕES

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Trocar o ano de referência no COMPUTE abaixo. Em seguida rodar a sintax**

COMPUTE num_data=DATE.DMY(31,12,2016).
EXECUTE.

COMPUTE v10718data=number(v10718, DATE10).
VARIABLE LABELS v10718data "v10718data_Data de nascimento -formato data".
VARIABLE LEVEL v10718data  (SCALE).

COMPUTE  D23_2=DATEDIFF(13702521600,  v10718data,"years").
format D23_2 (F2.0).
EXECUTE.

VARIABLE LABELS D23_2 'Idade em anos (data ref. 31-12-2016)'.
EXECUTE.



**** REMOVER DA D23_2 os casos em que o profissional tem idade < 16 ou > 70.

RECODE D23_2 (LOWEST thru 15=SYSMIS) (71 thru HIGHEST=SYSMIS).
EXECUTE.

***********************************************************************************************************

RECODE D23_2 (16 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 70=4) INTO d23_2_categoria.
VARIABLE LABELS  D23_2_categoria  'D23_2_categoria_Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D23_2_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
EXECUTE.



RECODE q23_9 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d23_9.
VARIABLE LABELS d23_9 'd23_9_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d23_9
0 'Nível Fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE q23_11 (292=3) (139=2) (361=2) (363=2) (138=1) (else=4) INTO d23_11.
VARIABLE LABELS   d23_11 'd23_11_Tipo de vínculo'.

VALUE LABELS d23_11
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.
EXECUTE.

****variáveis binárias escolaridade***

RECODE d23_9 (0=1) INTO d23_9bin1.
VARIABLE LABELS  d23_9bin1 'd23_9bin1_Nível fundamental - trabalhadores que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d23_9bin1
1 'Nível Fundamental'.
EXECUTE.

RECODE d23_9 (1=1) INTO d23_9bin2.
VARIABLE LABELS  d23_9bin2 'd23_9bin2_Nível médio - trabalhadores com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS  d23_9bin2
1 'Nível Médio'.
EXECUTE.

RECODE d23_9 (2=1) INTO d23_9bin3.
VARIABLE LABELS  d23_9bin3 'd23_9bin3_Nível superior - inclui trabalhadores graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS  d23_9bin3
1 'Nível Superior'.
EXECUTE.

****variáveis binárias profissão****

RECODE q23_10 (275=1) INTO d23_10bin1.
VARIABLE LABELS d23_10bin1 'd23_10bin1_Pedagogo'.
EXECUTE.

VALUE LABELS d23_10bin1
1 'Pedagogo'.
EXECUTE.

RECODE q23_10 (273=1) INTO d23_10bin2.
VARIABLE LABELS  d23_10bin2 'd23_10bin2_Assistente Social'.
EXECUTE.

VALUE LABELS  d23_10bin2
1 'Assistente Social'.
EXECUTE.

RECODE q23_10 (234=1) INTO d23_10bin3.
VARIABLE LABELS  d23_10bin3 'd23_10bin3_Antropólogo'.
EXECUTE.

VALUE LABELS  d23_10bin3
1 'Antropólogo'.
EXECUTE.

RECODE q23_10 (232=1) INTO d23_10bin4.
VARIABLE LABELS  d23_10bin4 'd23_10bin4_Advogado'.
EXECUTE.

VALUE LABELS  d23_10bin4
1 'Advogado'.
EXECUTE.

RECODE q23_10 (274=1) INTO d23_10bin5.
VARIABLE LABELS  d23_10bin5 'd23_10bin5_Psicólogo'.
EXECUTE.

VALUE LABELS  d23_10bin5
1 'Psicólogo'.
EXECUTE.

**** variáveis binárias - tipo de vínculo****

RECODE  d23_11 (1=1) INTO d23_11bin1.
VARIABLE LABELS   d23_11bin1 'd23_11bin1_Servidor Estatutário'.

VALUE LABELS  d23_11bin1
1 'Servidor Estatutário'.
EXECUTE.

RECODE d23_11  (2=1) INTO d23_11bin2.
VARIABLE LABELS  d23_11bin2 'd23_11bin2_Empregado Público (CLT)'.

VALUE LABELS  d23_11bin2
1 'Empregado Público (CLT)'.
EXECUTE.

RECODE d23_11 (3=1) INTO d23_11bin3.
VARIABLE LABELS d23_11bin3 'd23_11bin3_Comissionado'.

VALUE LABELS  d23_11bin3
1 'Comissionado'.
EXECUTE.

RECODE d23_11 (4=1) INTO d23_11bin4.
VARIABLE LABELS d23_11bin4 'd23_11bin4_Outros vínculos não permanentes - inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Servidor Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente'.

VALUE LABELS  d23_11bin4
1 'Outros vínculos não permanentes'.
EXECUTE.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /d23_9bin1_sum=SUM(d23_9bin1)
  /d23_9bin2_sum=SUM(d23_9bin2)
  /d23_9bin3_sum=SUM(d23_9bin3)
  /d23_10bin1_sum=SUM(d23_10bin1) 
  /d23_10bin2_sum=SUM(d23_10bin2) 
  /d23_10bin3_sum=SUM(d23_10bin3) 
  /d23_10bin4_sum=SUM(d23_10bin4) 
  /d23_10bin5_sum=SUM(d23_10bin5) 
  /d23_11bin1_sum=SUM(d23_11bin1) 
  /d23_11bin2_sum=SUM(d23_11bin2) 
  /d23_11bin3_sum=SUM(d23_11bin3) 
  /d23_11bin4_sum=SUM(d23_11bin4)
  /nu_trabalhadores=N
.
EXECUTE.

DATASET ACTIVATE aggr.

VARIABLE LABELS
d23_9bin1_sum'd23_9bin1_sum_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
/d23_9bin2_sum'd23_9bin2_sum_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
/d23_9bin3_sum'd23_9bin3_sum_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
/d23_10bin1_sum'd23_10bin1_sum_Número de Pedagogos'
/d23_10bin2_sum'd23_10bin2_sum_Número de Assistentes Sociais'
/d23_10bin3_sum'd23_10bin3_sum_Número de Antropólogos'
/d23_10bin4_sum'd23_10bin4_sum_Número de Advogados'
/d23_10bin5_sum'd23_10bin5_sum_Número de Psicólogos'
/d23_11bin1_sum'd23_11bin1_sum_Número de Servidores Estatutários'
/d23_11bin2_sum'd23_11bin2_sum_Número de Empregados Públicos(CLT)'
/d23_11bin3_sum'd23_11bin3_sum_Número de Comissionados'
/d23_11bin4_sum'd23_11bin4_sum_Número de profissionais com outros vínculos não permanentes'
/nu_trabalhadores'Número de trabalhdores no CRAS'.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE d23_9bin1_sum d23_9bin2_sum d23_9bin3_sum d23_10bin1_sum d23_10bin2_sum d23_10bin3_sum 
d23_10bin4_sum d23_10bin5_sum d23_11bin1_sum d23_11bin2_sum d23_11bin3_sum d23_11bin4_sum (SYSMIS=0)
.
EXECUTE.

VARIABLE LABELS
d23_9bin1_sum 'd23_9bin1_Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
d23_9bin2_sum'd23_9bin2_Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
d23_9bin3_sum'd23_9bin3_Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.
EXECUTE.

VARIABLE LABELS
d23_10bin1_sum'd23_10bin1_sum_Número de Pedagogos'
 d23_10bin2_sum'd23_10bin2_sum_Número de Assistentes Sociais'
 d23_10bin3_sum'd23_10bin3_sum_Número de Antropólogos'
 d23_10bin4_sum'd23_10bin4_sum_Número de Advogados'
 d23_10bin5_sum'd23_10bin5_sum_Número de Psicólogos'.
EXECUTE.

VARIABLE LABELS
 d23_11bin1_sum'd23_11bin1_Número de Servidores Estatutários'
 d23_11bin2_sum'd23_11bin2_Número de Empregados Públicos(CLT)'
 d23_11bin3_sum'd23_11bin3_Número de Comissionados'
 d23_11bin4_sum'd23_11bin4_Número de profissionais com outros vínculos '+
'não permanentes (inclui Trabalhador de Empresas/Cooperativa/Entidade Prestadora de Serviços; Voluntários; Ser. Temporário; Sem vínculo; Terceirizado e Outro vínculo não permanente)'.
EXECUTE.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no CRAS'.
EXECUTE.

FORMATS
d23_9bin1_sum
d23_9bin2_sum
d23_9bin3_sum
d23_10bin1_sum
d23_10bin2_sum
d23_10bin3_sum
d23_10bin4_sum
d23_10bin5_sum
d23_11bin1_sum
d23_11bin2_sum
d23_11bin3_sum
d23_11bin4_sum
(F8.0).

SORT CASES BY NU_IDENTIFICADOR(A).


******* MESCLAR AS VARIÁVEIS DA BASE AGGR À BASE DADOS GERAIS



