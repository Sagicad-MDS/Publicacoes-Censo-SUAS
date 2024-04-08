* Encoding: UTF-8.
**DADOS GERAIS Conselhos Estaduais**




FREQUENCIES VARIABLES= Regiao  
  /ORDER=ANALYSIS.




FREQUENCIES VARIABLES=  d1  q1_1  q2  d3  q4  d5 q6  q7
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr8 'Outras instituições ou unidades que se localizam no mesmo predio do Conselho' (q8_1 q8_2 q8_3 q8_4 q8_5  q8_6 q8_7 q8_8  q8_9  q8_10 q8_11 q8_99 (1))
 /FREQUENCIES=$mr8.


FREQUENCIES VARIABLES=d9_exclusivas_categoria  d9_compartilhadas_categoria  d9_total_categoria  d9_7  q9_8
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr10 ' Quais os equipamentos e materiais disponíveis, em funcionamento, para o desenvolvimento das atividades deste Conselho' (q10_1 q10_2  q10_3  q10_4  q10_5   q10_6  q10_7  q10_8  q10_9   q10_10 
 q10_11  q10_12 q10_13   q10_14  q10_15 (1))
 /FREQUENCIES=$mr10.


FREQUENCIES VARIABLES=d11_exclusivos_categoria d11_compartilhados_categoria  d11_internet_categoria    d11_total_categoria
  /ORDER=ANALYSIS.

 

FREQUENCIES VARIABLES=q12  q13   d14_1 d14_2   q15_1 q15_2
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr16 ' A Secretaria Executiva promove/facilita acesso dos conselheiros a materiais informativos, capacitações, caderno de orientações' 
(q16_0  q16_1  q16_2  q16_3  q16_4  q16_99 (1))
 /FREQUENCIES=$mr16.


FREQUENCIES VARIABLES=q17
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr18 ' Quais procedimentos são realizados pela Secretaria Executiva' 
(q18_1 q18_2  q18_3  q18_4 (1))
 /FREQUENCIES=$mr18.


FREQUENCIES VARIABLES=q19 q20 q21
  /ORDER=ANALYSIS.




CTABLES
  /VLABELS VARIABLES=q22_1 q22_2 q22_3 q22_4 q22_5 q22_6 q22_7 q22_8 DISPLAY=LABEL
  /TABLE q22_1 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q22_2 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q22_3 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q22_4 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q22_5 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q22_6 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q22_7 [C][COUNT 
    F40.0, ROWPCT.COUNT PCT40.1] + q22_8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] 
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q22_1 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q22_2 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q22_3 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q22_4 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
 /CATEGORIES VARIABLES=q22_5 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q22_6 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q22_7 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q22_8 [0, 1, 2, 3, OTHERNM] EMPTY=INCLUDE
  /TITLES
    TITLE='Em 2020,quais as seguintes despesas custeadas por este Conselho'.



FREQUENCIES VARIABLES=q23  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr24 'De que forma o calendário do Conselho é publicizadas'
 (q24_0 q24_1 q24_2 q24_3 q24_4 q24_5 q24_6
q24_7(1))
 /FREQUENCIES=$mr24.

FREQUENCIES VARIABLES=d25  
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr26 'De que forma as atas do Conselho são publicizadas (tornam-se de conhecimento para a sociedade)?' (q26_0
q26_1 q26_2 q26_3 q26_4 q26_5 q26_6 q26_7(1))
 /FREQUENCIES=$mr26.


FREQUENCIES VARIABLES=q27   
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr28 'O  Conselho possui alguma estratégia de  comunicação com as(os) usuárias(os) do SUAS?' 
(q28_0 q28_1 q28_2 q28_3  q28_4  q28_5  q28_99(1))
 /FREQUENCIES=$mr28.

MULT RESPONSE GROUPS=$mr29 'Atividades que  o Conselho desenvolve para fomentar/estimular a partticipação dos usuarios  do SUAS?' 
(q29_1  q29_2 q29_3  q29_4  q29_5  q29_99  q29_0(1))
 /FREQUENCIES=$mr29.


FREQUENCIES VARIABLES=q30 d31_1_99
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr32 'Em 2019, o Conselho participou dos seguintes processos '
 (q32_1 q32_2  q32_3  q32_4  q32_5  q32_0 (1))
 /FREQUENCIES=$mr32.


MULT RESPONSE GROUPS=$mr33 'Quais temas discutidos pelo Conselho em 2019'
 (q33_1  q33_2  q33_3  q33_4  q33_5  q33_6  q33_7  q33_8 q33_9  q33_10  q33_11  q33_12  q33_13  q33_14  q33_15   q33_16  q33_17 q33_18  q33_19  q33_20  q33_21  q33_22  q33_23  q33_24  q33_25  q33_26 q33_27  q33_28  q33_29  q33_99 (1))
 /FREQUENCIES=$mr33.

FREQUENCIES VARIABLES=  q34 q35 q36  q37 q38 q39  q40  q41  q42
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q43_1 q43_2 q43_3 q43_4 q43_5 DISPLAY=LABEL
  /TABLE q43_1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q43_2 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q43_3 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q43_4 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q43_5 [C][COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q43_1 [0, 1, 2, 3, 4, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q43_2 q43_3 q43_4 q43_5 ORDER=A KEY=VALUE EMPTY=INCLUDE.
 

FREQUENCIES VARIABLES=q44 
  /ORDER=ANALYSIS.

**************************************conselho estadual

*FREQUENCIES VARIABLES=q45  q46   d47
  /ORDER=ANALYSIS.

*MULT RESPONSE GROUPS=$mr48 'Como é a relação deste conselho com os conselhos municipais de seu estado'
 (q33_1  q33_2  q33_3  q33_4  q33_5  q33_6  q33_7  q33_8 q33_9  q33_10  q33_11  q33_12  q33_13  q33_14  q33_15   q33_16  q33_17 q33_18  q33_19  q33_20  q33_21  q33_22  q33_23  q33_24  q33_25  q33_26 q33_27  q33_28  q33_29  q33_99 (1))
 /FREQUENCIES=$mr48.

*MULT RESPONSE GROUPS=$mr49 'Em 2020, quais temas foram foco de assessoramento tecnico sistematico do conselho estadual para o conselho municipal'
 (q49_1 q49_2  q49_3 q49_4  q49_5  q49_6  q49_7  q49_8  q49_9  q49_10  q49_99 (1)) 
 /FREQUENCIES=$mr49.  


*FREQUENCIES VARIABLES=q50 d51_1  d51_2  q52
  /ORDER=ANALYSIS.

***********************************************************************************************************************************************************************************************************

FREQUENCIES VARIABLES=  q53  q54  q55 d56_1  d56_2 q57  q58 d59_1
  /ORDER=ANALYSIS.



MULT RESPONSE GROUPS=$mr60 'O que está estabelecido por esta Resolução?'
 (q60_1 q60_2 q60_3  q60_4 q60_5 q60_6  q60_7  q60_8 q60_9  q60_99(1))
 /FREQUENCIES=$mr60.


FREQUENCIES VARIABLES=d61  d62  d63_1 d63_2  
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr64 'Quais os principais motivos de indeferimento?'
 (q64_1  q64_2  q64_3  q64_99  q64_0(1))
 /FREQUENCIES=$mr64.


FREQUENCIES VARIABLES= d65 d66  d67 q68  q69  q70  q71  q72 q73  q74  q75
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr76 'Esta previsto em normativos do conselho a representação de usuarios, trabalhadores e entidades socioassistencial na composição da Sociedade Civil'
 (q76_1  q76_2  q76_3  q76_0(1))
 /FREQUENCIES=$mr76.

MULT RESPONSE GROUPS=$mr77 'Para o segmento de usuárias(os), quem tem direito a voto no processo de eleição dos representantes da sociedade civil?'
 (q77_1 q77_2 q77_0(1))
 /FREQUENCIES=$mr77.

MULT RESPONSE GROUPS=$mr78 'As(Os) representantes de usuárias(os) ou organização de usuárias(os) são:' 
(q78_1 q78_2 q78_3  q78_4  q78_5  q78_6  q78_99(1))
 /FREQUENCIES=$mr78.

MULT RESPONSE GROUPS=$mr79 'As(Os) representantes de trabalhadoras(es) são:' 
(q79_1  q79_2  q79_3  q79_4  q79_99  q79_0(1)) 
 /FREQUENCIES=$mr79.


FREQUENCIES VARIABLES= q80
  /ORDER=ANALYSIS.


MULT RESPONSE GROUPS=$mr81 'Quais das comissões permanentes estão funcionando regularmente nesse conselho?' 
(q81_1  q81_2  q81_3  q81_4  q81_5   q81_6  q81_7  q81_8  q81_99 (1))
 /FREQUENCIES=$mr81. 

FREQUENCIES VARIABLES= q80    d82_1 d82_2  d83_5  d83_6 d84_1  d84_2  d84_3  d84_4  d84_5  d84_6
  /ORDER=ANALYSIS.














