**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA IDENTIFICAR CPF'S DUPLICADOS EM UMA MESMA UNIDADE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

************************************************************     ATENÇÃO    *********************************************************************************************************
SE A VARIÁVEL CPF FOR STRING, NÃO ESQUECER DE UTILIZAR "".
****************************************************************************************************************************************************************************************

SORT CASES BY NºIDENTIFICADOR(A) q43_4_cpf(A).
MATCH FILES
  /FILE=*
  /BY NºIDENTIFICADOR q43_4_cpf
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

* 
Total de trabalhadores na base original = 89.709
Duplicações Identificadas = 1.298
Coordenadores Duplicados = 66
Técnicos NS Duplicados = 159
Total de trabalhadores duplicados removidos da base = 649
Total de trabalhadores final = 89.038


*** BACKUP Var q43_10 Original (Função)

COMPUTE q43_10_original = q43_10_função.
VARIABLE LABELS q43_10_original 'Original - q43_10_Função'.
VALUE LABELS 
/q43_10_original
1    "Apoio Administrativo"
2    "Coordenador(a)"
3    "Educador(a) Social"
4    "Estagiário(a)"
5    "Serviços Gerais"
6    "Cadastrador(a)"
7    "Técnico(a) de Nível Superior"
8    "Técnico(a) de Nível Médio"
99    "Outros".
EXECUTE.


***Duplicação Coordenador **********************************

IF  (MatchSequence > 1 & q43_10_função = 2) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q43_4_cpf
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=66
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF (
q43_4_cpf = 71584056215 |
q43_4_cpf = 74683632268 |
q43_4_cpf = 74467263268 |
q43_4_cpf = 65384547200 |
q43_4_cpf = 1738702103 |
q43_4_cpf = 88170098300 |
q43_4_cpf = 3050989343 |
q43_4_cpf = 2780761300 |
q43_4_cpf = 744159300 |
q43_4_cpf = 91181267315 |
q43_4_cpf = 11325496391 |
q43_4_cpf = 7380265490 |
q43_4_cpf = 7897355470 |
q43_4_cpf = 4567833422 |
q43_4_cpf = 7449013401 |
q43_4_cpf = 3016142457 |
q43_4_cpf = 2005244457 |
q43_4_cpf = 5732496440 |
q43_4_cpf = 3200320435 |
q43_4_cpf = 4809887499 |
q43_4_cpf = 6148501422 |
q43_4_cpf = 39887081434 |
q43_4_cpf = 861902530 |
q43_4_cpf = 1739142500 |
q43_4_cpf = 3826897552 |
q43_4_cpf = 6449242680 |
q43_4_cpf = 53556089653 |
q43_4_cpf = 8836761682 |
q43_4_cpf = 9897969659 |
q43_4_cpf = 4923153610 |
q43_4_cpf = 7632652760 |
q43_4_cpf = 37053499880 |
q43_4_cpf = 9835609861 |
q43_4_cpf = 4024586998 |
q43_4_cpf = 2604594889 |
q43_4_cpf = 4683917890 |
q43_4_cpf = 5697177879 |
q43_4_cpf = 97128783920 |
q43_4_cpf = 6777585966 |
q43_4_cpf = 25029177949 |
q43_4_cpf = 6111577999 |
q43_4_cpf = 92508790915 |
q43_4_cpf = 45449376987 |
q43_4_cpf = 5405946958 |
q43_4_cpf = 63769417968 |
q43_4_cpf = 1792808992 |
q43_4_cpf = 6249536965 |
q43_4_cpf = 5602584960 |
q43_4_cpf = 88287018200 |
q43_4_cpf = 6020004910 |
q43_4_cpf = 72168501904 |
q43_4_cpf = 287817083 |
q43_4_cpf = 7248828980 |
q43_4_cpf = 81412940915 |
q43_4_cpf = 143438000 |
q43_4_cpf = 92108962034 |
q43_4_cpf = 295446021 |
q43_4_cpf = 382792076 |
q43_4_cpf = 51384167072 |
q43_4_cpf = 98918087004 |
q43_4_cpf = 1361909013 |
q43_4_cpf = 62673041087 |
q43_4_cpf = 59483385172 |
q43_4_cpf = 3326129530 |
q43_4_cpf = 45458030168 |
q43_4_cpf = 32306407134
) AND (MatchSequence > 0) q43_10_função = 2.
EXECUTE.			


***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & q43_10_função = 7) Tec_NS_Duplicado=1.
EXECUTE.

SORT CASES BY Tec_NS_Duplicado(D).

SUMMARIZE
  /TABLES=q43_4_cpf
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=159
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com Tec_NS_Duplicado****

IF (
q43_4_cpf = 85173541253 |
q43_4_cpf = 38244403268 |
q43_4_cpf = 38244403268 |
q43_4_cpf = 321449541 |
q43_4_cpf = 29332877220 |
q43_4_cpf = 873432231 |
q43_4_cpf = 35687967249 |
q43_4_cpf = 53137647215 |
q43_4_cpf = 354993208 |
q43_4_cpf = 59224509215 |
q43_4_cpf = 29801036249 |
q43_4_cpf = 93627459253 |
q43_4_cpf = 69526729234 |
q43_4_cpf = 61657271234 |
q43_4_cpf = 89109023372 |
q43_4_cpf = 76448339353 |
q43_4_cpf = 34448802353 |
q43_4_cpf = 56557140191 |
q43_4_cpf = 56217765349 |
q43_4_cpf = 85027405391 |
q43_4_cpf = 94759006320 |
q43_4_cpf = 2744025305 |
q43_4_cpf = 88740390349 |
q43_4_cpf = 3591064394 |
q43_4_cpf = 36126543300 |
q43_4_cpf = 70945195320 |
q43_4_cpf = 2114319318 |
q43_4_cpf = 3736559321 |
q43_4_cpf = 4686890365 |
q43_4_cpf = 26640783304 |
q43_4_cpf = 84514221449 |
q43_4_cpf = 5903446337 |
q43_4_cpf = 60005732352 |
q43_4_cpf = 65879090353 |
q43_4_cpf = 4473298396 |
q43_4_cpf = 5222678407 |
q43_4_cpf = 7910546408 |
q43_4_cpf = 2813004456 |
q43_4_cpf = 58761446491 |
q43_4_cpf = 3446944451 |
q43_4_cpf = 28207149434 |
q43_4_cpf = 28207149434 |
q43_4_cpf = 67678130449 |
q43_4_cpf = 55994377449 |
q43_4_cpf = 60356073491 |
q43_4_cpf = 3200320435 |
q43_4_cpf = 3890666485 |
q43_4_cpf = 8081262458 |
q43_4_cpf = 998703478 |
q43_4_cpf = 49616544420 |
q43_4_cpf = 2810250456 |
q43_4_cpf = 6945273431 |
q43_4_cpf = 3008456421 |
q43_4_cpf = 84135018491 |
q43_4_cpf = 5261000440 |
q43_4_cpf = 71338756591 |
q43_4_cpf = 1635756570 |
q43_4_cpf = 66393566 |
q43_4_cpf = 1637476523 |
q43_4_cpf = 40817415068 |
q43_4_cpf = 83227415534 |
q43_4_cpf = 83227415534 |
q43_4_cpf = 37805576572 |
q43_4_cpf = 70710350597 |
q43_4_cpf = 76934373553 |
q43_4_cpf = 1542837545 |
q43_4_cpf = 3110371510 |
q43_4_cpf = 8731075606 |
q43_4_cpf = 3975046678 |
q43_4_cpf = 4029998607 |
q43_4_cpf = 4330804697 |
q43_4_cpf = 8143481654 |
q43_4_cpf = 4457489662 |
q43_4_cpf = 3228224678 |
q43_4_cpf = 34545481876 |
q43_4_cpf = 6421678696 |
q43_4_cpf = 1478651660 |
q43_4_cpf = 9610169651 |
q43_4_cpf = 7532704637 |
q43_4_cpf = 8950224607 |
q43_4_cpf = 9975426670 |
q43_4_cpf = 74297473615 |
q43_4_cpf = 55641580678 |
q43_4_cpf = 11747578681 |
q43_4_cpf = 64885674620 |
q43_4_cpf = 6819670648 |
q43_4_cpf = 4281081640 |
q43_4_cpf = 53022475691 |
q43_4_cpf = 8308849636 |
q43_4_cpf = 11326821776 |
q43_4_cpf = 769200702 |
q43_4_cpf = 5225640702 |
q43_4_cpf = 11355544718 |
q43_4_cpf = 2861237708 |
q43_4_cpf = 90539729 |
q43_4_cpf = 7389560746 |
q43_4_cpf = 92880363772 |
q43_4_cpf = 9253546786 |
q43_4_cpf = 76674088749 |
q43_4_cpf = 41493096800 |
q43_4_cpf = 31064843816 |
q43_4_cpf = 38030011881 |
q43_4_cpf = 77393856700 |
q43_4_cpf = 3081347882 |
q43_4_cpf = 22036481809 |
q43_4_cpf = 85422398815 |
q43_4_cpf = 23126589847 |
q43_4_cpf = 24906779859 |
q43_4_cpf = 30584939833 |
q43_4_cpf = 26064408898 |
q43_4_cpf = 21758175800 |
q43_4_cpf = 21978372817 |
q43_4_cpf = 34994908893 |
q43_4_cpf = 94947880872 |
q43_4_cpf = 94947880872 |
q43_4_cpf = 14442282854 |
q43_4_cpf = 29289733896 |
q43_4_cpf = 43188885920 |
q43_4_cpf = 6571630907 |
q43_4_cpf = 9039632995 |
q43_4_cpf = 3295096910 |
q43_4_cpf = 6470261981 |
q43_4_cpf = 2722612976 |
q43_4_cpf = 5410981952 |
q43_4_cpf = 3165920990 |
q43_4_cpf = 2098283903 |
q43_4_cpf = 6249536965 |
q43_4_cpf = 8262256913 |
q43_4_cpf = 1011097923 |
q43_4_cpf = 75372193972 |
q43_4_cpf = 45084769968 |
q43_4_cpf = 6909767985 |
q43_4_cpf = 96393564091 |
q43_4_cpf = 28221206687 |
q43_4_cpf = 562814043 |
q43_4_cpf = 47007141072 |
q43_4_cpf = 94116105015 |
q43_4_cpf = 57519307972 |
q43_4_cpf = 679972013 |
q43_4_cpf = 96874201034 |
q43_4_cpf = 77885996115 |
q43_4_cpf = 38435462153 |
q43_4_cpf = 78203376134 |
q43_4_cpf = 88145000106 |
q43_4_cpf = 1146489307 |
q43_4_cpf = 3171266105 |
q43_4_cpf = 15851257172 |
q43_4_cpf = 99403935120 |
q43_4_cpf = 99483483115 |
q43_4_cpf = 95771620106 |
q43_4_cpf = 2022677170 |
q43_4_cpf = 68129246600 |
q43_4_cpf = 92136834134 |
q43_4_cpf = 37380360833 |
q43_4_cpf = 724802118 |
q43_4_cpf = 77016017168 |
q43_4_cpf = 31609260015 |
q43_4_cpf = 1360829121 |
q43_4_cpf = 2533575194
) AND (MatchSequence > 0) q43_10_função = 7.
execute.


FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.

RENAME VARIABLES
MatchSequence = Duplicado.
VARIABLE LABELS
Duplicado'Trabalhadores com duplicações'.
VALUE LABELS
/Duplicado
0'Não havia duplicações para este trabalhador'
1'Duplicações deste trabalhador foram removidas da base'
.
DELETE VARIABLES
Coord_Duplicado
Tec_NS_Duplicado.
EXECUTE.


***Foram eliminados 649 trabalhadores duplicados









