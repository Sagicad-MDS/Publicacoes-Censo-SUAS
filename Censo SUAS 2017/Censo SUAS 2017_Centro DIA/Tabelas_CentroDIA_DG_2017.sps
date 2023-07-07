* Encoding: windows-1252.




**************************************************************************************************************
**************************************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO DADOS GERAIS ***************
**************************************************************************************************************
**************************************************************************************************************


*Região, Porte e UF

FREQUENCIES VARIABLES=Região Porte_pop2010 UF_s
  /ORDER=ANALYSIS.



* q1 - Dados provenientes da gestão estadual ou municipal

FREQUENCIES VARIABLES=q1
  /ORDER=ANALYSIS.



* q2 - Público Atendido

MULT RESPONSE GROUPS=q2_Público_Atendido 'q2 - Público Atendido'
(q2_1 q2_2 q2_3 q2_4 (1))
/FREQUENCIES=q2_Público_Atendido.


*** D3 - Horas de funcionamento por semana da Unidade ***

FREQUENCIES VARIABLES=d3_horas_semana_cat
  /ORDER=ANALYSIS.



*q4 - Indique a Natureza desta Unidade: Governamental ou Sociedade Civil Organizada

FREQUENCIES VARIABLES=q4
  /ORDER=ANALYSIS.


*q6 - Esta Unidade faz parte de alguma rede/federação nacional ou estadual de entidades de defesa e apoio as pessoas com deficiência e suas famílias?

FREQUENCIES VARIABLES=q6
  /ORDER=ANALYSIS.


*q7 - Caso sim, informe qual

FREQUENCIES VARIABLES=q7
  /ORDER=ANALYSIS.


*q8 - A entidade recebe recursos financeiros do poder público visando a manutenção do Serviço?

FREQUENCIES VARIABLES=q8
  /ORDER=ANALYSIS.


*q9 - Outras formas de apoio do poder público

MULT RESPONSE GROUPS=q9_Formas_de_apoio_do_Poder_Público 'q9 - Formas de apoio do poder público'
(q9_0
q9_1
q9_2
q9_3
q9_4
q9_5
q9_6
q9_7
q9_8
q9_9
q9_10
q9_outros (1))
/FREQUENCIES=q9_Formas_de_apoio_do_Poder_Público.


*10 - A Unidade possui inscrição em algum Conselho

MULT RESPONSE GROUPS=q10_Inscrição_em_Conselhos 'q10 - Inscrição em Conselhos'
(q10_1
q10_2
q10_3
q10_4
q10_outros
q10_0 (1))
/FREQUENCIES=q10_Inscrição_em_Conselhos.


*q11 - Esta unidade está referenciada a um Centro de Referência Especializado de Assistência Social (CREAS)?

FREQUENCIES VARIABLES=q11
  /ORDER=ANALYSIS.


*q12 - Atividades de Referenciamento

MULT RESPONSE GROUPS=q12_Atividades_de_Referenciamento 'q12 - Atividades de Referenciamento'
(
q12_1
q12_2
q12_3
q12_4
q12_5
q12_6
q12_7
q12_8
q12_9
q12_10
q12_11
q12_12
q12_0
 (1))
/FREQUENCIES=q12_Atividades_de_Referenciamento.

*q13 - Situação do imóvel onde se localiza a Unidade/Serviço:

FREQUENCIES VARIABLES=q13
  /ORDER=ANALYSIS.


*q14 - Salas

FREQUENCIES VARIABLES=
d14_salas_atend_cat
d14_total_salas_adm_e_atend_cat
d14_total_banheiros_cat
d14_6_cat
d14_7_cat
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=
q14_8
q14_9
q14_10
q14_11
q14_12
q14_13
q14_14
q14_15
  /ORDER=ANALYSIS.


*q15 - Acessibilidade

FREQUENCIES VARIABLES=
q15_1
q15_2
q15_3
q15_4
  /ORDER=ANALYSIS.



*q16 - Adaptações para acessibilidade

MULT RESPONSE GROUPS=q16_Adaptações_Acessibilidade 'q16 - Outras adaptações para acessibilidade'
(
q16_1
q16_2
q16_3
q16_4
q16_5
q16_6
q16_0
(1))
/FREQUENCIES=q16_Adaptações_Acessibilidade.



*q17 - Equipamentos e materiais disponíveis

MULT RESPONSE GROUPS=q17_Equipamentos_e_Materiais_Disponiveis
'q17 - Equipamentos e materiais disponíveis'
(
d17_telefone
q17_1
q17_2
q17_3
q17_4
q17_5
q17_6
q17_7
d17_veiculo
q17_8
q17_9
q17_10
q17_11
q17_12
q17_13
q17_14
q17_15
q17_16
q17_17
q17_18
q17_19
q17_20
q17_21
q17_22
q17_23
q17_24
q17_25
(1))
/FREQUENCIES=q17_Equipamentos_e_Materiais_Disponiveis.


FREQUENCIES VARIABLES=d17_telefone d17_veiculo
  /ORDER=ANALYSIS.


*q18 - Ações e atividades

MULT RESPONSE GROUPS=q18_Ações_e_Atividades 'q18 - Ações e atividades'
(
q18_1
q18_2
q18_3
q18_4
q18_5
q18_6
q18_7
q18_8
q18_9
q18_10
q18_11
q18_12
q18_13
q18_14
q18_15
q18_16
q18_17
q18_18
q18_19
q18_20
q18_21
q18_22
q18_23
q18_24
(1))
/FREQUENCIES=q18_Ações_e_Atividades.


*q19 - Demais atividades

MULT RESPONSE GROUPS=q19_Demais_Ações_e_Atividades 'q19 - Demais Ações e atividades'
(
q19_1
q19_2
q19_3
q19_4
q19_5
q19_6
q19_7
q19_8
q19_9
q19_10
q19_11
q19_12
q19_13
q19_14
q19_15
q19_outros
q19_0
(1))
/FREQUENCIES=q19_Demais_Ações_e_Atividades.


*q20 - A unidade possui Plano Individual e/ou Familiar de Atendimento para cada usuário?

FREQUENCIES VARIABLES=q20
  /ORDER=ANALYSIS.

*q21 - Composição do PIA

MULT RESPONSE GROUPS=q21_Composição_do_PIA 'q21 - Composição do PIA'
(
q21_1
q21_2
q21_3
q21_4
q21_5
q21_6
q21_7
q21_8
q21_9
q21_10
q21_11
(1))
/FREQUENCIES=q21_Composição_do_PIA.


*q22 - 

MULT RESPONSE GROUPS=q22_Construção_do_PIA 'q22 - Construção do PIA'
(
q22_1
q22_2
q22_3
q22_4
q22_5
q22_outros
(1))
/FREQUENCIES=q22_Construção_do_PIA.


*d23 - Capacidade de atendimento por faixas

FREQUENCIES VARIABLES=d23_cap_atend_cat
  /ORDER=ANALYSIS.



*q24 - Em média, quantos dias por semana, os usuários da unidade frequenta este serviço?

FREQUENCIES VARIABLES=q24
  /ORDER=ANALYSIS.


*q25 - Em média, quantas horas por dia os usuários da unidade permanecem na Unidade (nos dias em que este utiliza o serviço)?

FREQUENCIES VARIABLES=q25
  /ORDER=ANALYSIS.



*q26 - Pessoas com dependência atendidas.

CTABLES
  /VLABELS VARIABLES=
q26_1
q26_2
q26_3
q26_4
q26_5
q26_6
q26_total
    DISPLAY=LABEL
  /TABLE 
q26_1 [S][MEAN, SUM] +
q26_2 [S][MEAN, SUM] +
q26_3 [S][MEAN, SUM] +
q26_4 [S][MEAN, SUM] +
q26_5 [S][MEAN, SUM] +
q26_6 [S][MEAN, SUM] +
q26_total [S][MEAN, SUM]
  /TITLES TITLE="q26 - Pessoas com dependência atendidas".

CTABLES
  /VLABELS VARIABLES=q26_total_ns DISPLAY=LABEL
  /TABLE q26_total_ns [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q26_total_ns [1] EMPTY=INCLUDE
  /TITLES TITLE="q26_ns - Não sabe informar a quantidade de Pessoas com dependência atendidas".


*q27 - IDOSOS E PESSOAS COM DEFICIENCIA BENEFICIÁRIOS DO BPC

CTABLES
  /VLABELS VARIABLES=q27_1 q27_2 DISPLAY=LABEL
  /TABLE q27_1 [S][SUM, MEAN] + q27_2 [S][SUM, MEAN]
  /TITLES TITLE="q27 - Idosos e Pessoas com Deficiência Beneficiários do BPC".

CTABLES
  /VLABELS VARIABLES=q27_1_ns q27_2_ns DISPLAY=LABEL
  /TABLE q27_1_ns [C][COUNT F40.0] + q27_2_ns [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q27_1_ns [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=q27_2_ns [1] EMPTY=INCLUDE
  /TITLES TITLE="q27_ns - Não sabe informar a quantidade de Idosos e Pessoas com Deficiência Beneficiários do BPC".


*q28 - Quantidade de famílias beneficiárias do PBF


CTABLES
  /VLABELS VARIABLES=q28 DISPLAY=LABEL
  /TABLE q28 [S][SUM, MEAN]
  /TITLES TITLE="q28 - Quantidade de famílias beneficiárias do PBF".

CTABLES
  /VLABELS VARIABLES=q28_ns DISPLAY=LABEL
  /TABLE q28_ns [C][COUNT F40.0]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q28_ns [1] EMPTY=INCLUDE
  /TITLES TITLE="q28_ns - Não sabe informar a quantidade de famílias beneficiárias do PBF".


*q29 -- Oferece alimentação aos usuários

MULT RESPONSE GROUPS=q29_Alimentação_aos_Usuários 'q29 - Oferece alimentação aos usuários'
(
q29_1
q29_2
q29_3
q29_4
q29_5
q29_0
 (1))
/FREQUENCIES=q29_Alimentação_aos_Usuários.


*q30 - Existe apoio para o deslocamento das famílias/indivíduos para a sede dessa Unidade?
e q31 - Apoio Deslocamento - Como se dá esse apoio?

FREQUENCIES q30 q31.


*q32 - Capacitação - Temas:

MULT RESPONSE GROUPS=q32_Temas_Capacitação 'q32 - Temas de Capacitação'
(
q32_1
q32_2
q32_3
q32_4
q32_5
q32_6
q32_7
q32_8
q32_9
q32_10
q32_11
q32_12
q32_outros
 (1))
/FREQUENCIES=q32_Temas_Capacitação.



*q33 - Nesta unidade, algum profissional já participou de algum curso do CAPACITASUAS?

FREQUENCIES q33.

CTABLES
  /VLABELS VARIABLES=q33_quantos DISPLAY=LABEL
  /TABLE q33_quantos [S][SUM, MEAN]
  /TITLES TITLE="q33 - Quantos Profissionais foram capacitados no CapacitaSUAS?".


*q34 - O coordenador desta Unidade:

FREQUENCIES q34.



************************************************************************************************************
******* IR PARA A SINTAXE DE TABELAS DE RH E RODAR AS TABELAS DO RH ***********
************************************************************************************************************



**************************************************************************************************************
**************************************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO DADOS GERAIS ***************
**************************************************************************************************************
**************************************************************************************************************



* Quantidade de trabalhadores por escolaridade e porte do município

CTABLES
  /VLABELS VARIABLES=Porte_pop2010
d35_nv_fund_qtd_trab
d35_nv_med_qtd_trab
d35_nv_sup_qtd_trab
 DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY
d35_nv_fund_qtd_trab [SUM][COLPCT.SUM] + 
d35_nv_med_qtd_trab [SUM][COLPCT.SUM] + 
d35_nv_sup_qtd_trab [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Porte_pop2010
ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e porte do município'.


* Quantidade de trabalhadores por escolaridade e região

CTABLES
  /VLABELS VARIABLES=Região 
d35_nv_fund_qtd_trab
d35_nv_med_qtd_trab
d35_nv_sup_qtd_trab
DISPLAY=LABEL
  /TABLE Região [C] BY 
d35_nv_fund_qtd_trab [SUM][COLPCT.SUM] + 
d35_nv_med_qtd_trab [SUM][COLPCT.SUM] + 
d35_nv_sup_qtd_trab [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Região ORDER=A 
KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e região'.


* Quantidade de trabalhadores por escolaridade e UF.

CTABLES
  /VLABELS VARIABLES=uf_s
d35_nv_fund_qtd_trab
d35_nv_med_qtd_trab
d35_nv_sup_qtd_trab DISPLAY=LABEL
  /TABLE uf_s [C] BY
d35_nv_fund_qtd_trab [S][SUM] + 
d35_nv_med_qtd_trab [S][SUM] + 
d35_nv_sup_qtd_trab [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por escolaridade e UF'.



* Quantidade de trabalhadores por profissão e porte

CTABLES
  /VLABELS VARIABLES=Porte_pop2010 
d35_pedagogo_qtd_trab
d35_ass_social_qtd_trab
d35_antropologo_qtd_trab
d35_advogado_qtd_trab
d35_psicologo_qtd_trab
    DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY 
d35_pedagogo_qtd_trab [SUM][COLPCT.SUM] + 
d35_ass_social_qtd_trab [SUM][COLPCT.SUM] + 
d35_antropologo_qtd_trab [SUM][COLPCT.SUM] + 
d35_advogado_qtd_trab [SUM][COLPCT.SUM] + 
d35_psicologo_qtd_trab [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE
TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e porte'.


* Quantidade de trabalhadores por profissão e região

CTABLES
  /VLABELS VARIABLES=Região 
d35_pedagogo_qtd_trab
d35_ass_social_qtd_trab
d35_antropologo_qtd_trab
d35_advogado_qtd_trab
d35_psicologo_qtd_trab
    DISPLAY=LABEL
  /TABLE Região [C] BY 
d35_pedagogo_qtd_trab [SUM][COLPCT.SUM] + 
d35_ass_social_qtd_trab [SUM][COLPCT.SUM] + 
d35_antropologo_qtd_trab [SUM][COLPCT.SUM] + 
d35_advogado_qtd_trab [SUM][COLPCT.SUM] + 
d35_psicologo_qtd_trab [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE
TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e região'.


* Quantidade de trabalhadores por profissão e UF

CTABLES
  /VLABELS VARIABLES=uf_s
d35_pedagogo_qtd_trab
d35_ass_social_qtd_trab
d35_antropologo_qtd_trab
d35_advogado_qtd_trab
d35_psicologo_qtd_trab DISPLAY=LABEL
  /TABLE uf_s [C] BY
d35_pedagogo_qtd_trab [S][SUM] +
d35_ass_social_qtd_trab [S][SUM] +
d35_antropologo_qtd_trab [S][SUM] +
d35_advogado_qtd_trab [S][SUM] +
d35_psicologo_qtd_trab [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE
TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por profissão e UF'.


* Quantidade de trabalhadores por tipo de vínculo e porte do município

CTABLES
  /VLABELS VARIABLES=Porte_pop2010 
d35_estatutario_qtd_trab
d35_clt_publico_qtd_trab
d35_comissionado_qtd_trab
d35_outros_vinc_qtd_trab
DISPLAY=LABEL
  /TABLE Porte_pop2010 [C] BY
d35_estatutario_qtd_trab [SUM][COLPCT.SUM] + 
d35_clt_publico_qtd_trab [SUM][COLPCT.SUM] + 
d35_comissionado_qtd_trab [SUM][COLPCT.SUM] + 
d35_outros_vinc_qtd_trab [SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Porte_pop2010 ORDER=A KEY=VALUE EMPTY=INCLUDE
TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e porte do município'.


* Quantidade de trabalhadores por tipo de vínculo e região

CTABLES
  /VLABELS VARIABLES=Região
d35_estatutario_qtd_trab
d35_clt_publico_qtd_trab
d35_comissionado_qtd_trab
d35_outros_vinc_qtd_trab
DISPLAY=LABEL
  /TABLE Região [C] BY
d35_estatutario_qtd_trab [S][SUM][COLPCT.SUM] + 
d35_clt_publico_qtd_trab[S][SUM][COLPCT.SUM] + 
d35_comissionado_qtd_trab[S][SUM][COLPCT.SUM] + 
d35_outros_vinc_qtd_trab [S][SUM][COLPCT.SUM]
  /CATEGORIES VARIABLES=Região ORDER=A KEY=VALUE EMPTY=INCLUDE
TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e região'.


* Quantidade de trabalhadores por tipo de vínculo e UF

CTABLES
  /VLABELS VARIABLES=uf_s
d35_estatutario_qtd_trab
d35_clt_publico_qtd_trab
d35_comissionado_qtd_trab
d35_outros_vinc_qtd_trab
    DISPLAY=LABEL
  /TABLE uf_s [C] BY 
d35_estatutario_qtd_trab [S][SUM] + 
d35_clt_publico_qtd_trab [S][SUM] + 
d35_comissionado_qtd_trab [S][SUM] + 
d35_outros_vinc_qtd_trab [S][SUM]
  /CATEGORIES VARIABLES=uf_s ORDER=A KEY=VALUE EMPTY=INCLUDE
TOTAL=YES POSITION=AFTER
  /TITLES
    TITLE='Quantidade de trabalhadores por tipo de vínculo e UF'.




* Exportar saída.
OUTPUT EXPORT
  /CONTENTS  EXPORT=ALL  LAYERS=PRINTSETTING  MODELVIEWS=PRINTSETTING
  /XLSX  DOCUMENTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2017_Censo_SUAS\2017_Base de Dados\Centro '+
    'DIA\Tabelas\Tabelas_CentroDIA_2017.xlsx'
     OPERATION=CREATEFILE
     LOCATION=LASTCOLUMN  NOTESCAPTIONS=YES.
