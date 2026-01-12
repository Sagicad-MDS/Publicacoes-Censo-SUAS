* Encoding: UTF-8.
**DADOS GERAIS Conselhos Estaduais**




FREQUENCIES VARIABLES= Regiao  q1 d1  q1_1  q2 q3  d3  q4 q5 d5 q6  q7
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr8 'Outras instituições ou unidades que se localizam no mesmo predio do Conselho' (q8_1 q8_2 q8_3 q8_4 q8_5   q8_6 q8_7 q8_8  q8_9    q8_10 
 q8_11 q8_99 (1))
 /FREQUENCIES=$mr8.


FREQUENCIES VARIABLES=d9_exclusivas_categoria d9_compartilhadas_categoria  
     d9_total_categoria  d9_5  q9_6
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr10 ' Quais os equipamentos e materiais disponíveis, em funcionamento, para o desenvolvimento das atividades deste Conselho' (q10_1 q10_2  q10_3  q10_4  q10_5   q10_6  q10_7  q10_8  q10_9   q10_10 
 q10_11  q10_12 q10_13 (1))
 /FREQUENCIES=$mr10.


FREQUENCIES VARIABLES=d11_exclusivos_categoria d11_compartilhados_categoria d11_internet_categoria 
   d11_total_categoria
  /ORDER=ANALYSIS.

 

FREQUENCIES VARIABLES=q12  q13    q14_1 q14_2 q15_1 q15_2 q16  q17  q18   
  /ORDER=ANALYSIS.





CTABLES
  /VLABELS VARIABLES=q19_1 q19_2 q19_3 q19_4 q19_5 q19_6 q19_7 q19_8 DISPLAY=LABEL
  /TABLE q19_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q19_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q19_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q19_4 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q19_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q19_6 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q19_7 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q19_8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q19_1 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q19_2 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q19_3 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q19_4 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
 /CATEGORIES VARIABLES=q19_5 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q19_6 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q19_7 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q19_8 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Em 2019,quais as seguintes despesas custeadas por este Conselho'.


FREQUENCIES VARIABLES=q20   q21  q22   
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr23 'Como é a relação deste Conselho com os Conselhos Municipais de seu estado' (q23_1 q23_2  q23_3  q23_4 q23_99 (1))
 /FREQUENCIES=$mr23.

MULT RESPONSE GROUPS=$mr24 'Em 2019, quais temas foram foco do assessoramento do Conselho Estadual para o Conselho Municipal de Assistência Social?' (q24_1 q24_2  q24_3  q24_4 q24_5  q24_6  q24_7 q24_8(1))
 /FREQUENCIES=$mr24.


FREQUENCIES VARIABLES=q25   q26  q27    
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr28 'De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?' (q28_0 q28_1 q28_2  q28_3  q28_4 q28_5  q28_6  q28_7(1))
 /FREQUENCIES=$mr28.


FREQUENCIES VARIABLES=q29   
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr30 'O  Conselho possui alguma estratégia de  comunicação com as(os) usuárias(os) do SUAS?' (q30_1 q30_2  q30_3  q30_4 q30_5  q30_99(1))
 /FREQUENCIES=$mr30.



FREQUENCIES VARIABLES=q31  d31_1_99 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr32 'Assinale os temas discutidos pelo Conselho em 2018' (q32_1 q32_2 q32_3 q32_4 q32_5 q32_6 q32_7 q32_8 q32_9 q32_10 q32_11 q32_12 q32_13 q32_14 q32_15 
q32_16 q32_17 q32_18 q32_19 q32_20 q32_21 q32_22 q32_23 q32_24 q32_25  q32_26 q32_27 q32_28 q32_29 q32_99(1))
 /FREQUENCIES=$mr32.

FREQUENCIES VARIABLES=  q33 q34
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q35  q36  q37  q38  q39  q40  q41_1  q41_2 q41_3  q41_4 q41_5 q42 q43 q44  q45_1 q45_2 q45_3 q46 q47  q48 
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr49 'O que está estabelecido por esta Resolução?' (q49_1  q49_2  q49_3  q49_4  q49_5  q49_6  q49_7  q49_8 q49_9 q49_99(1))
 /FREQUENCIES=$mr49.


FREQUENCIES VARIABLES=d50  d51 d52  d52_total
  /ORDER=ANALYSIS.




MULT RESPONSE GROUPS=$mr53 'Quais os principais motivos de indeferimento?' (q53_1 q53_2  q53_3  q53_99  q53_0(1))
 /FREQUENCIES=$mr53.



FREQUENCIES VARIABLES=  d54  d55  d56   q57 q58 q59 q60 q61 q62
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr63 'Para o segmento de usuárias(os), quem tem direito a voto no processo de eleição dos representantes da sociedade civil?' (q63_1 q63_2 q63_0(1))
 /FREQUENCIES=$mr63.

MULT RESPONSE GROUPS=$mr64'As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:' (q64_1 q64_2 q64_3 q64_4 q64_5 q64_6 q64_99(1))
 /FREQUENCIES=$mr64.


MULT RESPONSE GROUPS=$mr65 'As(Os) representantes de trabalhadoras(es) são:' (q65_1  q65_2 q65_3 q65_4 q65_99 q65_0(1)) 
 /FREQUENCIES=$mr65.

FREQUENCIES VARIABLES=q66 
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr67 'Quais das comissões permanentes estão funcionando regularmente nesse conselho?' (q67_1 q67_2 q67_3 q67_4 q67_5 q67_6 q67_7 q67_8 q67_99 (1))
 /FREQUENCIES=$mr67. 



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao q68_1 q68_2 DISPLAY=LABEL
  /TABLE Regiao [C] BY q68_1 [S][SUM] + q68_2 [S][SUM]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q68_1 q68_2 DISPLAY=LABEL
  /TABLE UF [C] BY q68_1 [S][SUM] + q68_2 [S][SUM]
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.





* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao  q69_1  q69_2  q69_3  q69_4  DISPLAY=LABEL
  /TABLE Regiao [C] BY q69_1 [S][SUM] + q69_2 [S][SUM] + q69_3 [S][SUM] + q69_3 [S][SUM]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q69_1  q69_2  q69_3  q69_4 DISPLAY=LABEL
  /TABLE UF [C] BY q69_1 [S][SUM] + q69_2  [S][SUM] + q69_3 [S][SUM] + q69_4 [S][SUM]
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=Regiao  q70_1 q70_2   q70_3  q70_4  q70_5  q70_6  DISPLAY=LABEL
  /TABLE Regiao [C] BY q70_1 [S][SUM] + q70_2 [S][SUM] +  q70_3 [S][SUM] + q70_4 [S][SUM]+  q70_5 [S][SUM] + q70_6 [S][SUM]
  /CATEGORIES VARIABLES=Regiao [1, 2, 3, 4, 5, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.



* Custom Tables.
CTABLES
  /VLABELS VARIABLES=UF q70_1 q70_2   q70_3  q70_4  q70_5  q70_6  DISPLAY=LABEL
  /TABLE UF [C] BY q70_1 [S][SUM] + q70_2 [S][SUM] +  q70_3 [S][SUM] + q70_4 [S][SUM]+  q70_5 [S][SUM] + q70_6 [S][SUM]
  /CATEGORIES VARIABLES=UF [11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 
    33, 35, 41, 42, 43, 50, 51, 52, 53, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER.
