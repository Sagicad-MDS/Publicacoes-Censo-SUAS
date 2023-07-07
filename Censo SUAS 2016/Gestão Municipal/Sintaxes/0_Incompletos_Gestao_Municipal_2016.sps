*******************************************************************************************
SINTAXE INCOMPLETOS GESTÃO MUNICIPAL - CENSO SUAS 2016
*******************************************************************************************


**** Discriminação dos Incompletos adicionados à base.
IF (  codigo_ibge=	430543	|
codigo_ibge=	310925	|
codigo_ibge=	315820	|
codigo_ibge=	311260	|
codigo_ibge=	312670	|
codigo_ibge=	315540	|
codigo_ibge=	330090	|
codigo_ibge=	311960	|
codigo_ibge=	140070	|
codigo_ibge=	430087	|
codigo_ibge=	220665	|
codigo_ibge=	140028	|
codigo_ibge=	320334	|
codigo_ibge=	314780	|
codigo_ibge=	520170	|
codigo_ibge=	270900	|
codigo_ibge=	430100	|
codigo_ibge=	310300	|
codigo_ibge=	292370	|
codigo_ibge=	316230	|
codigo_ibge=	431505	|
codigo_ibge=	250440	|
codigo_ibge=	150746	|
codigo_ibge=	251315	|
codigo_ibge=	150503	|
codigo_ibge=	314450	|
codigo_ibge=	312550	  )
Incompletos = 1.
EXECUTE.
VARIABLE LABELS Incompletos'Questionários incompletos incorporados à base final'.
VALUE LABELS Incompletos 1'Incompleto'.

FREQUENCIES Incompletos.

****** Quantidade de Casos:
**Dados Gerais
Base Original: 5.454
Incompletos: 27
Base Final: 5.481 municípios


