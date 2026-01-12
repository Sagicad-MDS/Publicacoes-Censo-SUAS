* Encoding: UTF-8.
**DADOS GERAIS Conselhos Estaduais**




FREQUENCIES VARIABLES= Regiao  q_1 d1
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=d1 DISPLAY=LABEL 
  /TABLE d1 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=d1 ORDER=A KEY=VALUE EMPTY=INCLUDE.


FREQUENCIES VARIABLES=q_1_1  q_2 q_3  d3  q_4 q_5 d5 q_6  q_7
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr8 'Outras instituições ou unidades que se localizam no mesmo predio do Conselho' (q_8_1 q_8_2 q_8_3 q_8_4 q_8_5   q_8_6 q_8_7 q_8_8  q_8_9    q_8_10 
 q_8_11 q_8_99 (1))
 /FREQUENCIES=$mr8.


FREQUENCIES VARIABLES=d9_exclusivas_categoria d9_compartilhadas_categoria  
     d9_total_categoria  d9_5  q_9_6
  /ORDER=ANALYSIS.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=d9_5 DISPLAY=LABEL
  /TABLE BY d9_5 [MEAN].




MULT RESPONSE GROUPS=$mr10 ' Quais os equipamentos e materiais disponíveis, em funcionamento, para o desenvolvimento das atividades deste Conselho' (q_10_1 q_10_2  q_10_3  q_10_4  q_10_5   q_10_6  q_10_7  q_10_8  q_10_9   q_10_10 
 q_10_11  q_10_12 q_10_13 (1))
 /FREQUENCIES=$mr10.


FREQUENCIES VARIABLES=d11_exclusivos_categoria d11_compartilhados_categoria d11_internet_categoria 
   d11_total_categoria
  /ORDER=ANALYSIS.

 

FREQUENCIES VARIABLES=q_12  q_13    q_14_1 q_14_2 q_15_1 q_15_2 q_16  q_17  q_18   
  /ORDER=ANALYSIS.





CTABLES
  /VLABELS VARIABLES=q_19_1 q_19_2 q_19_3 q_19_4 q_19_5 q_19_6 q_19_7 q_19_8 DISPLAY=LABEL
  /TABLE q_19_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_19_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_19_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_19_4 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q_19_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_19_6 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_19_7 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q_19_8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q_19_1 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_19_2 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_19_3 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_19_4 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
 /CATEGORIES VARIABLES=q_19_5 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_19_6 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_19_7 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_19_8 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Em 2018,quais as seguintes despesas custeadas por este Conselho'.


FREQUENCIES VARIABLES=q_20   q_21  q_22   
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr23 'Como é a relação deste Conselho com os Conselhos Municipais de seu estado' (q_23_1 q_23_2  q_23_3  q_23_4 q_23_99 (1))
 /FREQUENCIES=$mr23.

MULT RESPONSE GROUPS=$mr24 'Em 2018, quais temas foram foco do assessoramento do Conselho Estadual para o Conselho Municipal de Assistência Social?' (q_24_1 q_24_2  q_24_3  q_24_4 q_24_5  q_24_6  q_24_7 q_24_99(1))
 /FREQUENCIES=$mr24.


FREQUENCIES VARIABLES=q_25   q_26  q_27    
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr28 'De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?' (q_28_0 q_28_1 q_28_2  q_28_3  q_28_4 q_28_5  q_28_6  q_28_7(1))
 /FREQUENCIES=$mr28.


FREQUENCIES VARIABLES=q_29   
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr30 'O  Conselho possui alguma estratégia de  comunicação com as(os) usuárias(os) do SUAS?' (q_30_1 q_30_2  q_30_3  q_30_4 q_30_5  q_30_99(1))
 /FREQUENCIES=$mr30.



FREQUENCIES VARIABLES=q_31  d31  q_32  q_33
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr34 'Assinale os temas discutidos pelo Conselho em 2017' (q_34_1 q_34_2  q_34_3  q_34_4 q_34_5  q_34_6 q_34_7 q_34_8 q_34_9 q_34_10
q_34_11 q_34_12 q_34_13 q_34_14 q_34_15  q_34_16  q_34_17 q_34_18  q_34_19  q_34_20  q_34_21  q_34_22  q_34_23  q_34_24  q_34_25
q_34_26  q_34_27  q_34_28  q_34_29   q_34_99(1))
 /FREQUENCIES=$mr34.

FREQUENCIES VARIABLES=q_35  q_36  q_37  q_38  q_39  q_40  q_40_0  q_41 q_42 q_43 q_44
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q_45_1 q_45_2 q_45_3 q_45_4 q_45_5 DISPLAY=LABEL
  /TABLE q_45_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_45_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_45_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q_45_4 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q_45_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q_45_1 [0, 1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_45_2 [0, 1, 2, 3, 4,  OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_45_3 [0, 1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q_45_4 [0, 1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE
 /CATEGORIES VARIABLES=q_45_5 [0, 1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Com que frequencia esse Conselho'.




FREQUENCIES VARIABLES=q_46 q_47  q_48 d49_1 d49_2 d49_3 q_50  q_51  d52_2
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr53 'O que está estabelecido por esta Resolução?' (q_53_1  q_53_2  q_53_3  q_53_4 q_53_5  q_53_6 q_53_7 q_53_8 q_53_9 q_53_99(1))
 /FREQUENCIES=$mr53.


FREQUENCIES VARIABLES=d54 d55 d56 d56_total 
  /ORDER=ANALYSIS.




MULT RESPONSE GROUPS=$mr57 'Quais os principais motivos de indeferimento?' (q_57_1  q_57_2  q_57_3  q_57_99(1))
 /FREQUENCIES=$mr57.



FREQUENCIES VARIABLES=d58  d59 d60 q_61  q_62  q_63 q_64 q_65  q_66
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr67 'Para o segmento de usuárias(os), quem tem direito a voto no processo de eleição dos representantes da sociedade civil?' (q_67_1  q_67_2  q_67_0(1))
 /FREQUENCIES=$mr67.

MULT RESPONSE GROUPS=$mr68 'As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:' (q_68_1  q_68_2  q_68_3  q_68_4  q_68_5  q_68_6 q_68_99(1))
 /FREQUENCIES=$mr68.


MULT RESPONSE GROUPS=$mr69 'As(Os) representantes de trabalhadoras(es) são:' (q_69_1  q_69_2  q_69_3  q_69_4  q_69_99 q_69_0(1))
 /FREQUENCIES=$mr69.

FREQUENCIES VARIABLES=q_70 
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr71 'Quais das comissões permanentes estão funcionando regularmente nesse conselho?' (q_71_1  q_71_2  q_71_3  q_71_4   q_71_5  q_71_6  q_71_7  q_71_8   q_71_99 (1))
 /FREQUENCIES=$mr71. 



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao q_72_1 q_72_2 DISPLAY=LABEL
  /TABLE Regiao [C] BY q_72_1 [S][SUM] + q_72_2 [S][SUM]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q_72_1 q_72_2 DISPLAY=LABEL
  /TABLE UF [C] BY q_72_1 [S][SUM] + q_72_2 [S][SUM]
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.





* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao UF q_73_1 q_73_2 q_73_3 q_73_4 DISPLAY=LABEL
  /TABLE Regiao + UF [C] BY q_73_1 [S][COUNT F40.0] + q_73_2 [S][COUNT F40.0] + q_73_3 [COUNT 
    F40.0] + q_73_4 [COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q_73_1 q_73_2 q_73_3 q_73_4 DISPLAY=LABEL
  /TABLE UF [C] BY q_73_1 [S][SUM] + q_73_2 [S][SUM] + q_73_3 [S][SUM] + q_73_4 [S][SUM]
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.




* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao UF q_74_1 q_74_2 q_74_3 q_74_4 q_74_5 q_74_6 
    DISPLAY=LABEL
  /TABLE Regiao [C] + UF [C] BY q_74_1 [S][COUNT F40.0] + q_74_2 [S][COUNT F40.0] + q_74_3 
    [S][COUNT F40.0] + q_74_4 [S][COUNT F40.0] + q_74_5 [S][COUNT F40.0] + q_74_6 [S][COUNT F40.0]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
