* Encoding: UTF-8.

*** Corrigindo código IBGE e Município
Criando variável que identifica as unidades que estão com o código IBGE incorreto e município com código numérico. 
Trabalhando com a base "CADSUAS_CREASRegional_2017_01_02_tratado.sav"

RECODE NºIDENTIFICADOR
(	12304403021	=	1	)
(	12308401532	=	1	)
(	12500300319	=	1	)
(	12501500389	=	1	)
(	12503700379	=	1	)
(	12503800596	=	1	)
(	12504300382	=	1	)
(	12506000388	=	1	)
(	12506300582	=	1	)
(	12506600958	=	1	)
(	12507000361	=	1	)
(	12508600607	=	1	)
(	12511300936	=	1	)
(	12512200618	=	1	)
(	12513100374	=	1	)
(	12513400808	=	1	)
(	12513800949	=	1	)
(	12515300781	=	1	)
(	12516200363	=	1	)
(	25007797858	=	1	)
(	25013597880	=	1	)
(	25014097892	=	1	)
(	25090097886	=	1	)
(	25127097862	=	1	)
(	25131597884	=	1	)
(	25151097860	=	1	)
(	25154097888	=	1	)
(	25168097048	=	1	)
(	12602202933	=	1	)
(	12609902938	=	1	)
(	12611103442	=	1	)
(	12612202919	=	1	)
(	12616302923	=	1	)
(	26001097140	=	1	)
(	26041096708	=	1	)
(	26060097136	=	1	)
(	26066096716	=	1	)
(	26079096714	=	1	)
(	26100097134	=	1	)
(	26107096712	=	1	)
(	26110096948	=	1	)
(	13100901144	=	1	)
(	13143501116	=	1	)
(	31017097897	=	1	) INTO correcao.
VARIABLE LABELS  correcao 'Correção código IBGE e MUN'.
EXECUTE.

*** Filtro das unidades

DATASET ACTIVATE DataSet8.
USE ALL.
COMPUTE filter_$=( correcao = 1).
VARIABLE LABELS filter_$ ' correcao = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*** Crosstabs das variáveis código IBGE (seis dígitos) , nome da cidade e número indetificador (idcreas) 

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=CIDADE CD_IBGE NºIDENTIFICADOR DISPLAY=LABEL
  /TABLE CIDADE [C] BY CD_IBGE [S][MEAN] + NºIDENTIFICADOR [MEAN]
  /CATEGORIES VARIABLES=CIDADE ORDER=A KEY=VALUE EMPTY=EXCLUDE.

***Recodificando as variáveis códico IBGE e municipio

***Recodificando código_ibge com condicional id_creas

DO IF (	id_creas	=	12304403021	).	
RECODE	codigo_ibge	(	23	=	230440	).	
END IF. 
DO IF 	(	id_creas	=	12308401532	).	
RECODE	codigo_ibge	(	23	=	230840	).	
END IF. 
DO IF 	(	id_creas	=	12500300319	).	
RECODE	codigo_ibge	(	25	=	250050	).	
END IF. 
DO IF 	(	id_creas	=	12501500389	).	
RECODE	codigo_ibge	(	25	=	250350	).	
END IF. 
DO IF 	(	id_creas	=	12503700379	).	
RECODE	codigo_ibge	(	25	=	251450	).	
END IF. 
DO IF 	(	id_creas	=	12503800596	).	
RECODE	codigo_ibge	(	25	=	251480	).	
END IF. 
DO IF 	(	id_creas	=	12504300382	).	
RECODE	codigo_ibge	(	25	=	251280	).	
END IF. 
DO IF 	(	id_creas	=	12506000388	).	
RECODE	codigo_ibge	(	25	=	250170	).	
END IF. 
DO IF 	(	id_creas	=	12506300582	).	
RECODE	codigo_ibge	(	25	=	250080	).	
END IF. 
DO IF 	(	id_creas	=	12506600958	).	
RECODE	codigo_ibge	(	25	=	250660	).	
END IF. 
DO IF 	(	id_creas	=	12507000361	).	
RECODE	codigo_ibge	(	25	=	251040	).	
END IF. 
DO IF 	(	id_creas	=	12508600607	).	
RECODE	codigo_ibge	(	25	=	250860	).	
END IF. 
DO IF 	(	id_creas	=	12511300936	).	
RECODE	codigo_ibge	(	25	=	251660	).	
END IF. 
DO IF 	(	id_creas	=	12512200618	).	
RECODE	codigo_ibge	(	25	=	250390	).	
END IF. 
DO IF 	(	id_creas	=	12513100374	).	
RECODE	codigo_ibge	(	25	=	251310	).	
END IF. 
DO IF 	(	id_creas	=	12513400808	).	
RECODE	codigo_ibge	(	25	=	250160	).	
END IF. 
DO IF 	(	id_creas	=	12513800949	).	
RECODE	codigo_ibge	(	25	=	250880	).	
END IF. 
DO IF 	(	id_creas	=	12515300781	).	
RECODE	codigo_ibge	(	25	=	251710	).	
END IF. 
DO IF 	(	id_creas	=	12516200363	).	
RECODE	codigo_ibge	(	25	=	251320	).	
END IF. 
DO IF 	(	id_creas	=	12602202933	).	
RECODE	codigo_ibge	(	26	=	260220	).	
END IF. 
DO IF 	(	id_creas	=	12609902938	).	
RECODE	codigo_ibge	(	26	=	260990	).	
END IF. 
DO IF 	(	id_creas	=	12611103442	).
	RECODE	codigo_ibge	(	26	=	261110	).	
END IF. 
DO IF 	(	id_creas	=	12612202919	).	
RECODE	codigo_ibge	(	26	=	261220	).	
END IF. 
DO IF 	(	id_creas	=	12616302923	).	
RECODE	codigo_ibge	(	26	=	261630	).	
END IF. 
DO IF 	(	id_creas	=	13100901144	).	
RECODE	codigo_ibge	(	31	=	310090	).	
END IF. 
DO IF 	(	id_creas	=	13143501116	).	
RECODE	codigo_ibge	(	31	=	314350	).	
END IF. 
DO IF 	(	id_creas	=	25007797858	).	
RECODE	codigo_ibge	(	25	=	250077	).	
END IF. 
DO IF 	(	id_creas	=	25013597880	).	
RECODE	codigo_ibge	(	25	=	250135	).	
END IF. 
DO IF 	(	id_creas	=	25014097892	).	
RECODE	codigo_ibge	(	25	=	250140	).	
END IF. 
DO IF 	(	id_creas	=	25090097886	).	
RECODE	codigo_ibge	(	25	=	250900	).	
END IF. 
DO IF 	(	id_creas	=	25127097862	).	
RECODE	codigo_ibge	(	25	=	251270	).	
END IF. 
DO IF 	(	id_creas	=	25131597884	).	
RECODE	codigo_ibge	(	25	=	251315	).	
END IF. 
DO IF 	(	id_creas	=	25151097860	).	
RECODE	codigo_ibge	(	25	=	251510	).	
END IF. 
DO IF 	(	id_creas	=	25154097888	).	
RECODE	codigo_ibge	(	25	=	251540	).	
END IF. 
DO IF 	(	id_creas	=	25168097048	).	
RECODE	codigo_ibge	(	25	=	251680	).	
END IF. 
DO IF 	(	id_creas	=	26001097140	).	
RECODE	codigo_ibge	(	26	=	260010	).	
END IF. 
DO IF 	(	id_creas	=	26041096708	).	
RECODE	codigo_ibge	(	26	=	260410	).	
END IF. 
DO IF 	(	id_creas	=	26060097136	).	
RECODE	codigo_ibge	(	26	=	260600	).	
END IF. 
DO IF 	(	id_creas	=	26066096716	).	
RECODE	codigo_ibge	(	26	=	260660	).	
END IF. 
DO IF 	(	id_creas	=	26079096714	).	
RECODE	codigo_ibge	(	26	=	261370	).	
END IF. 
DO IF 	(	id_creas	=	26100097134	).	
RECODE	codigo_ibge	(	26	=	261000	).	
END IF. 
DO IF 	(	id_creas	=	26107096712	).	
RECODE	codigo_ibge	(	26	=	261070	).	
END IF. 
DO IF 	(	id_creas	=	26110096948	).	
RECODE	codigo_ibge	(	26	=	261100	).	
END IF. 
DO IF 	(	id_creas	=	31017097897	).	
RECODE	codigo_ibge	(	31	=	310170	).	
END IF. 

*** Recodificando município (ident9) com condicional id_creas

DO IF 	(	id_creas	=	12304403021	).	
RECODE	ident9	(	'23'	='	FORTALEZA'	).	
END IF.
DO IF 	(	id_creas	=	12308401532	).	
RECODE	ident9	(	'23'	=	'	MISSAO VELHA	'	).	
END IF. 
DO IF 	(	id_creas	=	12500300319	).	
RECODE	ident9	(	'25'	=	'	ALAGOINHA	'	).	
END IF. 
DO IF 	(	id_creas	=	12501500389	).	
RECODE	ident9	(	'25'	=	'	CACIMBA DE DENTRO	'	).	
END IF. 
DO IF 	(	id_creas	=	12503700379	).	
RECODE	ident9	(	'25'	=	'	SAO JOSE DE PIRANHAS	'	).	
END IF. 
DO IF 	(	id_creas	=	12503800596	).	
RECODE	ident9	(	'25'	=	'	SAO JOSE DOS CORDEIROS	'	).	
END IF. 
DO IF 	(	id_creas	=	12504300382	).	
RECODE	ident9	(	'25'	=	'	RIACHO DOS CAVALOS	'	).	
END IF. 
DO IF 	(	id_creas	=	12506000388	).	
RECODE	ident9	(	'25'	=	'	BARRA DE SAO MIGUEL	'	).	
END IF. 
DO IF 	(	id_creas	=	12506300582	).	
RECODE	ident9	(	'25'	=	'	ARACAGI	'	).	
END IF. 
DO IF 	(	id_creas	=	12506600958	).	
RECODE	ident9	(	'25'	=	'	IBIARA	'	).	
END IF. 
DO IF 	(	id_creas	=	12507000361	).	
RECODE	ident9	(	'25'	=	'	OLHO DAGUA	'	).	
END IF. 
DO IF 	(	id_creas	=	12508600607	).	
RECODE	ident9	(	'25'	=	'	LUCENA	'	).	
END IF. 
DO IF 	(	id_creas	=	12511300936	).	
RECODE	ident9	(	'25'	=	'	TAVARES	'	).	
END IF. 
DO IF 	(	id_creas	=	12512200618	).	
RECODE	ident9	(	'25'	=	'	CAMALAU	'	).	
END IF. 
DO IF 	(	id_creas	=	12513100374	).	
RECODE	ident9	(	'25'	=	'	SALGADO DE SAO FELIX	'	).	
END IF. 
DO IF 	(	id_creas	=	12513400808	).	
RECODE	ident9	(	'25'	=	'	BARRA DE SANTA ROSA	'	).	
END IF. 
DO IF 	(	id_creas	=	12513800949	).	
RECODE	ident9	(	'25'	=	'	MALTA	'	).	
END IF. 
DO IF 	(	id_creas	=	12515300781	).	
RECODE	ident9	(	'25'	=	'	VARZEA	'	).	
END IF. 
DO IF 	(	id_creas	=	12516200363	).	
RECODE	ident9	(	'25'	=	'	SANTA CRUZ	'	).	
END IF. 
DO IF 	(	id_creas	=	12602202933	).	
RECODE	ident9	(	'26'	=	'	BOM JARDIM	'	).	
END IF. 
DO IF 	(	id_creas	=	12609902938	).	
RECODE	ident9	(	'26'	=	'	OURICURI	'	).	
END IF. 
DO IF 	(	id_creas	=	12611103442	).	
RECODE	ident9	(	'26'	=	'	PETROLINA	'	).	
END IF. 
DO IF 	(	id_creas	=	12612202919	).	
RECODE	ident9	(	'26'	=	'	SALGUEIRO	'	).	
END IF. 
DO IF 	(	id_creas	=	12616302923	).	
RECODE	ident9	(	'26'	=	'	VICENCIA	'	).	
END IF. 
DO IF 	(	id_creas	=	13100901144	).	
RECODE	ident9	(	'31'	=	'	AGUAS FORMOSAS	'	).	
END IF. 
DO IF 	(	id_creas	=	13143501116	).	
RECODE	ident9	(	'31'	=	'	MORADA NOVA DE MINAS	'	).	
END IF. 
DO IF 	(	id_creas	=	25007797858	).	
RECODE	ident9	(	'25'	=	'	APARECIDA	'	).	
END IF. 
DO IF 	(	id_creas	=	25013597880	).	
RECODE	ident9	(	'25'	=	'	ASSUNCAO	'	).	
END IF. 
DO IF 	(	id_creas	=	25014097892	).	
RECODE	ident9	(	'25'	=	'	BAIA DA TRAICAO	'	).	
END IF. 
DO IF 	(	id_creas	=	25090097886	).	
RECODE	ident9	(	'25'	=	'	MANAIRA	'	).	
END IF. 
DO IF 	(	id_creas	=	25127097862	).	
RECODE	ident9	(	'25'	=	'	REMIGIO	'	).	
END IF. 
DO IF 	(	id_creas	=	25131597884	).	
RECODE	ident9	(	'25'=	'	SANTA CECILIA	'	).	
END IF. 
DO IF 	(	id_creas	=	25151097860	).	
RECODE	ident9	(	'25'	=	'	SAO SEBASTIAO DE LAGOA DE ROCA	'	).	
END IF. 
DO IF 	(	id_creas	=	25154097888	).	
RECODE	ident9	(	'25'	=	'	SAO VICENTE DO SERIDO	'	).	
END IF. 
DO IF 	(	id_creas	=	25168097048	).	
RECODE	ident9	(	'25'	=	'	TRIUNFO	'	).	
END IF. 
DO IF 	(	id_creas	=	26001097140	).	
RECODE	ident9	(	'26'	=	'	AFOGADOS DA INGAZEIRA	'	).	
END IF. 
DO IF 	(	id_creas	=	26041096708	).	
RECODE	ident9	(	'26'	=	'	CARUARU	'	).	
END IF. 
DO IF 	(	id_creas	=	26060097136	).	
RECODE	ident9	(	'26'	=	'	GARANHUNS	'	).	
END IF. 
DO IF 	(	id_creas	=	26066096716	).	
RECODE	ident9	(	'26'	=	'	IBIMIRIM	'	).	
END IF. 
DO IF 	(	id_creas	=	26079096714	).	
RECODE	ident9	(	'26'	=	'	SAO LOURENCO DA MATA	'	).	
END IF. 
DO IF 	(	id_creas	=	26100097134	).	
RECODE	ident9	(	'26'	=	'	PALMARES	'	).	
END IF. 
DO IF 	(	id_creas	=	26107096712	).	
RECODE	ident9	(	'26'	=	'	PAULISTA	'	).	
END IF. 
DO IF 	(	id_creas	=	26110096948	).	
RECODE	ident9	(	'26'	=	'	PETROLANDIA	'	).	
END IF. 
DO IF 	(	id_creas	=	31017097897	).	
RECODE	ident9	(	'31'	=	'	ALMENARA	'	).	
END IF. 

