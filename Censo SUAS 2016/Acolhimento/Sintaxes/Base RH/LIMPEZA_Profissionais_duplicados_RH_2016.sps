

SORT CASES BY NºIDENTIFICADOR(A) q42_3_cpf_velha(A).
MATCH FILES
  /FILE=*
  /BY  NºIDENTIFICADOR q42_3_cpf_velha
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst PrimaryLast InDupGrp.
VARIABLE LABELS  MatchSequence 'Sequential count of matching cases'.
VARIABLE LEVEL  MatchSequence (SCALE).
FREQUENCIES VARIABLES=MatchSequence.
EXECUTE.



***Duplicação Coordenador **********************************

IF  (MatchSequence > 1 & (q42_10_função= 21 | q42_10_função= 30 )) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).



*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q42_3_cpf_velha
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=16
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF
( 
q42_3_cpf_velha	=	2100503303509	|
q42_3_cpf_velha	=	2602903300400	|
q42_3_cpf_velha	=	2609603303034	|
q42_3_cpf_velha	=	2704303303907	|
q42_3_cpf_velha	=	2910803301663	|
q42_3_cpf_velha	=	3119303305683	|
q42_3_cpf_velha	=	3129503304059	|
q42_3_cpf_velha	=	3160403301227	|
q42_3_cpf_velha	=	3304553300114	|
q42_3_cpf_velha	=	3509503300876	|
q42_3_cpf_velha	=	3509703303970	|
q42_3_cpf_velha	=	3518803305150	|
q42_3_cpf_velha	=	4104453302766	|
q42_3_cpf_velha	=	4122403306535	|
q42_3_cpf_velha	=	4312403300918	|
q42_3_cpf_velha	=	5210203302290	
) AND (MatchSequence > 0) NOVAq42_10_função= 1.
execute.

IF  (q42_10_função = 21 & NOVAq42_10_função = 1) NOVAq42_10_função=21.
EXECUTE.

IF  (q42_10_função = 30 & NOVAq42_10_função = 1) NOVAq42_10_função=30.
EXECUTE.

IF  (SYSMIS (NOVAq42_10_função)) NOVAq42_10_função=q42_10_função.
EXECUTE.


***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & NOVAq42_10_função = 218) Eq_Tecnica_Duplicado=1.
EXECUTE.

SORT CASES BY Eq_Tecnica_Duplicado (D).


*** ATENÇÃO: Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com tec. superior duplicado ****


SUMMARIZE
  /TABLES=q42_3_cpf_velha
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=10
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF			
(
q42_3_cpf_velha	=	2100503303509	|
q42_3_cpf_velha	=	2602903300400	|
q42_3_cpf_velha	=	2704303303907	|
q42_3_cpf_velha	=	2910803301663	|
q42_3_cpf_velha	=	3119303305683	|
q42_3_cpf_velha	=	3129503304059	|
q42_3_cpf_velha	=	3509503300876	|
q42_3_cpf_velha	=	3518803305150	|
q42_3_cpf_velha	=	4122403306535	|
q42_3_cpf_velha	=	5210203302290	
) AND (MatchSequence > 0) NOVAq42_10_função = 2.
execute.

IF  (q42_10_função = 218 & NOVAq42_10_função = 1) NOVAq42_10_função=218.
EXECUTE.



***Duplicação Cuidador -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & (  NOVAq42_10_função = 349 |  NOVAq42_10_função = 350 )) Cuidador_Duplicado=1.
EXECUTE.

SORT CASES BY Cuidador_Duplicado (D).


SUMMARIZE
  /TABLES=q42_3_cpf_velha
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=137
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF			
( 
q42_3_cpf_velha	=	1301203305941	|
q42_3_cpf_velha	=	1302603304507	|
q42_3_cpf_velha	=	1503703302483	|
q42_3_cpf_velha	=	1503703302483	|
q42_3_cpf_velha	=	2105303301975	|
q42_3_cpf_velha	=	2105303301975	|
q42_3_cpf_velha	=	2304283307467	|
q42_3_cpf_velha	=	2304403304939	|
q42_3_cpf_velha	=	2504003304351	|
q42_3_cpf_velha	=	2607903304495	|
q42_3_cpf_velha	=	2611603304996	|
q42_3_cpf_velha	=	2704303300287	|
q42_3_cpf_velha	=	2704703301385	|
q42_3_cpf_velha	=	2708603302494	|
q42_3_cpf_velha	=	2910803302670	|
q42_3_cpf_velha	=	2914503301990	|
q42_3_cpf_velha	=	2914503301990	|
q42_3_cpf_velha	=	2914503301990	|
q42_3_cpf_velha	=	2914503301990	|
q42_3_cpf_velha	=	2927403300130	|
q42_3_cpf_velha	=	2927403306487	|
q42_3_cpf_velha	=	2927403306487	|
q42_3_cpf_velha	=	3101603303048	|
q42_3_cpf_velha	=	3103503301670	|
q42_3_cpf_velha	=	3106703300256	|
q42_3_cpf_velha	=	3108603301402	|
q42_3_cpf_velha	=	3118603305763	|
q42_3_cpf_velha	=	3119403302000	|
q42_3_cpf_velha	=	3120903300257	|
q42_3_cpf_velha	=	3120903300257	|
q42_3_cpf_velha	=	3120903300257	|
q42_3_cpf_velha	=	3120903300257	|
q42_3_cpf_velha	=	3120903300257	|
q42_3_cpf_velha	=	3120903300257	|
q42_3_cpf_velha	=	3120903300257	|
q42_3_cpf_velha	=	3120903301556	|
q42_3_cpf_velha	=	3128703305303	|
q42_3_cpf_velha	=	3129803304794	|
q42_3_cpf_velha	=	3129803304794	|
q42_3_cpf_velha	=	3131303300672	|
q42_3_cpf_velha	=	3139003305445	|
q42_3_cpf_velha	=	3140703302178	|
q42_3_cpf_velha	=	3145903304027	|
q42_3_cpf_velha	=	3151803304738	|
q42_3_cpf_velha	=	3152503300147	|
q42_3_cpf_velha	=	3156903300460	|
q42_3_cpf_velha	=	3164203302904	|
q42_3_cpf_velha	=	3170203301419	|
q42_3_cpf_velha	=	3205103301427	|
q42_3_cpf_velha	=	3205103301427	|
q42_3_cpf_velha	=	3205103301427	|
q42_3_cpf_velha	=	3300603300080	|
q42_3_cpf_velha	=	3302003301242	|
q42_3_cpf_velha	=	3302403303823	|
q42_3_cpf_velha	=	3303303305886	|
q42_3_cpf_velha	=	3304553304105	|
q42_3_cpf_velha	=	3304553304105	|
q42_3_cpf_velha	=	3304903300005	|
q42_3_cpf_velha	=	3304903300005	|
q42_3_cpf_velha	=	3304903300005	|
q42_3_cpf_velha	=	3304903300264	|
q42_3_cpf_velha	=	3304903305237	|
q42_3_cpf_velha	=	3304903305237	|
q42_3_cpf_velha	=	3306303300126	|
q42_3_cpf_velha	=	3306303300581	|
q42_3_cpf_velha	=	3503803300535	|
q42_3_cpf_velha	=	3504503300629	|
q42_3_cpf_velha	=	3504503303842	|
q42_3_cpf_velha	=	3508103303786	|
q42_3_cpf_velha	=	3508503300584	|
q42_3_cpf_velha	=	3510403300686	|
q42_3_cpf_velha	=	3510403304729	|
q42_3_cpf_velha	=	3510403304729	|
q42_3_cpf_velha	=	3510403304729	|
q42_3_cpf_velha	=	3515183300349	|
q42_3_cpf_velha	=	3518803305097	|
q42_3_cpf_velha	=	3518803305097	|
q42_3_cpf_velha	=	3518803305135	|
q42_3_cpf_velha	=	3518803305150	|
q42_3_cpf_velha	=	3518803305150	|
q42_3_cpf_velha	=	3519253302743	|
q42_3_cpf_velha	=	3522303301454	|
q42_3_cpf_velha	=	3523103306111	|
q42_3_cpf_velha	=	3523403300541	|
q42_3_cpf_velha	=	3523903303909	|
q42_3_cpf_velha	=	3523903305895	|
q42_3_cpf_velha	=	3523903305895	|
q42_3_cpf_velha	=	3526303301456	|
q42_3_cpf_velha	=	3526903300178	|
q42_3_cpf_velha	=	3526903300178	|
q42_3_cpf_velha	=	3526903300244	|
q42_3_cpf_velha	=	3534703300543	|
q42_3_cpf_velha	=	3547803301474	|
q42_3_cpf_velha	=	3548003301106	|
q42_3_cpf_velha	=	3549103300698	|
q42_3_cpf_velha	=	3549103304235	|
q42_3_cpf_velha	=	3550303301482	|
q42_3_cpf_velha	=	3550603301300	|
q42_3_cpf_velha	=	3551003301483	|
q42_3_cpf_velha	=	3552203304496	|
q42_3_cpf_velha	=	4106903300006	|
q42_3_cpf_velha	=	4106903300774	|
q42_3_cpf_velha	=	4111503300775	|
q42_3_cpf_velha	=	4111503300775	|
q42_3_cpf_velha	=	4111503300775	|
q42_3_cpf_velha	=	4113503301768	|
q42_3_cpf_velha	=	4113703304308	|
q42_3_cpf_velha	=	4113703304308	|
q42_3_cpf_velha	=	4118403301321	|
q42_3_cpf_velha	=	4209403301330	|
q42_3_cpf_velha	=	4300603301623	|
q42_3_cpf_velha	=	4302803302436	|
q42_3_cpf_velha	=	4304603300477	|
q42_3_cpf_velha	=	4305353304330	|
q42_3_cpf_velha	=	4306103304734	|
q42_3_cpf_velha	=	4311103300479	|
q42_3_cpf_velha	=	4314903300119	|
q42_3_cpf_velha	=	4314903300119	|
q42_3_cpf_velha	=	4314903300119	|
q42_3_cpf_velha	=	4315603300858	|
q42_3_cpf_velha	=	4317303304176	|
q42_3_cpf_velha	=	5107303302286	|
q42_3_cpf_velha	=	5208003303208	|
q42_3_cpf_velha	=	5211503300416	|
q42_3_cpf_velha	=	5220453305398	|
q42_3_cpf_velha	=	5221853301645	|
q42_3_cpf_velha	=	5300103300019	|
q42_3_cpf_velha	=	5300103300019	|
q42_3_cpf_velha	=	5300103300019	|
q42_3_cpf_velha	=	5300103300019	|
q42_3_cpf_velha	=	5300103300019	|
q42_3_cpf_velha	=	5300103300219	|
q42_3_cpf_velha	=	5300103300219	|
q42_3_cpf_velha	=	5300103300219	|
q42_3_cpf_velha	=	5300103300219	|
q42_3_cpf_velha	=	5300103300219	|
q42_3_cpf_velha	=	5300103300452	
)  AND (MatchSequence > 0) NOVAq42_10_função = 3.


IF  (q42_10_função = 349 & NOVAq42_10_função = 1) NOVAq42_10_função=349.
EXECUTE.

IF  (q42_10_função = 350 & NOVAq42_10_função = 1) NOVAq42_10_função=350.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.


** Base Original 87703 trabalhadores, sobraram 86971 


IF  (q42_10_função = 250 & NOVAq42_10_função = 249) NOVAq42_10_função =250.
EXECUTE.

RENAME VARIABLES q42_10_função = q42_10_função_velha. 
RENAME VARIABLES NOVAq42_10_função = q42_10_função. 

VARIABLE LABELS q42_10_função'q42_10_função_Função'.
formats q42_10_função (f2.0).

VALUE LABELS q42_10_função
1   'Coordenador Diretor'
2   'Equipe Técnica'
3   'Cuidador'
4   'Cuidador Residente'
5   'Educador/Orientador Social'
6   'Apoio Administrativo'
7   'Cozinheiro'
8   'Motorista'
9   'Serviços Gerais'
99   'Outro'. 


** Conferindo -->

SORT CASES BY NºIDENTIFICADOR(A) q42_3_cpf_velha(A).
MATCH FILES
  /FILE=*
  /BY NºIDENTIFICADOR q42_3_cpf_velha
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst PrimaryLast InDupGrp.
VARIABLE LABELS  MatchSequence 'Sequential count of matching cases'.
VARIABLE LEVEL  MatchSequence (SCALE).
FREQUENCIES VARIABLES=MatchSequence.
EXECUTE.

