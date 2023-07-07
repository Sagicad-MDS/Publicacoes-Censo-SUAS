 Na base de Recursos Humanos rodar a seguinte syntax para identificar casos duplicados

SORT CASES BY id_acolhimento(A) q44_4_velha(A).
MATCH FILES
  /FILE=*
  /BY id_acolhimento q44_4_velha
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

IF  (MatchSequence > 1 & (q44_11= 21 | q44_11= 30 )) Coord_Duplicado=1.
EXECUTE.

SORT CASES BY Coord_Duplicado(D).


*** ATENÇÃO:  Fazer 'summarize' de apenas os casos em que coord_duplicado=1 e colocar em /format... total limit= numero de casos com coord. duplicado ****

SUMMARIZE
  /TABLES=q44_4_velha
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=31
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF
( 
q44_4_velha = 17952166468 |
q44_4_velha = 2217339907 |
q44_4_velha = 68634064620 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 78868505649 |
q44_4_velha = 7748513686 |
q44_4_velha = 72859768653 |
q44_4_velha = 7134570665 |
q44_4_velha = 53517970620 |
q44_4_velha = 82134251620 |
q44_4_velha = 8345347622 |
q44_4_velha = 38642735791 |
q44_4_velha = 54038413772 |
q44_4_velha = 26886136852 |
q44_4_velha = 17203692833 |
q44_4_velha = 31787027848 |
q44_4_velha = 4315031844 |
q44_4_velha = 12577241852 |
q44_4_velha = 34909353810 |
q44_4_velha = 1728827965 |
q44_4_velha = 87786370900 |
q44_4_velha = 76213161953 |
q44_4_velha = 93268696015 |
q44_4_velha = 24447862115 
) AND (MatchSequence > 0) NOVAq44_11= 1.
execute.

IF  (q44_11 = 21 & NOVAq44_11 = 1) NOVAq44_11=21.
EXECUTE.

IF  (q44_11 = 30 & NOVAq44_11 = 1) NOVAq44_11=30.
EXECUTE.

IF  (SYSMIS (NOVAq44_11)) NOVAq44_11=q44_11.
EXECUTE.


***Duplicação Tecnico NS -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & NOVAq44_11 = 218) Eq_Tecnica_Duplicado=1.
EXECUTE.

SORT CASES BY Eq_Tecnica_Duplicado (D).

*** ATENÇÃO: Fazer 'summarize' de apenas os casos em que Tec_NS_Duplicado=1 e colocar em /format... total limit= numero de casos com tec. superior duplicado ****


SUMMARIZE
  /TABLES=q44_4_velha
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=133
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF			
(
q44_4_velha = 23411635215 |
q44_4_velha = 12501387368 |
q44_4_velha = 30469074353 |
q44_4_velha = 16151445368 |
q44_4_velha = 64137724334 |
q44_4_velha = 3227283476 |
q44_4_velha = 3412012432 |
q44_4_velha = 7030454405 |
q44_4_velha = 73586803400 |
q44_4_velha = 3644277443 |
q44_4_velha = 61590630491 |
q44_4_velha = 5384610476 |
q44_4_velha = 9247718449 |
q44_4_velha = 95374876520 |
q44_4_velha = 98024175568 |
q44_4_velha = 18749844504 |
q44_4_velha = 82936927668 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1242606670 |
q44_4_velha = 3998153683 |
q44_4_velha = 4666132619 |
q44_4_velha = 9170323658 |
q44_4_velha = 1466581670 |
q44_4_velha = 7450091666 |
q44_4_velha = 98546724687 |
q44_4_velha = 3017201694 |
q44_4_velha = 10406852693 |
q44_4_velha = 6089411663 |
q44_4_velha = 7529860666 |
q44_4_velha = 93268432620 |
q44_4_velha = 68947488615 |
q44_4_velha = 7856149663 |
q44_4_velha = 5024078675 |
q44_4_velha = 2423663684 |
q44_4_velha = 20748043268 |
q44_4_velha = 11859197752 |
q44_4_velha = 267969708 |
q44_4_velha = 3607714754 |
q44_4_velha = 7734014747 |
q44_4_velha = 1290966796 |
q44_4_velha = 9532124756 |
q44_4_velha = 2544643781 |
q44_4_velha = 5269087774 |
q44_4_velha = 87511363504 |
q44_4_velha = 95662952787 |
q44_4_velha = 8721576793 |
q44_4_velha = 10431277710 |
q44_4_velha = 31204274894 |
q44_4_velha = 26126666801 |
q44_4_velha = 13975296879 |
q44_4_velha = 21965902820 |
q44_4_velha = 5390867890 |
q44_4_velha = 13800527855 |
q44_4_velha = 13184289800 |
q44_4_velha = 27787523824 |
q44_4_velha = 27525850801 |
q44_4_velha = 16235105894 |
q44_4_velha = 50077112849 |
q44_4_velha = 2081953862 |
q44_4_velha = 22356572813 |
q44_4_velha = 37490311349 |
q44_4_velha = 32181109800 |
q44_4_velha = 40754631842 |
q44_4_velha = 22823470808 |
q44_4_velha = 29767947825 |
q44_4_velha = 7889753829 |
q44_4_velha = 2789616817 |
q44_4_velha = 81010540815 |
q44_4_velha = 29039858802 |
q44_4_velha = 39226535884 |
q44_4_velha = 15021600800 |
q44_4_velha = 29121453845 |
q44_4_velha = 12760661806 |
q44_4_velha = 28823488869 |
q44_4_velha = 27899141842 |
q44_4_velha = 5660065961 |
q44_4_velha = 3079728955 |
q44_4_velha = 73111546934 |
q44_4_velha = 44258178004 |
q44_4_velha = 43008771068 |
q44_4_velha = 94798869015 |
q44_4_velha = 97621846020 |
q44_4_velha = 1309108137 |
q44_4_velha = 3489111141 |
q44_4_velha = 77668189149 |
q44_4_velha = 20539592153 |
q44_4_velha = 48610682153 |
q44_4_velha = 58986553104 |
q44_4_velha = 96868910134 |
q44_4_velha = 27046737134 |
q44_4_velha = 288899164 |
q44_4_velha = 2807944108 |
q44_4_velha = 72955953172 |
q44_4_velha = 87454718191 |
q44_4_velha = 1377006360 |
q44_4_velha = 3694022198 |
q44_4_velha = 36108430630 |
q44_4_velha = 583411100 |
q44_4_velha = 16028361836 |
q44_4_velha = 95535209104 |
q44_4_velha = 3682752137 |
q44_4_velha = 63568411172 
) AND (MatchSequence > 0) NOVAq44_11 = 2.
execute.

IF  (q44_11 = 218 & NOVAq44_11 = 1) NOVAq44_11=218.
EXECUTE.


***Duplicação Cuidador -  RODAR APÓS A SYNTAX ACIMA**********************************


IF  (MatchSequence > 1 & ( NOVAq44_11 = 349 | NOVAq44_11 = 350 )) Cuidador_Duplicado=1.
EXECUTE.

SORT CASES BY Cuidador_Duplicado (D).


SUMMARIZE
  /TABLES=q44_4_velha
  /FORMAT=VALIDLIST NOCASENUM TOTAL LIMIT=132
  /TITLE='Case Summaries'
  /MISSING=VARIABLE
  /CELLS=COUNT.

IF			
( 
q44_4_velha = 1864914335 |
q44_4_velha = 55304478134 |
q44_4_velha = 41608720420 |
q44_4_velha = 3055187474 |
q44_4_velha = 6367706488 |
q44_4_velha = 408456566 |
q44_4_velha = 2111948594 |
q44_4_velha = 90832558591 |
q44_4_velha = 967138523 |
q44_4_velha = 91889227668 |
q44_4_velha = 57240159604 |
q44_4_velha = 3598716664 |
q44_4_velha = 4296118625 |
q44_4_velha = 5226586604 |
q44_4_velha = 402143620 |
q44_4_velha = 4701329657 |
q44_4_velha = 7160351622 |
q44_4_velha = 7765017632 |
q44_4_velha = 12085067654 |
q44_4_velha = 14209240877 |
q44_4_velha = 74719670644 |
q44_4_velha = 1462761674 |
q44_4_velha = 5890122665 |
q44_4_velha = 8523795600 |
q44_4_velha = 12804845605 |
q44_4_velha = 27552713615 |
q44_4_velha = 69881952620 |
q44_4_velha = 4561698655 |
q44_4_velha = 5353142640 |
q44_4_velha = 9095400638 |
q44_4_velha = 53828682634 |
q44_4_velha = 66022134668 |
q44_4_velha = 6234847650 |
q44_4_velha = 7420890617 |
q44_4_velha = 75876868604 |
q44_4_velha = 79328172691 |
q44_4_velha = 3762544590 |
q44_4_velha = 8735849614 |
q44_4_velha = 34719555691 |
q44_4_velha = 59133350663 |
q44_4_velha = 42861926600 |
q44_4_velha = 2981169602 |
q44_4_velha = 81428243615 |
q44_4_velha = 4335810695 |
q44_4_velha = 6694711603 |
q44_4_velha = 8883835689 |
q44_4_velha = 8888635602 |
q44_4_velha = 66173272687 |
q44_4_velha = 4209995665 |
q44_4_velha = 7084007601 |
q44_4_velha = 8493382639 |
q44_4_velha = 8700015660 |
q44_4_velha = 9771473638 |
q44_4_velha = 89352807634 |
q44_4_velha = 2804293637 |
q44_4_velha = 4525693622 |
q44_4_velha = 44598718668 |
q44_4_velha = 75635283691 |
q44_4_velha = 99894963668 |
q44_4_velha = 8823319650 |
q44_4_velha = 2756152781 |
q44_4_velha = 7917835707 |
q44_4_velha = 84649011787 |
q44_4_velha = 8687760760 |
q44_4_velha = 12398913775 |
q44_4_velha = 1819214729 |
q44_4_velha = 78300290753 |
q44_4_velha = 3134966760 |
q44_4_velha = 30928923304 |
q44_4_velha = 57248818704 |
q44_4_velha = 98550357715 |
q44_4_velha = 25612510802 |
q44_4_velha = 12354301898 |
q44_4_velha = 27985184821 |
q44_4_velha = 31844481859 |
q44_4_velha = 37303151885 |
q44_4_velha = 42463157968 |
q44_4_velha = 5425237871 |
q44_4_velha = 41844492800 |
q44_4_velha = 11388264803 |
q44_4_velha = 299833399 |
q44_4_velha = 22884848886 |
q44_4_velha = 22131433824 |
q44_4_velha = 33945703867 |
q44_4_velha = 483194905 |
q44_4_velha = 17902012840 |
q44_4_velha = 43566676896 |
q44_4_velha = 9577549810 |
q44_4_velha = 39310001844 |
q44_4_velha = 2474544860 |
q44_4_velha = 13278984897 |
q44_4_velha = 29298680821 |
q44_4_velha = 26619557805 |
q44_4_velha = 30482115866 |
q44_4_velha = 40798296801 |
q44_4_velha = 6319553480 |
q44_4_velha = 72049979053 |
q44_4_velha = 37260197900 |
q44_4_velha = 3831992983 |
q44_4_velha = 1618619977 |
q44_4_velha = 706551974 |
q44_4_velha = 1672964938 |
q44_4_velha = 4880733911 |
q44_4_velha = 98890921900 |
q44_4_velha = 90283325968 |
q44_4_velha = 91462878920 |
q44_4_velha = 456492003 |
q44_4_velha = 496119095 |
q44_4_velha = 1350945005 |
q44_4_velha = 97829218153 |
q44_4_velha = 3422417109 |
q44_4_velha = 2957344181 |
q44_4_velha = 85865383531 |
q44_4_velha = 92592155104 |
q44_4_velha = 52776158149 |
q44_4_velha = 27263460300 |
q44_4_velha = 60074302 |
q44_4_velha = 2551552630 |
q44_4_velha = 58431349115 |
q44_4_velha = 1104592100 |
q44_4_velha = 78665736115 |
q44_4_velha = 89604075187 |
q44_4_velha = 425356116 |
q44_4_velha = 21422203808 |
q44_4_velha = 36006106191 |
q44_4_velha = 61081256168 |
q44_4_velha = 72265540110 |
q44_4_velha = 28858301587 |
q44_4_velha = 39753948387 |
q44_4_velha = 58364811134 |
q44_4_velha = 88552691191 |
q44_4_velha = 92046550463 
)  AND (MatchSequence > 0) NOVAq44_11 = 3.


IF  (q44_11 = 349 & NOVAq44_11 = 1) NOVAq44_11=349.
EXECUTE.

IF  (q44_11 = 350 & NOVAq44_11 = 1) NOVAq44_11=350.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (MatchSequence   <= 1).
EXECUTE.

** Base Original 84826 trabalhadores, sobraram 83824

IF  (q44_11 = 250 & NOVAq44_11 = 249) NOVAq44_11=250.
EXECUTE.

RENAME VARIABLES q44_11 = q44_11_velha. 
RENAME VARIABLES NOVAq44_11 = q44_11. 

VARIABLE LABELS q44_11'q44_11_Função'.
formats q44_11 (f2.0).

VALUE LABELS q44_11
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

SORT CASES BY id_acolhimento(A) q44_4_velha(A).
MATCH FILES
  /FILE=*
  /BY id_acolhimento q44_4_velha
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