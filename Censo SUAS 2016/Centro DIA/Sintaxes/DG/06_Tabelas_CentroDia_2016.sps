* Encoding: windows-1252.

*Região, Porte e UF

FREQUENCIES VARIABLES=Região Porte_pop2010 UF_s
  /ORDER=ANALYSIS.



*q1.Dados provenientes da gestão estadual ou municipal

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.



* q2 --- Público Atendido

MULT RESPONSE GROUPS=$mr_2 'Público_Atendido'
(q2.1 q2.2 q2.3 q2.4 (1))
/FREQUENCIES=$mr_2.



*q18.Onde o Serviço executado?

FREQUENCIES VARIABLES=q18
  /ORDER=ANALYSIS.


*** Horas de funcionamento por semana da Unidade ***

FREQUENCIES VARIABLES=d3_horas_por_semana_categoria
  /ORDER=ANALYSIS.


*q30.Considerando as atividades realizadas por esta Unidade no atendimento as pessoas com deficiência e/ou idosas com dependência, você diria que o Serviço prestado pela Unidade:

FREQUENCIES VARIABLES=q30
  /ORDER=ANALYSIS.


*q4.Indique a Natureza desta Unidade: Governamental ou Sociedade Civil Organizada

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.


*q6.Esta Unidade faz parte de alguma rede/federação nacional ou estadual de entidades de defesa e apoio as pessoas com deficiência e suas famílias?

FREQUENCIES VARIABLES=q6
  /ORDER=ANALYSIS.


*q7.Caso sim, informe qual

FREQUENCIES VARIABLES=q7
  /ORDER=ANALYSIS.


*q8.A entidade recebe recursos financeiros do poder público visando a manutenção do Serviço?

FREQUENCIES VARIABLES=q8
  /ORDER=ANALYSIS.


*q9 -- Outras formas de apoio do poder público

MULT RESPONSE GROUPS=$mr_11 'Formas de apoio do poder público'
(q9.1 q9.2 q9.3 q9.4 q9.5 q9.6 q9.7 q9.8 q9.9 q9.10 q9.11 q9.99 (1))
/FREQUENCIES=$mr_11.


*10 -- A Unidade possui inscrição em algum Conselho

MULT RESPONSE GROUPS=$mr_10 'Inscrição em Conselhos'
(q10.1 q10.2 q10.3 q10.4 q10.5 (1))
/FREQUENCIES=$mr_10.


*q11.Esta unidade está referenciada a um Centro de Referência Especializado de Assistência Social (CREAS)?

FREQUENCIES VARIABLES=q11
  /ORDER=ANALYSIS.


*q12.Situação do imóvel onde se localiza a Unidade/Serviço:

FREQUENCIES VARIABLES=q12
  /ORDER=ANALYSIS.


*d13_Total de salas utilizadas para atendimento e para atividades administrativas

FREQUENCIES VARIABLES=d13_total_salas_adm_e_atend
  /ORDER=ANALYSIS.


*d13_categórica_Total de salas utilizadas para atendimento e para atividades administrativas

FREQUENCIES VARIABLES=d13_total_salas_adm_e_atend_categoria
  /ORDER=ANALYSIS.


*q13 --- Descreva espaço Físico da unidade_salas

MULT RESPONSE GROUPS=$mr_13 'Descreva espaço Físico da unidade_salas'
(q13.1 q13.2 q13.3 q13.4 (1))
/FREQUENCIES=$mr_13.


*d13_categórica_total de banheiros

FREQUENCIES VARIABLES=d13_total_banheiros_categoria
  /ORDER=ANALYSIS.


*q13 -- Descreva espaço Físico da unidade_banheiros

MULT RESPONSE GROUPS=$mr_13 'Descreva espaço Físico da unidade_banheiros'
(q13.7 q13.8 (1))
/FREQUENCIES=$mr_13.


*d13_categórica_total de dormitórios

FREQUENCIES VARIABLES=d13_total_dormitórios_categoria
  /ORDER=ANALYSIS.


*d13.7_quartil banheiros trabalhadores

FREQUENCIES VARIABLES=d13.7_quartil
  /ORDER=ANALYSIS.


*d13.8_quartil banheiros usuários

FREQUENCIES VARIABLES=d13.8_quartil
  /ORDER=ANALYSIS.


*q13.9.Recepção

FREQUENCIES VARIABLES=q13.9
  /ORDER=ANALYSIS.


*q13.10.Cozinha/Copa

FREQUENCIES VARIABLES=q13.10
  /ORDER=ANALYSIS.


*q13.11.Refeitório

FREQUENCIES VARIABLES=q13.11
  /ORDER=ANALYSIS.


*q13.12.Almoxarifado ou similar

FREQUENCIES VARIABLES=q13.12
  /ORDER=ANALYSIS.


*q13.13.Piscina

FREQUENCIES VARIABLES=q13.13
  /ORDER=ANALYSIS.


*q13.14.Quadra esportiva

FREQUENCIES VARIABLES=q13.14
  /ORDER=ANALYSIS.


*q13.15.Espaço externo para atividades de convívio ou recreação (exceto quadra e piscina)

FREQUENCIES VARIABLES=q13.15
  /ORDER=ANALYSIS.


*q14.1.Acesso principal adaptado com rampas e rota acessível desde a calçada até a recepção no interior da unidade

FREQUENCIES VARIABLES=q14.1
  /ORDER=ANALYSIS.


*q14.2.Rota acessível aos espaços da Unidade (recepção, salas de atendimento e espaços de uso coletivo)

FREQUENCIES VARIABLES=q14.2
  /ORDER=ANALYSIS.



*q14.3.Rota acessível ao banheiro

FREQUENCIES VARIABLES=q14.3
  /ORDER=ANALYSIS.



*q14.4.Banheiro adaptado para pessoas com deficiência e/ou mobilidade reduzida

FREQUENCIES VARIABLES=q14.4
  /ORDER=ANALYSIS.



*q15 -- Adaptações para acessibilidade

MULT RESPONSE GROUPS=$mr_15 'Outras adaptações para acessibilidade'
(q15.1 q15.2 q15.3 q15.4 q15.5 q15.6 q15.7 (1))
/FREQUENCIES=$mr_15.



*q16 --- Equipamentos e materiais disponíveis

MULT RESPONSE GROUPS=$mr_16 'Equipamentos e materiais disponíveis'
(q16.1 q16.2 q16.3 q16.4 q16.5 q16.6 q16.7 q16.8 q16.9 q16.10 q16.11 q16.12 q16.13 q16.14 q16.15 q16.16 q16.17 q16.18 q16.19 q16.20 q16.21 q16.22 q16.23 q16.24 q16.25 q16.26 (1))
/FREQUENCIES=$mr_16.



*d16_telefone_Telefone (exclusivo ou compartilhado)

FREQUENCIES VARIABLES=d16_telefone
  /ORDER=ANALYSIS.



*d16_veiculo_Veículo (exclusivo ou compartilhado)

FREQUENCIES VARIABLES=d16_veiculo
  /ORDER=ANALYSIS.



*q17.Esta Unidade oferta exclusivamente serviços voltados para pessoas com deficiência e/ou pessoas idosas com dependência (e suas famílias)?

FREQUENCIES VARIABLES=q17
  /ORDER=ANALYSIS.



*d19_Capacidade de atendimento por faixas

FREQUENCIES VARIABLES=d19_cap_atend_faixas
  /ORDER=ANALYSIS.



*q20.Em média, quantos dias por semana, os usuários da unidade frequenta este serviço?

FREQUENCIES VARIABLES=q20
  /ORDER=ANALYSIS.


*q21.Em média, quantas horas por dia os usuários da unidade permanecem na Unidade (nos dias em que este utiliza o serviço)?

FREQUENCIES VARIABLES=q21
  /ORDER=ANALYSIS.


*q22 --.Ações e atividades desenvolvidas

MULT RESPONSE GROUPS=$mr_22 'Ações desenvolvidas'
(q22.1 q22.2 q22.3 q22.4 q22.5 q22.6 q22.7 q22.8 q22.9 q22.10 q22.11 q22.12 q22.13 q22.14 q22.15 q22.16 q22.17 q22.18 q22.19 q22.20 q22.21 q22.22 q22.23 q22.24 (1))
/FREQUENCIES=$mr_22.


*Demais atividades desenvolvidas

MULT RESPONSE GROUPS=$mr_23 'Demais atividades'
(q23.1 q23.2 q23.3 q23.4 q23.5 q23.6 q23.7 q23.8 q23.9 q23.10 q23.11 q23.12 q23.13 q23.14 (1))
/FREQUENCIES=$mr_23.



*q24 -- Oferece alimentação aos usuários

MULT RESPONSE GROUPS=$mr_24 'Oferece alimentação aos usuários'
(q24.1 q24.2 q24.3 q24.4 q24.5 q24.6 (1))
/FREQUENCIES=$mr_24.



*q25 - Pessoas com dependência atendidas.

CTABLES
  /VLABELS VARIABLES=q25.1 q25.2 q25.3 q25.4 q25.5 q25.6 q25.7 
    DISPLAY=LABEL
  /TABLE q25.1 [S][MEAN, SUM] + q25.2 [S][MEAN, SUM] + q25.3 [S][MEAN, SUM] + q25.4 [S][MEAN, SUM] 
    + q25.5 [S][MEAN, SUM] + q25.6 [S][MEAN, SUM] + q25.7 [S][MEAN, SUM].



*q26  Pessoas com dependência atendidas - IDOSOS E PESSOAS COM DEFICIENCIA BENEFICIÁRIOS DO BPC

CTABLES
  /VLABELS VARIABLES=q26.2 q26.1 DISPLAY=LABEL
  /TABLE q26.2 [S][SUM, MEAN] + q26.1 [S][SUM, MEAN].


*q26 - Não sabe

CTABLES
  /VLABELS VARIABLES=q26.1.ns q26.2.ns DISPLAY=LABEL
  /TABLE q26.1.ns [C][COUNT F40.0] + q26.2.ns [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q26.1.ns [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q26.2.ns [1] EMPTY=INCLUDE.



*q27.A unidade utiliza instrumento específico de avaliação do grau de dependência dos usuários?

FREQUENCIES VARIABLES=q27
  /ORDER=ANALYSIS.






******************************* RECURSOS HUMANOS ********************************

**********************************************************************************************
**********************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO RH ***************
**********************************************************************************************
**********************************************************************************************

FREQUENCIES VARIABLES=d28.2_categoria
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28.3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28.9
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=d28.9bin1 d28.9bin2 d28.9bin3
  /STATISTICS=SUM.

FREQUENCIES VARIABLES=d28.10bin1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d28.10bin2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d28.10bin3
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d28.10bin4
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=d28.10bin5
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q28.9
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q28.11
  /ORDER=ANALYSIS.

**************************************************************************************************************
**************************************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO DADOS GERAIS ***************
**************************************************************************************************************
**************************************************************************************************************


* Quantidade de trabalhadores por escolaridade e porte do município

CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d28.9bin1_sum d28.9bin2_sum d28.9bin3_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d28.9bin1_sum [SUM] + d28.9bin2_sum [SUM] + d28.9bin3_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e porte do município'.


* Quantidade de trabalhadores por escolaridade e região

CTABLES
  /VLABELS VARIABLES=Região d28.9bin1_sum d28.9bin2_sum d28.9bin3_sum DISPLAY=LABEL
  /TABLE Região [C] BY d28.9bin1_sum [SUM][COLPCT.SUM] + d28.9bin2_sum [SUM][COLPCT.SUM] + d28.9bin3_sum [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e região'.


* Quantidade de trabalhadores por escolaridade e UF.

CTABLES
  /VLABELS VARIABLES=uf_s d28.9bin1_sum d28.9bin2_sum d28.9bin3_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d28.9bin1_sum [S][SUM] + d28.9bin2_sum [S][SUM] + d28.9bin3_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e UF'.


* Quantidade de trabalhadores por tipo de vínculo e porte do município

CTABLES
  /VLABELS VARIABLES=Porte_pop2010 d28.11bin1_sum d28.11bin2_sum d28.11bin3_sum d28.11bin4_sum DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY d28.11bin1_sum [SUM] + d28.11bin2_sum [SUM] + d28.11bin3_sum [SUM] + 
    d28.11bin4_sum [SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e porte do município'.


* Quantidade de trabalhadores por tipo de vínculo e região

CTABLES
  /VLABELS VARIABLES=Região d28.11bin1_sum d28.11bin2_sum d28.11bin3_sum d28.11bin4_sum DISPLAY=LABEL
  /TABLE Região [C] BY d28.11bin1_sum [SUM] + d28.11bin2_sum [SUM] + d28.11bin3_sum [SUM] + 
    d28.11bin4_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e região'.


* Quantidade de trabalhadores por tipo de vínculo e UF

CTABLES
  /VLABELS VARIABLES=uf_s d28.11bin1_sum d28.11bin2_sum d28.11bin3_sum d28.11bin4_sum 
    DISPLAY=LABEL
  /TABLE uf_s [C] BY d28.11bin1_sum [S][SUM] + d28.11bin2_sum [S][SUM] + d28.11bin3_sum 
    [S][SUM] + d28.11bin4_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e UF'.


* Quantidade de trabalhadores por profissão e região

CTABLES
  /VLABELS VARIABLES=Região d28.10bin1_sum d28.10bin2_sum d28.10bin3_sum d28.10bin4_sum d28.10bin5_sum 
    DISPLAY=LABEL
  /TABLE Região [C] BY d28.10bin1_sum [SUM] + d28.10bin2_sum [SUM] + d28.10bin3_sum [SUM] + 
    d28.10bin4_sum [SUM] + d28.10bin5_sum [SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e região'.


* Quantidade de trabalhadores por profissão e UF

CTABLES
  /VLABELS VARIABLES=uf_s d28.10bin1_sum d28.10bin2_sum d28.10bin3_sum d28.10bin4_sum 
    d28.10bin5_sum DISPLAY=LABEL
  /TABLE uf_s [C] BY d28.10bin1_sum [S][SUM] + d28.10bin2_sum [S][SUM] + d28.10bin3_sum 
    [S][SUM] + d28.10bin4_sum [S][SUM] + d28.10bin5_sum [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e UF'.



*Exportar tabelas

OUTPUT EXPORT
  /CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING
  /XLSX  DOCUMENTFILE='\\MDS044007\Nucleo_Monitoramento\Censo SUAS\2016_Censo_SUAS\_Bases Censo '+
    'SUAS 2016 - Tratamento\Centro DIA\Tabelas Centro Dia.xlsx'
     OPERATION=CREATEFILE
     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES.
