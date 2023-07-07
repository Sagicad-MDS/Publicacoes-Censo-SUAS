* Encoding: UTF-8.

**CENSO SUAS 2017 - CRAS**


FREQUENCIES VARIABLES=Região Porte_pop2010 UF_s
  /ORDER=ANALYSIS.

***BLOCO 1 - IDENTIFICAÇÃO DO CRAS**

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q3.1
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=d3.horas.por.semana.categoria
  /ORDER=ANALYSIS.


**BLOCO 2 - ESTRUTURA FÍSICA DO CRAS**

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q5
  /FORMAT=DVALUE
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.6 'Tipo de unidade com a qual o CRAS compartilha seu imóvel'
(q6.1 q6.2 q6.3 q6.4 q6.5 q6.6 q6.7 q6.8 q6.9 q6.10 q6.11 q6.12 q6.99 (1))
/FREQUENCIES=$mr.6.

MULT RESPONSE GROUPS=$mr.7 'Espaços do imóvel que são compartilhados entre o CRAS e a outra unidade'
(q7.1 q7.2 q7.3 q7.4 q7.5 q7.6 q7.7 q7.8 q7.9 q7.10 q7.11 q7.12 (1))
/FREQUENCIES=$mr.7.

FREQUENCIES VARIABLES=d8.sl.atend.categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d8.total.salas.adm.e.atend.categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d8.6.banheiros
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q8.7 q8.8 q8.9 q8.10 DISPLAY=LABEL
  /TABLE q8.7 [COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8.8 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + 
 q8.9 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1] + q8.10 [C][COUNT F40.0, ROWPCT.COUNT PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q8.7 q8.8 q8.9 q8.10 [1, 0, OTHERNM] EMPTY=INCLUDE
/TITLES
 TITLE= 'q8.Demais espaços físicos disponíveis no CRAS'.


CTABLES
  /VLABELS VARIABLES=q9.1 q9.2 q9.3 q9.4 DISPLAY=LABEL
  /TABLE q9.1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9.2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q9.3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q9.4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q9.1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9.2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9.3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q9.4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q9.Condições de acessibilidade para pessoas com deficiência e pessoas idosas'.


CTABLES 
  /VLABELS VARIABLES=q10.1 q10.2 q10.3 q10.4 q10.5 q10.6 q10.7 
    DISPLAY=LABEL 
  /TABLE q10.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q10.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q10.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q10.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q10.5 
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q10.6 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q10.7 [COUNT 
    F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q10.1 q10.2 q10.3 q10.4 q10.5 q10.6 q10.7 ORDER=A KEY=VALUE EMPTY=INCLUDE.


MULT RESPONSE GROUPS=$mr.10 'q11.Equipamentos e materiais disponíveis para o desenvolvimento dos serviços no CRAS'
(d11.telefone q11.1 q11.2 q11.3 q11.4 q11.5 q11.6 q11.7 q11.8 q11.9 
q11.10 q11.11 d11.veiculo q11.12 q11.13 q11.14 q11.15 (1))
/FREQUENCIES=$mr.10.


FREQUENCIES VARIABLES=d12.1
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=d12.2
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q13
  /ORDER=ANALYSIS.


**BLOCO 3 - SERVIÇO DE PROTEÇÃO E ATENDIMENTO INTEGRAL À FAMÍLIA***


MULT RESPONSE GROUPS=$mr.13 'q14.Ações e atividades desenvolvidas no âmbito do PAIF'
(q14.1 q14.2 q14.3 q14.4 q14.5 q14.6 q14.7 q14.8 q14.9 q14.10 q14.11 q14.12 q14.13 q14.14
q14.15 q14.16 (1))
/FREQUENCIES=$mr.13.

CTABLES 
  /VLABELS VARIABLES=q15.1 q15.2 DISPLAY=LABEL 
  /TABLE q15.1 [S][MEAN, SUM] + q15.2 [S][MEAN, SUM] 
  /TITLES 
    TITLE='q15.Famílias em acompanhamento pelo PAIF - Média por CRAS e Soma'.


FREQUENCIES q16.

CTABLES 
  /VLABELS VARIABLES=q17.1 q17.2 q17.3 q17.4 q17.5 q17.6 DISPLAY=LABEL 
  /TABLE q17.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q17.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q17.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q17.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q17.5 
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q17.6 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q17.1 q17.2 q17.3 q17.4 q17.5 q17.6 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q17. Esta unidade oferta diretamente o Serviço de Convivência e Fortalecimento de '+ 
    'Vínculos para os seguintes' 'públicos?'.


MULT RESPONSE GROUPS=$mr.14 'q18.Este CRAS possui rede referenciada para oferta do Serviço de Convivência e Fortalecimento de Vínculos?'
(q18.1 q18.2 q18.3 q18.0 (1))
/FREQUENCIES=$mr.14.

CTABLES
  /VLABELS VARIABLES=q19.1 q19.2 q19.3 q19.4 q19.5 q19.6 DISPLAY=LABEL
  /TABLE q19.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q19.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] +
    q19.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q19.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q19.5
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q19.6 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q19.1 q19.2 q19.3 q19.4 q19.5 q19.6 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='q19. A rede referenciada a este CRAS oferta Serviço de Convivência e Fortalecimento '+
    'de Vínculos para os' 'seguintes públicos? '.


FREQUENCIES q20 q21. 


MULT RESPONSE GROUPS=$mr.15 'q22.Qual(is) dessas estratégias o técnico de referência utiliza para acompanhar o SCFV ofertado pela rede referenciada?'
(q22.1 q22.2 q22.3 q22.4 q22.5 q22.6 q22.7 q22.8 q22.9 q22.0 (1))
/FREQUENCIES=$mr.15.

FREQUENCIES q23.

MULT RESPONSE GROUPS=$mr.16 'q24.Quais atividades são realizadas com familiares/responsáveis dos participantes dos grupos do SCFV?'
(q24.1 q24.2 q24.3 q24.4 (1))
/FREQUENCIES=$mr.16.

**BLOCO 5 - EQUIPE VOLANTE**

FREQUENCIES q25 q26 q27.

CTABLES 
  /VLABELS VARIABLES=q28 DISPLAY=LABEL 
  /TABLE q28 [MEAN, SUM] 
  /TITLES 
    TITLE='q.28. Nos territórios atendidos pela equipe volante, quantas famílias estão em '+ 
    'acompanhamento familiar' 'pelo PAIF (mês de referência – agosto 2017)? - Média e Soma'.


MULT RESPONSE GROUPS=$mr.17 'q29.Indique os tipos de atendimento realizados pela equipe volante nas comunidades'
(q29.1 q29.2 q29.3 q29.4 q29.5 q29.6 q29.0 q29.99 (1))
/FREQUENCIES=$mr.17.

**BLOCO 6 - PROGRAMAS, BENEFICIOS E CADASTRO ÚNICO**

FREQUENCIES q30. 


MULT RESPONSE GROUPS=$mr.18 'q31.Quais são os Benefícios Eventuais concedidos neste CRAS?'
(q31.1 q31.2 q31.3 q31.4 (1))
/FREQUENCIES=$mr.18.

MULT RESPONSE GROUPS=$mr.19 'q32.Caso o município conceda Beneficio Eventual em situação de calamidade, informe quais:'
(q32.1 q32.2 q32.3 q32.4 q32.5 q32.6 q32.99 (1))
/FREQUENCIES=$mr.19.


MULT RESPONSE GROUPS=$mr.20 'q33.Caso o município conceda Benefício Eventual em situação de vulnerabilidade social, informe quais:'
(q33.1 q33.2 q33.3 q33.4 q33.5 q33.6 q33.7 q33.8 q33.99 (1))
/FREQUENCIES=$mr.20.


MULT RESPONSE GROUPS=$mr.21 'q34.Com relação ao Benefício de Prestação Continuada, este CRAS faz:'
(q34.1 q34.2 q34.3 q34.4 q34.5 q34.0 q34.99 (1))
/FREQUENCIES=$mr.21.

FREQUENCIES q35 q36. 

**BLOCO 7 - GESTÃO E TERRITÓRIO***

CTABLES 
  /VLABELS VARIABLES=q37.1 q37.2 q37.3 q37.4 DISPLAY=LABEL 
  /TABLE q37.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q37.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q37.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q37.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q37.1 q37.2 q37.3 q37.4 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='q37.Com que periodicidade são realizadas as seguintes atividades de gestão:'.

FREQUENCIES q38 q39.

MULT RESPONSE GROUPS=$mr.22 'q40.Quais mecanismos de participação são utilizados nesta unidade?'
(q40.1 q40.2 q40.3 q40.4 q40.5 q40.6 q40.7 q40.8 q40.9 q40.99 (1))
/FREQUENCIES=$mr.22.


MULT RESPONSE GROUPS=$mr.23 'q41.No território de abrangência deste CRAS, há presença de:'
(q41.1 q41.2 q41.3 q41.4 q41.5 q41.6 q41.7 q41.8 q41.9 q41.10 q41.99 (1))
/FREQUENCIES=$mr.23.

FREQUENCIES q42. 

MULT RESPONSE GROUPS=$mr.24 'q43.Caso sim, indique quais os povos e comunidades tradicionais existentes no território de abrangência:'
(q43.1 q43.2 q43.3 q43.4 q43.5 q43.99 (1))
/FREQUENCIES=$mr.24.

MULT RESPONSE GROUPS=$mr.25 'q44. Este CRAS atendeu povos e comunidades tradicionais?'
(q44.0 q44.1 q44.2 q44.3 q44.4 q44.5 q44.99 (1))
/FREQUENCIES=$mr.25.

MULT RESPONSE GROUPS=$mr.26 'q45.Como foi realizado o atendimento a esses povos?'
(q45.1 q45.2 q45.3 q45.4 q45.99 (1))
/FREQUENCIES=$mr.26.

FREQUENCIES q46 q47. 

MULT RESPONSE GROUPS=$mr.27 'q48.1 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Unidades Públicas da Rede de Proteção Social Básica'
(q48.1.1 q48.1.2 q48.1.3 q48.1.4 q48.1.5 q48.1.6 q48.1.7 q48.1.8 q48.1.0 q48.1.9 (1))
/FREQUENCIES=$mr.27.

MULT RESPONSE GROUPS=$mr.28 'q48.2 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Unidades Conveniadas da Rede de Proteção Social Básica'
(q48.2.1 q48.2.2 q48.2.3 q48.2.4 q48.2.5 q48.2.6 q48.2.7 q48.2.8 q48.2.0 q48.2.9 (1))
/FREQUENCIES=$mr.28.

MULT RESPONSE GROUPS=$mr.29 'q48.3 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Unidades da Rede de Proteção Social Especial'
(q48.3.1 q48.3.2 q48.3.3 q48.3.4 q48.3.5 q48.3.6 q48.3.7 q48.3.8 q48.3.0 q48.3.9 (1))
/FREQUENCIES=$mr.29.

MULT RESPONSE GROUPS=$mr.30 'q48.4 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Saúde'
(q48.4.1 q48.4.2 q48.4.3 q48.4.4 q48.4.5 q48.4.6 q48.4.7 q48.4.8 q48.4.0 q48.4.9 (1))
/FREQUENCIES=$mr.30.

MULT RESPONSE GROUPS=$mr.31 'q48.5 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Serviços de Educação'
(q48.5.1 q48.5.2 q48.5.3 q48.5.4 q48.5.5 q48.5.6 q48.5.7 q48.5.8 q48.5.0 q48.5.9 (1))
/FREQUENCIES=$mr.31.

MULT RESPONSE GROUPS=$mr.32 'q48.6 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Órgãos/Serviços relacionados a Trabalho e Emprego'
(q48.6.1 q48.6.2 q48.6.3 q48.6.4 q48.6.5 q48.6.6 q48.6.7 q48.6.8 q48.6.0 q48.6.9 (1))
/FREQUENCIES=$mr.32.

MULT RESPONSE GROUPS=$mr.33 'q48.7 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Movimentos Sociais locais/ Associações Comunitárias'
(q48.7.1 q48.7.2 q48.7.3 q48.7.4 q48.7.5 q48.7.6 q48.7.7 q48.7.8 q48.7.0 q48.7.9 (1))
/FREQUENCIES=$mr.33.

MULT RESPONSE GROUPS=$mr.34 'q48.8 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Conselho Tutelar'
(q48.8.1 q48.8.2 q48.8.3 q48.8.4 q48.8.5 q48.8.6 q48.8.7 q48.8.8 q48.8.0 q48.8.9 (1))
/FREQUENCIES=$mr.34.

MULT RESPONSE GROUPS=$mr.35 'q48.9 Indique as ações de articulação deste CRAS com os seguintes serviços, programas ou instituições existentes no município - Judiciário'
(q48.9.1 q48.9.2 q48.9.3 q48.9.4 q48.9.5 q48.9.6 q48.9.7 q48.9.8 q48.9.0 q48.9.9 (1))
/FREQUENCIES=$mr.35.

**BLOCO 9 - GESTÃO DE PESSOAS**


MULT RESPONSE GROUPS=$mr.36 'q49.Nesta Unidade há profissionais que já participaram de capacitação sobre os seguinte(s) tema(s)?'
(q49.1 q49.2 q49.3 q49.4 q49.5 q49.6 q49.7 q49.8 q49.9 q49.10 q49.11 q49.12 q49.0 q49.99 (1))
/FREQUENCIES=$mr.36.

FREQUENCIES q50 q51. 

**-->> RH em Tabelas RH **

