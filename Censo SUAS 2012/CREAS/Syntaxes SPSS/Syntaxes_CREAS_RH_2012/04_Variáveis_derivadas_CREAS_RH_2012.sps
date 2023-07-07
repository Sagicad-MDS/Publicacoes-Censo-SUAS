****o arquivo do RH deve ser importado através do arquivo CSV (não pode ser XLSX). Ao importar, solicitar a alteração da variável v5420 (referente à data de nascimento)*
de formato string para o formato data*****

****Para tranformar data de nascimento em idade é necessário decifrar o código do dia (por exemplo, 31/12/2012 é igual a 13576291200). Para descobrir esse número seguir os senguintes passos:
1. Compute Variable
2. Target variable= num_data
3 Inserir a seguinte fórmula no quadro de expressão númerica = DATE.DMY(31,12,ano desejado)

**Será criada a variável com o número procurado. Em seguida rodar a syntax abaixo**

COMPUTE  D53_2=DATEDIFF(13576291200, q53_2,"years").
format D53_2 (F2.0).
EXECUTE.

VARIABLE LABELS D53_2 'Idade em anos (data ref. 31-12-2012)'.
execute.

***************************************************************************************************************************************************************

RECODE D53_2 (0 thru 29=1) (30 thru 39=2) (40 thru 49=3) (40 thru 49=3) (50 thru 100=4)  INTO D53_categoria .
VARIABLE LABELS D53_categoria 'Idade (faixas etárias)'.

VALUE LABELS  D53_categoria 
1 'Até 29 anos'
2 'De 30 a 39 anos'
3 'De 40 a 49 anos'
4 '50 anos ou mais'.
execute.


RECODE q53_6 (251 thru 254=0) (255 thru 256=1) (257 thru 262=2) INTO D53_6.
VARIABLE LABELS  D53_6 'Níveis de escolaridade'.
EXECUTE.

RECODE D53_6 (0=1) INTO D53_6bin1.
VARIABLE LABELS  D53_6bin1 'Nível fundamental'.
EXECUTE.

RECODE D53_6 (1=1) INTO D53_6bin2.
VARIABLE LABELS  D53_6bin2 'Nível médio'.
EXECUTE.

RECODE D53_6 (2=1) INTO D53_6bin3.
VARIABLE LABELS  D53_6bin3 'Nível superior'.
EXECUTE.

RECODE q53_7 (275=1) INTO D53_7bin1.
VARIABLE LABELS  D53_7bin1 'Pedagogo'.
EXECUTE.

RECODE q53_7 (273=1) INTO D53_7bin2.
VARIABLE LABELS  D53_7bin2 'Assistente Social'.
EXECUTE.

RECODE q53_7 (234=1) INTO D53_7bin3.
VARIABLE LABELS  D53_7bin3 'Antropólogo'.
EXECUTE.

RECODE q53_7 (232=1) INTO D53_7bin4.
VARIABLE LABELS  D53_7bin4 'Advogado'.
EXECUTE.

RECODE q53_7 (274=1) INTO D53_7bin5.
VARIABLE LABELS  D53_7bin5 'Psicólogo'.
EXECUTE.

RECODE q53_8 (292=3) (139=2) (138=1) (else=4) INTO D53_8.
VARIABLE LABELS   D53_8 'Tipo de vínculo'.
execute.

RECODE  D53_8 (1=1) INTO D53_8bin1.
VARIABLE LABELS   D53_8bin1 'Servidor Estatutário'.
execute.

RECODE D53_8  (2=1) INTO D53_8bin2.
VARIABLE LABELS  D53_8bin2 'Empregado Público (CLT)'.
execute.

RECODE D53_8 (3=1) INTO D53_8bin3.
VARIABLE LABELS D53_8bin3 'Comissionado'.
execute.

RECODE D53_8 (4=1) INTO D53_8bin4.
VARIABLE LABELS D53_8bin4 'Outros vínculos não permanentes'.
execute.

VARIABLE LABELS
D53_6	'Escolaridade (por níveis)'
D53_6bin1	'Escolaridade - Nível fundamental'
D53_6bin2	'Escolaridade - Nível médio'
D53_6bin3	'Escolaridade - Nível superior'
D53_7bin1	'Profissão - Pedagogo'
D53_7bin2	'Profissão - Assistente Social'
D53_7bin3	'Profissão - Antropólogo'
D53_7bin4	'Profissão - Advogado'
D53_7bin5	'Profissão - Psicólogo'
D53_8	'Tipo de vínculo'
D53_8bin1	'Comissionado'
D53_8bin2	'Empregado Público (CLT)'
D53_8bin3	'Servidor Estatutário'
D53_8bin4	'Outros vínculos não permanentes'.
execute.


VALUE LABELS D53_6
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

VALUE LABELS D53_6bin1
1 'Nível fundamental'.

VALUE LABELS  D53_6bin2
1 'Nível Médio'.

VALUE LABELS  D53_6bin3
1 'Nível Superior'.

VALUE LABELS D53_7bin1
1 'Pedagogo'.

VALUE LABELS  D53_7bin2
1 'Assistente Social'.

VALUE LABELS  D53_7bin3
1 'Antropólogo'.

VALUE LABELS  D53_7bin4
1 'Advogado'.

VALUE LABELS  D53_7bin5
1 'Psicólogo'.

VALUE LABELS D53_8
1 'Servidor Estatutário'
2 'Empregado Público (CLT)'
3 'Comissionado'
4 'Outros vínculos não permanentes'.

VALUE LABELS  D53_8bin1
1 'Servidor Estatutário'.

VALUE LABELS  D53_8bin2
1 'Empregado Público (CLT)'.

VALUE LABELS  D53_8bin3
1 'Comissionado'.

VALUE LABELS  D53_8bin4
1 'Outros vínculos não permanentes'.


********************AGGREGATE VARIÁVEIS BINÁRIAS**************************

DATASET DECLARE aggr.
AGGREGATE
  /OUTFILE='aggr'
  /BREAK=NU_IDENTIFICADOR
  /D53_6bin1_sum=SUM(D53_6bin1)
  /D53_6bin2_sum=SUM(D53_6bin2)
  /D53_6bin3_sum=SUM(D53_6bin3)
  /D53_7bin1_sum=SUM(D53_7bin1) 
  /D53_7bin2_sum=SUM(D53_7bin2) 
  /D53_7bin3_sum=SUM(D53_7bin3) 
  /D53_7bin4_sum=SUM(D53_7bin4) 
  /D53_7bin5_sum=SUM(D53_7bin5) 
  /D53_8bin1_sum=SUM(D53_8bin1) 
  /D53_8bin2_sum=SUM(D53_8bin2) 
  /D53_8bin3_sum=SUM(D53_8bin3) 
  /D53_8bin4_sum=SUM(D53_8bin4)
  /nu_trabalhadores=N
.
EXECUTE.


VARIABLE LABELS
 D53_6bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 /D53_6bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 /D53_6bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'
 /D53_7bin1_sum'Número de Pedagogos'
 /D53_7bin2_sum'Número de Assistentes Sociais'
 /D53_7bin3_sum'Número de Antropólogos'
 /D53_7bin4_sum'Número de Advogados'
 /D53_7bin5_sum'Número de Psicólogos'
 /D53_8bin1_sum'Número de Servidores Estatutários'
 /D53_8bin2_sum'Número de Empregados Públicos(CLT)'
 /D53_8bin3_sum'Número de Comissionados'
 /D53_8bin4_sum'Número de profissionais com outros vínculos não permanentes'
 /nu_trabalhadores'Número de trabalhdores no CREAS'
.
EXECUTE.

**** RECODE MISSING TO ZERO ****

RECODE D53_6bin1_sum D53_6bin2_sum D53_6bin3_sum D53_7bin1_sum D53_7bin2_sum D53_7bin3_sum 
    D53_7bin4_sum D53_7bin5_sum D53_8bin1_sum D53_8bin2_sum D53_8bin3_sum D53_8bin4_sum 
    nu_trabalhadores (SYSMIS=0).
EXECUTE.

VARIABLE LABELS
 D53_6bin1_sum 'Número de trabalhadores de Nível fundamental (inclui trabalhadores sem escolaridade, fundamental incompleto e ensino médio incompleto)'
 D53_6bin2_sum'Número de trabalhadores de Nível médio (inclui trabalhadores com ensino superior incompleto)'
 D53_6bin3_sum'Número de trabalhadores de Nível superior (inclui trabalhadores com especialização, mestrado e doutorado)'.

VARIABLE LABELS
 D53_7bin1_sum'Número de Pedagogos'
 D53_7bin2_sum'Número de Assistentes Sociais'
 D53_7bin3_sum'Número de Antropólogos'
 D53_7bin4_sum'Número de Advogados'
 D53_7bin5_sum'Número de Psicólogos'.

 VARIABLE LABELS
 D53_8bin1_sum'Número de Servidores Estatutários'
 D53_8bin2_sum'Número de Empregados Públicos(CLT)'
 D53_8bin3_sum'Número de Comissionados'
 D53_8bin4_sum'Número de profissionais com outros vínculos não permanentes'.

VARIABLE LABELS
nu_trabalhadores 'Número de trabalhadores no CREAS'.



