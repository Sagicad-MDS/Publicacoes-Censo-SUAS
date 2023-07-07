* Encoding: windows-1252.

**** Syntax para analisar endereço duplicados
Objetivo: identificar quando um mesmo CEP foi referenciado mais de uma vez a um NU_identificador.

DATASET ACTIVATE DataSet1.
DATASET DECLARE teste.
AGGREGATE
  /OUTFILE='teste'
  /BREAK=ident8
  /NU_identificador_mean=MEAN(NU_identificador)
  /N_BREAK=N.

****Recodificando a variável ident8 para localizar os
CEPs que aparecem mais de uma vez 

RECODE ident8
(	'14050-350'	=	1	)
(	'24440-440'	=	1	)
(	'28000-100'	=	1	)
(	'39900-000'	=	1	)
(	'40000-000'	=	1	)
(	'45000-000'	=	1	)
(	'45600-000'	=	1	)
(	'45651-260'	=	1	)
(	'45930-000'	=	1	)
(	'49160-000'	=	1	)
(	'49565-000'	=	1	)
(	'55540-000'	=	1	)
(	'55730-000'	=	1	)
(	'55850-000'	=	1	)
(	'55900-000'	=	1	)
(	'56000-000'	=	1	)
(	'56200-000'	=	1	)
(	'56580-000'	=	1	)
(	'56800-000'	=	1	)
(	'60810-460'	=	1	)
(	'61600-000'	=	1	)
(	'63200-000'	=	1	)
(	'63660-000'	=	1	)
(	'65110-000'	=	1	)
(	'65645-000'	=	1	)
(	'68440-000'	=	1	)
(	'70200-740'	=	1	)
(	'75000-000'	=	1	)
(	'75690-000'	=	1	)
(	'76820-316'	=	1	)
(	'83350-000'	=	1	)
(	'84010-190'	=	1	)
(	'85400-000'	=	1	)
(	'86010-150'	=	1	)
into duplica. 

