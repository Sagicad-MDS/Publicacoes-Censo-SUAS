********** RODAR NA BASE DA QUESTÃO 14.

**ETAPA 1 - Rótulos das Variáveis.
VARIABLE LABELS
v10947'Caso sim, com quais municípios existe acordo/parceria para acolhimento nesta unidade?'.
EXECUTE.

**ETAPA 2 - Renomear as Variáveis.
RENAME VARIABLES		
id_acolhimento	=	NºIDENTIFICADOR
codigo_ibge	=	IBGE
v10947	=	q14
Incompletos	=	Incompletos.
EXECUTE.

**** Remoção dos casos incompletos que não preencheram.
FILTER OFF.
USE ALL.
SELECT IF NOT (MISSING(q14) & Incompletos = 1).
EXECUTE.

** ETAPA 3 - Revisar os rótulos das variáveis.
VARIABLE LABELS
NºIDENTIFICADOR 'Número Identificador da Unidade'
IBGE 'Código IBGE do Município'
q14 'q14_Caso sim, com quais municípios existe acordo/parceria para acolhimento nesta unidade?'.
EXECUTE.


*** Adicionar dados dos Municípios
(Da unidade que preencheu o questionário e do município parceiro).
