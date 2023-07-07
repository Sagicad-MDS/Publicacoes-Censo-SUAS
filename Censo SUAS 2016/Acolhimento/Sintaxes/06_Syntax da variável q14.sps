*** Sintaxe Censo SUAS 2014 - Variável v10947 (q14) ***

* 01_Variables Labels Acolhimento

VARIABLE LABELS
id_acolhimento	'id_acolhimento'
codigo_ibge 'codigo_ibge'
v10947 'q14_Quais municípios fazem parte deste convênio ou termo de coorperação?'.
EXECUTE.

* 02_Rename Variables Acolhimento

RENAME VARIABLES
id_acolhimento	= NºIDENTIFICADOR
v10947 = q14.
EXECUTE.

* 03_ Rename Labels Acolhimento

VARIABLE LABELS
q14 'q14_Quais municípios fazem parte deste convênio ou termo de coorperação?'.
EXECUTE.

** Fazer o processo de limpeza da base de dados.
*1) Verificar e corrigir o nome das variáveis e inserir o código do IBGE 
* 2) Inserir informações do município sede e do município consorciado
* 3) Inserir informações da base de Dados Gerais


*04_Derivadas Acolhimento

IF  (IBGE = q14) Sede=0.
EXECUTE.

recode Sede (0=0) (else=1). 
execute. 


*fazer o agregate da variável sede
 
DATASET DECLARE q14_convênio. 
AGGREGATE 
  /OUTFILE='q14_convênio' 
  /BREAK=NºIDENTIFICADOR 
  /D14_sum=SUM(Sede).


*Fazer o merge com a base geral do Acolhimento

MATCH FILES /FILE=*
  /TABLE='q14_convênio'
  /BY NºIDENTIFICADOR.
EXECUTE.


* Na base de Dados Gerais

Variable labels D14_sum 'D14_sum_Quantidade de outros municípios que tem termo de parceria/conveio/cooperação com esta unidade'.
execute.

* Posteriormente, fazer o merge com a base Dados Gerais do Acolhimento


*05_Tabela
* A tabela está inserida na syntax "05_Tabelas_Acolhimento_DG_2014".



