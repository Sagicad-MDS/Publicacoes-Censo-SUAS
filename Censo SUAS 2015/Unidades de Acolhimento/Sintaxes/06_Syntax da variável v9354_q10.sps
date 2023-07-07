*** Sintaxe Censo SUAS 2014 - Variável v9354 (q10) ***

* 01_Variables Labels Acolhimento

VARIABLE LABELS
id_acolhimento	'id_acolhimento'
codigo_ibge 'codigo_ibge'
v9354 'q10_Quais municípios fazem parte deste convênio ou termo de coorperação?'.
EXECUTE.

* 02_Rename Variables Acolhimento

RENAME VARIABLES
id_acolhimento	= id_acolhimento
v9354 = q10.
EXECUTE.

* 03_ Rename Labels Acolhimento

VARIABLE LABELS
q10 'q10_Quais municípios fazem parte deste convênio ou termo de coorperação?'.
EXECUTE.

** Fazer o processo de limpeza da base de dados.
*1) Verificar e corrigir o nome das variáveis e inserir o código do IBGE 
* 2) Inserir informações do município sede e do município consorciado
* 3) Inserir informações da base de Dados Gerais

*04_Derivadas Acolhimento

IF  (IBGE_sede = IBGE_convenio) Sede=0.
EXECUTE.

recode Sede (0=0) (sysmiss=sysmiss) (else=1). 
execute. 

*fazer o agregate da variável sede

*AGGREGATE
  /OUTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados - '+
    'Tratamento\Acolhimento\Base de Dados\q10_convenio (v9354) por Acolhimento.sav'
  /BREAK=id_acolhimento
  /D10_sum=SUM(Sede).

*Fazer o merge com a base geral do Acolhimento

*MATCH FILES /FILE=*
  /TABLE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2014_Censo_SUAS\Bases de Dados - '+
    'Tratamento\Acolhimento\Lixo\q10_convenio (v9354) por Acolhimento.sav'
  /BY id_acolhimento.
*EXECUTE.

* Na base de Dados Gerais

Variable labels D10_sum 'D10_sum_Quantidade de outros municípios que tem termo de parceria/conveio/cooperação com esta unidade'.
execute.

* Posteriormente, fazer o merge com a base Dados Gerais do Acolhimento

*05_Tabela
* A tabela está inserida na syntax "05_Tabelas_Acolhimento_DG_2014".

