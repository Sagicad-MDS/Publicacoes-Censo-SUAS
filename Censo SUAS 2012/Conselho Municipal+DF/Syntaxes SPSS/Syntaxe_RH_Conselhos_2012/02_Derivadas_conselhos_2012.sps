****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v4789 (referente à data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Será criada a variável com número procurado. Em seguida rodar a sintax abaixo**

COMPUTE  D65_2=DATEDIFF(13576291200, q65_2,"years").
format D65_2 (F2.0).
EXECUTE.

VARIABLE LABELS D65_2 'Idade em anos (data ref. 31-12-2012)'.
EXECUTE.
***********************

RECODE D65_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3)  (50 thru 100=4) INTO D65_categoria.
VARIABLE LABELS  D65_categoria  'Idade (faixas etárias)'.
EXECUTE.

VALUE LABELS  D65_categoria
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.

****variáveis binárias para Representação****

RECODE q65_5 (1=1) INTO D65_5bin1.
VARIABLE LABELS  D65_5bin1 'Representante de usuários'.
EXECUTE.

VALUE LABELS D65_5bin1
1 'Representante de usuários'.
EXECUTE.

RECODE q65_5 (2=1) INTO D65_5bin2.
VARIABLE LABELS  D65_5bin2 'Representante de organização de usuários'.
EXECUTE.

VALUE LABELS  D65_5bin2
1 'Representante de organização de usuários'.
EXECUTE.

RECODE q65_5 (3=1) INTO D65_5bin3.
VARIABLE LABELS  D65_5bin3 'Representante de entidades de assistência social'.
EXECUTE.

VALUE LABELS  D65_5bin3
1 'Representante de entidades de assistência social'.
EXECUTE.

RECODE q65_5 (4=1) INTO D65_5bin4.
VARIABLE LABELS  D65_5bin4 'Representação das entidades dos trabalhadores do setor'.
EXECUTE.

VALUE LABELS  D65_5bin4
1 'Representação das entidades dos trabalhadores do setor'.
EXECUTE.

RECODE q65_5 (5=1) INTO D65_5bin5.
VARIABLE LABELS  D65_5bin5 'Representante do Governo'.
EXECUTE.

VALUE LABELS  D65_5bin5
1 'Representante do Governo'.
EXECUTE.

********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

AGGREGATE
  /BREAK=IBGE7
  /D65_5bin1_sum=SUM(D65_5bin1)
  /D65_5bin2_sum=SUM(D65_5bin2)
  /D65_5bin3_sum=SUM(D65_5bin3)
  /D65_5bin4_sum=SUM(D65_5bin4)
  /D65_5bin5_sum=SUM(D65_5bin5)
  /nu_conselheiros=N
.
EXECUTE.

RECODE D65_5bin1_sum D65_5bin2_sum D65_5bin3_sum D65_5bin4_sum D65_5bin5_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
D65_5bin1_sum	'Representante de usuários'
  /D65_5bin2_sum	'Representante de organização de usuários'
  /D65_5bin3_sum	'Representante de entidades de assistência social'
  /D65_5bin4_sum	'Representação das entidades dos trabalhadores do setor'
  /D65_5bin5_sum	'Representante do Governo'
  /nu_conselheiros	'Quantidade de conselheiros'
.
EXECUTE.

** dataset para merge na dados gerais

dataset declare aggr.
AGGREGATE
/outfile='aggr'
  /BREAK=IBGE7
  /D65_5bin1_sum=SUM(D65_5bin1)
  /D65_5bin2_sum=SUM(D65_5bin2)
  /D65_5bin3_sum=SUM(D65_5bin3)
  /D65_5bin4_sum=SUM(D65_5bin4)
  /D65_5bin5_sum=SUM(D65_5bin5)
  /nu_conselheiros=N
.
EXECUTE.

dataset activate aggr.
RECODE D65_5bin1_sum D65_5bin2_sum D65_5bin3_sum D65_5bin4_sum D65_5bin5_sum nu_conselheiros 
    (SYSMIS=0).
EXECUTE.

dataset activate aggr.
VARIABLE LABELS
D65_5bin1_sum	'Representante de usuários'
  /D65_5bin2_sum	'Representante de organização de usuários'
  /D65_5bin3_sum	'Representante de entidades de assistência social'
  /D65_5bin4_sum	'Representação das entidades dos trabalhadores do setor'
  /D65_5bin5_sum	'Representante do Governo'
  /nu_conselheiros	'Quantidade de conselheiros'
.
EXECUTE.


