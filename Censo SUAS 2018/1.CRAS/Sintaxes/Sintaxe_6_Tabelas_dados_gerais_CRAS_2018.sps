* Encoding: UTF-8.

**CENSO SUAS 2018 - CRAS**


FREQUENCIES VARIABLES=Regiao Porte_pop2010 UF
  /ORDER=ANALYSIS.

***BLOCO 1 - IDENTIFICAÇÃO DO CRAS**

FREQUENCIES VARIABLES=q_1  q_2 q_3_1  q_3_2  d_3
  /ORDER=ANALYSIS.



**BLOCO 2 - ESTRUTURA FÍSICA DO CRAS**

FREQUENCIES VARIABLES=q_4 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.5 'Tipo de unidade com a qual o CRAS compartilha seu imóvel'
(q_5_1 q_5_2 q_5_3  q_5_4  q_5_5  q_5_6  q_5_7  q_5_8  q_5_9  q_5_10  q_5_11  q_5_12 q_5_99 (1))
/FREQUENCIES=$mr.5.


MULT RESPONSE GROUPS=$mr.6 'Espaços do imóvel que são compartilhados entre o CRAS e a outra unidade'
(q_6_1  q_6_2  q_6_3  q_6_4  q_6_5  q_6_6  q_6_7  q_6_8  q_6_9  q_6_10  q_6_11  q_6_12 (1))
/FREQUENCIES=$mr.6.

FREQUENCIES VARIABLES= d_7_atend_categoria    d_7_adm_atend_categoria d_7_6_banheiros q_7_7 q_7_8 q_7_9 q_7_10
  /ORDER=ANALYSIS.



CTABLES
  /VLABELS VARIABLES=q_8_1 q_8_2 q_8_3 q_8_4 DISPLAY=LABEL
  /TABLE q_8_1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q_8_2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q_8_3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q_8_4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q_8_1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_8_2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_8_3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q_8_4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q_8.Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.


MULT RESPONSE GROUPS=$mr.9 'q11.Outras adaptações para assegurar acessibilidade'
(q_9_1 q_9_2 q_9_3 q_9_4 q_9_5 q_9_6 q_9_0 (1))
/FREQUENCIES=$mr.9.


MULT RESPONSE GROUPS=$mr.10 'q11.Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CRAS'
(q_10_1 q_10_2 q_10_3 q_10_4 q_10_5 q_10_6  q_10_7 q_10_8 q_10_9
q_10_10  q_10_11  q_10_12 q_10_13 q_10_14   q_10_15 (1))
/FREQUENCIES=$mr.10.


FREQUENCIES VARIABLES=d_11_1  d_11_2 
  /ORDER=ANALYSIS. 



**BLOCO 3 - SERVIÇO DE PROTEÇÃO E ATENDIMENTO INTEGRAL À FAMÍLIA***


MULT RESPONSE GROUPS=$mr.12 'q14.Ações e atividades desenvolvidas no âmbito do PAIF'
(q_12_1 q_12_2  q_12_3 q_12_4 q_12_5 q_12_6  q_12_7 q_12_8 q_12_9  q_12_10  q_12_11  q_12_12
q_12_13 q_12_14 q_12_15  q_12_16 (1))
/FREQUENCIES=$mr.12.


CTABLES 
  /VLABELS VARIABLES=q_13_A1 q_13_A2 DISPLAY=LABEL 
  /TABLE q_13_A1 [S][MEAN, SUM] + q_13_A2 [S][MEAN, SUM] 
  /TITLES 
    TITLE='q_13.Famílias em acompanhamento pelo PAIF - Média por CRAS'.


FREQUENCIES d_13_A1 d_13_A2 d_14_1
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.15 'q_15.Principais tematicas abordadas no atendimento coletivo realizado pelo PAIF'
(q_15_1  q_15_2  q_15_3  q_15_4  q_15_5  q_15_6 q_15_7 q_15_8  q_15_9 q_15_10  q_15_11  q_15_12 q_15_13  q_15_99 (1))
/FREQUENCIES=$mr.15.

FREQUENCIES q_16  
  /ORDER=ANALYSIS. 


CTABLES
  /VLABELS VARIABLES=q_17_1 q_17_2 q_17_3 q_17_4 q_17_5 q_17_6 DISPLAY=LABEL
  /TABLE q_17_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_17_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] +
    q_17_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_17_4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_17_5
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_17_6 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q_17_1 q_17_2 q_17_3 q_17_4 q_17_5 q_17_6 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q_17. Esta unidade oferta diretamente oferta Serviço de Convivência e Fortalecimento de Vínculos para os seguintes públicos? '.



MULT RESPONSE GROUPS=$mr.18 'q18.Este CRAS possui rede referenciada para oferta do Serviço de Convivência e Fortalecimento de Vínculos?'
(q_18_1  q_18_2 q_18_3  q_18_4 (1))
/FREQUENCIES=$mr.18.




CTABLES
  /VLABELS VARIABLES=q_19_1 q_19_2 q_19_3 q_19_4 q_19_5 q_19_6 DISPLAY=LABEL
  /TABLE q_19_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_19_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] +
    q_19_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_19_4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_19_5
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_19_6 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q_19_1 q_19_2 q_19_3 q_19_4 q_19_5 q_19_6 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q_19. A rede referenciada a este CRAS oferta Serviço de Convivência e Fortalecimento '+
    'de Vínculos para os' 'seguintes públicos? '.


FREQUENCIES q_20
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.21 'q21.Qual(is) dessas estratégias o técnico de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada?'
(q_21_1  q_21_2 q_21_3 q_21_4 q_21_5 q_21_6  q_21_7 q_21_8  q_21_9 q_21_0 (1))
/FREQUENCIES=$mr.21.

FREQUENCIES q_22
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.23 'q24.Quais atividades são realizadas com familiares/responsáveis dos participantes dos grupos do SCFV?'
(q_23_1 q_23_2 q_23_3 q_23_4 (1))
/FREQUENCIES=$mr.23.


**BLOCO 5 - SERVIÇO DE PSB NO DOMICILIO PARA PESSOAS COM DEFICIENCIA E IDOSAS**

FREQUENCIES q_24  d_25_1  d_25_2  d_25_3 d_25_4
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.26 'q26.Este CRAS possui rede referenciada para oferta do Serviço de PSB no domicilio para pessoas com deficiencia e idosas?'
(q_26_1 q_26_2  q_26_3 q_26_0 (1))
/FREQUENCIES=$mr.26.

FREQUENCIES d_27_1  d_27_2  d_27_3 d_27_4
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.28 'q26.Este CRAS possui rede referenciada para oferta do Serviço de PSB no domicilio para pessoas com deficiencia e idosas?'
(q_28_1 q_28_2  q_28_3 q_28_4  q_28_5 q_28_6 q_28_7 q_28_8 q_28_9  q_28_99 q_28_0(1))
/FREQUENCIES=$mr.28.


FREQUENCIES q_29
  /ORDER=ANALYSIS. 

**BLOCO 6 - EQUIPE VOLANTE**

FREQUENCIES q_30 q_31  q_32
  /ORDER=ANALYSIS. 

MULT RESPONSE GROUPS=$mr.33 'q33.Quais os publicos atendidos pela equipe volante'
(q_33_1 q_33_2  q_33_3 q_33_4 q_33_5  q_33_6 q_33_7 q_33_8 q_33_9  q_33_10 q_33_11 q_33_99 (1))
/FREQUENCIES=$mr.33.



CTABLES 
  /VLABELS VARIABLES=q_34 DISPLAY=LABEL 
  /TABLE q_34 [MEAN, SUM] 
  /TITLES 
    TITLE='q_34. Nos territórios atendidos pela equipe volante, quantas famílias estão em '+ 
    'acompanhamento familiar' 'pelo PAIF (mês de referência – agosto 2018)? - Média e Soma'.


FREQUENCIES d_34
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.35 'q35.Indique os tipos de atendimento realizados pela equipe volante nas comunidades'
(q_35_1 q_35_2  q_35_3 q_35_4 q_35_5 q_35_6 q_35_7 q_35_8  q_35_9 q_35_99 q_35_0 (1))
/FREQUENCIES=$mr.35.

**BLOCO 7 - PROGRAMAS, BENEFICIOS E CADASTRO ÚNICO**

FREQUENCIES q_36
  /ORDER=ANALYSIS. 


MULT RESPONSE GROUPS=$mr.37 'q37.Quais são os Benefícios Eventuais concedidos neste CRAS?'
(q_37_1  q_37_2 q_37_3  q_37_4 (1))
/FREQUENCIES=$mr.37.

MULT RESPONSE GROUPS=$mr.38 'q38.Caso o município conceda Beneficio Eventual em situação de vulnerabilidade social, informe quais:'
(q_38_1 q_38_2 q_38_3 q_38_4  q_38_5 q_38_6 q_38_7 q_38_8 q_38_9 q_38_99 (1))
/FREQUENCIES=$mr.38.


MULT RESPONSE GROUPS=$mr.39 'q39.Com relação ao Benefício de Prestação Continuada, este CRAS faz:'
(q_39_1 q_39_2 q_39_3 q_39_4 q_39_5 q_39_6  q_39_99 q_39_0 (1))
/FREQUENCIES=$mr.39.

FREQUENCIES q_40   q_41
  /ORDER=ANALYSIS. 

**BLOCO 8 - GESTÃO E TERRITÓRIO***

CTABLES 
  /VLABELS VARIABLES=q_42_1 q_42_2 q_42_3 q_42_4 DISPLAY=LABEL 
  /TABLE q_42_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_42_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q_42_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_42_4 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q_42_1 q_42_2 q_42_3 q_42_4 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q42.Com que periodicidade são realizadas as seguintes atividades de gestão:'.

FREQUENCIES q_43  q_44
  /ORDER=ANALYSIS.   



MULT RESPONSE GROUPS=$mr.45 'q45.Quais mecanismos de participação são utilizados nesta unidade?'
(q_45_1 q_45_2 q_45_3 q_45_4  q_45_5 q_45_6 q_45_7 q_45_8 q_45_9 q_45_10 q_45_99 (1))
/FREQUENCIES=$mr.45.


MULT RESPONSE GROUPS=$mr.46 'q46.No território de abrangência deste CRAS, há presença de:'
(q_46_1 q_46_2 q_46_3 q_46_4 q_46_5 q_46_6  q_46_7 q_46_8  q_46_9 q_46_10  q_46_11 q_46_12 q_46_13 q_46_14 q_46_99 (1))
/FREQUENCIES=$mr.46.

FREQUENCIES q_47
  /ORDER=ANALYSIS.   

MULT RESPONSE GROUPS=$mr.48 'q48.Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:'
(q_48_1 q_48_2 q_48_3 q_48_4 q_48_5 q_48_6 q_48_99 (1))
/FREQUENCIES=$mr.48.

MULT RESPONSE GROUPS=$mr.49 'q49. Este CRAS, em 2018, atendeu povos e comunidades tradicionais?'
(q_49_0 q_49_1 q_49_2 q_49_3  q_49_4 q_49_5 q_49_6  q_49_99 (1))
/FREQUENCIES=$mr.49.




CTABLES
  /VLABELS VARIABLES=q_50_1 q_50_2 q_50_3 q_50_4 q_50_5 q_50_6  q_50_7 DISPLAY=LABEL
  /TABLE q_50_1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_50_2 [COUNT F40.0, COLPCT.COUNT PCT40.1] +
    q_50_3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_50_4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_50_5
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_50_6 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q_50_7 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q_50_1 q_50_2 q_50_3 q_50_4 q_50_5 q_50_6  q_50_7 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q_50. Para o atendimento a comunidade tradicionais a equipe de referência deste CRAS possui? '.

FREQUENCIES q_51  q_52 
  /ORDER=ANALYSIS.   


**BLOCO 9 - ARTICULAÇAO***


MULT RESPONSE GROUPS=$mr.53_1 'q53.1 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Unidades Públicas da Rede de Proteção Social Básica'
(q_53_1_1 q_53_1_2  q_53_1_3  q_53_1_4 q_53_1_5  q_53_1_6 q_53_1_7 q_53_1_8 q_53_1_0 q_53_1_9 (1))
/FREQUENCIES=$mr.53_1.

MULT RESPONSE GROUPS=$mr.53_2 'q53.2 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Unidades Conveniadas da Rede de Proteção Social Básica'
(q_53_2_1 q_53_2_2  q_53_2_3  q_53_2_4 q_53_2_5  q_53_2_6 q_53_2_7 q_53_2_8 q_53_2_0 q_53_2_9 (1))
/FREQUENCIES=$mr.53_2.

MULT RESPONSE GROUPS=$mr.53_3 'q53.3 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Unidades da Rede de Proteção Social Especial'
(q_53_3_1 q_53_3_2  q_53_3_3  q_53_3_4 q_53_3_5  q_53_3_6 q_53_3_7 q_53_3_8 q_53_3_0 q_53_3_9 (1))
/FREQUENCIES=$mr.53_3.

MULT RESPONSE GROUPS=$mr.53_4 'q53.4Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Saúde'
(q_53_4_1 q_53_4_2  q_53_4_3  q_53_4_4 q_53_4_5  q_53_4_6 q_53_4_7 q_53_4_8 q_53_4_0 q_53_4_9 (1))
/FREQUENCIES=$mr.53_4.

MULT RESPONSE GROUPS=$mr.53_5 'q53.5  Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Educação'
(q_53_5_1 q_53_5_2  q_53_5_3  q_53_5_4 q_53_5_5  q_53_5_6 q_53_5_7 q_53_5_8 q_53_5_0 q_53_5_9 (1))
/FREQUENCIES=$mr.53_5.


MULT RESPONSE GROUPS=$mr.53_6 'q53.6  Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Órgãos/Serviços relacionados a Trabalho e Emprego'
(q_53_6_1 q_53_6_2  q_53_6_3  q_53_6_4 q_53_6_5  q_53_6_6 q_53_6_7 q_53_6_8 q_53_6_0 q_53_6_9 (1))
/FREQUENCIES=$mr.53_6.


MULT RESPONSE GROUPS=$mr.53_7 'q53.7  Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Movimentos Sociais locais/ Associações Comunitárias'
(q_53_7_1 q_53_7_2  q_53_7_3  q_53_7_4 q_53_7_5  q_53_7_6 q_53_7_7 q_53_7_8 q_53_7_0 q_53_7_9 (1))
/FREQUENCIES=$mr.53_7.

MULT RESPONSE GROUPS=$mr.53_8 'q53.8 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Conselho Tutelar'
(q_53_8_1 q_53_8_2  q_53_8_3  q_53_8_4 q_53_8_5  q_53_8_6 q_53_8_7 q_53_8_8 q_53_8_0 q_53_8_9 (1))
/FREQUENCIES=$mr.53_8.


MULT RESPONSE GROUPS=$mr.53_9 'q53.9  Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Judiciário'
(q_53_9_1 q_53_9_2  q_53_9_3  q_53_9_4 q_53_9_5  q_53_9_6 q_53_9_7 q_53_9_8 q_53_9_0 q_53_9_9 (1))
/FREQUENCIES=$mr.53_9.




**BLOCO 10 - GESTÃO DE PESSOAS**


MULT RESPONSE GROUPS=$mr.54 'q54.A Unidade proporcionou ou facilitou a participação de seus profissionais em capacitação sobre os seguinte(s) tema(s)?'
(q_54_1 q_54_2  q_54_3 q_54_4 q_54_5 q_54_6 q_54_7 q_54_8 q_54_9 q_54_10 q_54_11 q_54_12 q_54_13 q_54_14  q_54_99 q_54_0 (1))
/FREQUENCIES=$mr.54.

FREQUENCIES q_55  q_56 
  /ORDER=ANALYSIS.   

