* Encoding: UTF-8.

****************************************************************************************************
SINTAXE TABELAS GESTÃO MUNICIPAL - CENSO SUAS 2016
****************************************************************************************************

********** DADOS GERAIS.

FREQUENCIES Região Porte.pop2010 UF.

********* BLOCO 2 - ESTRUTURA ADMINISTRATIVA.
FREQUENCIES q1.

MULT RESPONSE GROUPS = $mr.2
'q2.A qual secretaria a assistência social está associada?'
(q2.1 q2.2 q2.3 q2.4 q2.5 q2.6 q2.7 q2.99 (1))
/FREQUENCIES=$mr.2.

MULT RESPONSE GROUPS = $mr.3
'q3.Subdivisões administrativas na estrutura do órgão gestor:'
(q3.1 q3.2 q3.3 q3.4 q3.5 q3.6 q3.7 q3.8 q3.9 (1))
/FREQUENCIES=$mr.3.

FREQUENCIES q4.

FREQUENCIES q5.1 q5.2 q5.3 q5.4 q5.5 q5.6 q5.7 q5.99.


******BLOCO 3 - GESTÃO DO SUAS******

FREQUENCIES d6 d8 q8.ns.

CTABLES
  /VLABELS VARIABLES=q7.1 q7.2 q7.3 q7.4 q7.5 q7.6 q7.7 q7.8 q7.9 q7.10 q7.11 q7.12 q7.13 q7.14
    q7.15 q7.16 q7.17 q7.18 q7.99
    DISPLAY=LABEL
  /TABLE q7.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.3
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.5 [COUNT F40.0,
    COLPCT.COUNT PCT40.1] + q7.6 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.7 [COUNT F40.0, COLPCT.COUNT
    PCT40.1] + q7.8 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.9 [COUNT F40.0, COLPCT.COUNT PCT40.1] +
    q7.10 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.11 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.12
    [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.13 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.14 [COUNT
    F40.0, COLPCT.COUNT PCT40.1] + q7.15 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.16 [COUNT F40.0,
    COLPCT.COUNT PCT40.1] + q7.17 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q7.18 [COUNT F40.0,
    COLPCT.COUNT PCT40.1] + q7.99 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q7.1 q7.2 q7.3 q7.4 q7.5 q7.6 q7.7 q7.8 q7.9 q7.10 q7.11 q7.12 q7.13 q7.14
    q7.15 q7.16 q7.17 q7.18 q7.99 ORDER=A KEY=VALUE EMPTY=INCLUDE.

FREQUENCIES q9 q10 q12.


MULT RESPONSE GROUPS = $mr.4
'q11.Houve no Plano Plurianual – PPA 2018-2021 estimativa de recursos orçamentários municipais para'
(q11.1 q11.2 q11.3 q11.4 q11.5 q11.6 q11.7 q11.8 q11.9 q11.99(1))
/FREQUENCIES=$mr.4.

FREQUENCIES d13 q14 q15 q16 q17 /FORMAT=DVALUE.

MULT RESPONSE GROUPS = $mr.5
'q18.Quais formas de apoio técnico o município recebeu do estado, dos últimos 12 meses?'
(q18.1 q18.2 q18.3 q18.4 q18.5 q18.6 q18.99(1))
/FREQUENCIES=$mr.5.

FREQUENCIES q19 q20. 

FREQUENCIES q21.1 q21.2 q21.3 q21.4 q21.5.

FREQUENCIES d22.1 d22.3 d22.2 d22.4. 

CTABLES
  /VLABELS VARIABLES=q22.1  q22.3 q22.2q22.4 DISPLAY=LABEL
  /TABLE q22.1 [SUM, MEAN, MEDIAN, MAXIMUM] + q22.2 [SUM, MEAN, MEDIAN, MAXIMUM] + q22.3 [SUM, 
    MEAN, MEDIAN, MAXIMUM] + q22.4 [SUM, MEAN, MEDIAN, MAXIMUM]
  /TITLES TITLE='q22.Receitas e Despesas do município na área de assistência social no ano de 2016'.

CTABLES
  /VLABELS VARIABLES=q22.1 q22.2 q22.3 q22.4 DISPLAY=LABEL
  /TABLE q22.1 [MEAN] + q22.2 [MEAN] + q22.3 [MEAN] + q22.4 [MEAN]
BY Porte.pop2010
  /TITLES TITLE='q22.Média de Receitas e Despesas do município na área de assistência social no ano de 2016'.

FREQUENCIES q23 d24 q25. 

MULT RESPONSE GROUPS = $mr.6
'q26.O(s) sistema(s) utilizado(s) permite(m):'
(q26.1 q26.2 q26.3 q26.4 q26.5 q26.6 q26.99(1))
/FREQUENCIES=$mr.6.

******BLOCO 4 - GESTÃO DO TRABALHO**********

CTABLES 
  /VLABELS VARIABLES=d27.1 d27.2 d27.3 d27.4 d27.5 d27.6 d27.7 d27.8 d27.9 d27.10 d27.11 d27.12 
    DISPLAY=LABEL 
  /TABLE d27.1 [MEAN, SUM] + d27.2 [S][MEAN, SUM] + d27.3 [MEAN, SUM] + d27.4 [MEAN, SUM] + d27.5 
    [MEAN, SUM] + d27.6 [MEAN, SUM] + d27.7 [MEAN, SUM] + d27.8 [MEAN, SUM] + d27.9 [MEAN, SUM] + 
    d27.10 [MEAN, SUM] + d27.11 [S][MEAN, SUM] + d27.12 [MEAN, SUM] 
  /TITLES 
    TITLE='Total e média de profissionais do órgão gestor do SUAS, exclusivos e compartilhados '.

CTABLES
  /VLABELS VARIABLES=q28.1.1 q28.1.2 q28.1.3 q28.1.4 DISPLAY=LABEL
  /TABLE BY q28.1.1 [SUM] + q28.1.2 [SUM] + q28.1.3 [SUM] + q28.1.4 [SUM]
  /TITLES TITLE='q28.1.Quantidade de trabalhadores Estatutários por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q28.2.1 q28.2.2 q28.2.3 q28.2.4 DISPLAY=LABEL
  /TABLE BY q28.2.1 [SUM] + q28.2.2 [SUM] + q28.2.3 [SUM] + q28.2.4 [SUM]
  /TITLES TITLE='q28.2.Quantidade de trabalhadores Celetistas por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q28.3.1 q28.3.2 q28.3.3 q28.3.4 DISPLAY=LABEL
  /TABLE BY q28.3.1 [SUM] + q28.3.2 [SUM] + q28.3.3 [SUM] + q28.3.4 [SUM]
  /TITLES TITLE='q28.3.Quantidade de trabalhadores Comissionados por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q28.4.1 q28.4.2 q28.4.3 q28.4.4 DISPLAY=LABEL
  /TABLE BY q28.4.1 [SUM] + q28.4.2 [SUM] + q28.4.3 [SUM] + q28.4.4 [SUM]
  /TITLES TITLE='q28.4.Quantidade de trabalhadores com Outros Vínculos por escolaridade'.

CTABLES
  /VLABELS VARIABLES=q28.5.1 q28.5.2 q28.5.3 q28.5.4 DISPLAY=LABEL
  /TABLE BY q28.5.1 [SUM] + q28.5.2 [SUM] + q28.5.3 [SUM] + q28.5.4 [SUM]
  /TITLES TITLE='q28.5.Quantidade total de trabalhadores por escolaridade'.

FREQUENCIES d28.5.4.

CTABLES 
  /VLABELS VARIABLES=q29.1 q29.2 q29.3 q29.4 q29.5 q29.6 q29.7 q29.8 q29.9 q29.10 q29.11 q29.12 
    q29.13 q29.14 q29.15 q29.16 q29.99 
    DISPLAY=LABEL 
  /TABLE q29.1 [S][SUM, MEAN] + q29.2 [S][SUM, MEAN] + q29.3 [S][SUM, MEAN] + q29.4 [S][SUM, MEAN] 
    + q29.5 [S][SUM, MEAN] + q29.6 [S][SUM, MEAN] + q29.7 [S][SUM, MEAN] + q29.8 [S][SUM, MEAN] + q29.9 
    [S][SUM, MEAN] + q29.10 [S][SUM, MEAN] + q29.11 [S][SUM, MEAN] + q29.12 [S][SUM, MEAN] + q29.13 
    [S][SUM, MEAN] + q29.14 [S][SUM, MEAN] + q29.15 [S][SUM, MEAN] + q29.16 [S][SUM, MEAN] + q29.99 
    [S][SUM, MEAN].

FREQUENCIES d29.total /FORMAT=DVALUE.

FREQUENCIES q30.1.1 q30.2.1.

CTABLES
  /VLABELS VARIABLES=q30.1.2 q30.1.4 DISPLAY=LABEL
  /TABLE q30.1.2 [SUM] + q30.1.4 [SUM] BY Porte.pop2010
  /TITLES TITLE='q30.1.Soma da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Superior por Porte'.

CTABLES
  /VLABELS VARIABLES=q30.1.2 q30.1.4 DISPLAY=LABEL
  /TABLE q30.1.2 [MEAN] + q30.1.4 [MEAN] BY Porte.pop2010
  /TITLES TITLE='q30.1.Média da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Superior por Porte'.

CTABLES
  /VLABELS VARIABLES=q30.2.2 q30.2.4 DISPLAY=LABEL
  /TABLE q30.2.2 [SUM] + q30.2.4 [SUM] BY Porte.pop2010
  /TITLES TITLE='q30.2.Soma da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Médio por Porte'.

CTABLES
  /VLABELS VARIABLES=q30.2.2 q30.2.4 DISPLAY=LABEL
  /TABLE q30.2.2 [MEAN] + q30.2.4 [MEAN] BY Porte.pop2010
  /TITLES TITLE='q19.2.Média da quantidade de vagas e quantidade de trabalhadores'+
' empossados para Nível Médio por Porte'.

FREQUENCIES q31 /FORMAT=DVALUE.

FREQUENCIES q32.

FREQUENCIES VARIABLES=q33 
  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.21
'q34.Quais informações constam no Plano de Capacitação e Educação Permanente? ('
(q34.1 q34.2 q34.3 q34.4 q34.5 q34.6 q34.7 q34.8 q34.99 (1))
/FREQUENCIES=$mr.21.

FREQUENCIES q35 /FORMAT=DVALUE.

CTABLES
  /VLABELS VARIABLES=q36.1 q36.2 DISPLAY=LABEL
  /TABLE q36.1 [MEAN] + q36.2 [MEAN].


CTABLES
  /VLABELS VARIABLES=q37.1 q37.2 q37.3 q37.4 q37.5 q37.6 q37.7 q37.8 q37.9 q37.10 
    DISPLAY=LABEL
  /TABLE q37.1 [MEAN] + q37.2 [MEAN] + q37.3 [MEAN] + q37.4 [MEAN] + q37.5 [MEAN] + q37.6 [S][MEAN] 
    + q37.7 [S][MEAN] + q37.8 [MEAN] + q37.9 [MEAN] + q37.10 [S][MEAN].


FREQUENCIES q38.

CTABLES
  /VLABELS VARIABLES=q39.1 q39.2 q39.3 q39.4 q39.5 q39.6 q39.7 q39.8 q39.9 
    DISPLAY=LABEL
  /TABLE q39.1 [MEAN] + q39.2 [MEAN] + q39.3 [MEAN] + q39.4 [MEAN] + q39.5 [S][MEAN] + q39.6 [MEAN] 
    + q39.7 [MEAN] + q39.8 [MEAN] + q39.9 [MEAN].

FREQUENCIES q40.

FREQUENCIES q41. 

FREQUENCIES q42.

MULT RESPONSE GROUPS=$mr.23
'q43.Qual tipo de aporte é dado pelo órgão gestor da Assistência Social à Mesa de Negociação do SUAS?'
(q43.1 q43.2 q43.3 q43.4 q43.99(1))
/FREQUENCIES=$mr.23.

FREQUENCIES q44 q45 d46.

****BLOCO 5 - SERVIÇOS, BENEFÍCIOS E PROGRAMAS****

FREQUENCIES q47 q48. 

CTABLES 
  /VLABELS VARIABLES=q49.1 q49.2 q49.3 q49.4 q49.5 q49.total DISPLAY=LABEL 
  /TABLE q49.1 [MEAN] + q49.2 [S][MEAN] + q49.3 [S][MEAN] + q49.4 [S][MEAN] + q49.5 [S][MEAN] + 
    q49.total [MEAN].

FREQUENCIES q50.

MULT RESPONSE GROUPS=$mr.24
'q51.Como o município atende questões de violações de direitos?'
(q51.1 q51.2 q51.3 q51.4 q51.5 q51.6 q51.99 q51.0(1))
/FREQUENCIES=$mr.24.

MULT RESPONSE GROUPS=$mr.25
'q52.Quais atividades o técnico ou a equipe de referência da PSE do órgão gestor realiza?'
(q52.1 q52.2 q52.3 q52.4 q52.5 q52.6 q52.7 q52.8 q52.9 q52.10
q52.11 q52.12 q52.0(1))
/FREQUENCIES=$mr.25.

MULT RESPONSE GROUPS=$mr.28
'q53.Em qual(is) local(is) o técnico ou a equipe de referência da PSE do órgão gestor realiza o atendimento às famílias e indivíduos?'
(q53.1 q53.2 q53.3 q53.4 q53.5 q53.6 q53.99(1))
/FREQUENCIES=$mr.28.


MULT RESPONSE GROUPS=$mr.29
'q54.Como o municipio atende adolescentes em cumprimento de Medida Socioeducativa de LA e PSC?'
(q54.1 q54.2 q54.3 q54.4 q54.5 q54.6 q54.7 q54.99(1))
/FREQUENCIES=$mr.29.

MULT RESPONSE GROUPS=$mr.30
'q56.Em qual(is) unidade(s) o serviço é ofertado?'
(q56.1 q56.2 q56.3 q56.4 q56.5 (1))
/FREQUENCIES=$mr.30.

FREQUENCIES q55 q57 q58 q59 /FORMAT=DVALUE.

CTABLES
  /VLABELS VARIABLES=q60 DISPLAY=LABEL
  /TABLE q60 [MEAN].

FREQUENCIES d61.

MULT RESPONSE GROUPS=$mr.31
'q62.Quais atividades são realizadas pelo Programa de Guarda Subsidiada do município?'
(q62.1 q62.2 q62.3 q62.4 q62.5 q62.6 q62.0(1))
/FREQUENCIES=$mr.31.

FREQUENCIES q63.

MULT RESPONSE GROUPS=$mr.34
'q64.Se sim, para qual(is) público(s)?'
(q64.1 q64.2 q64.3 q64.4 q64.5 q64.6 q64.7 (1))
/FREQUENCIES=$mr.34.

MULT RESPONSE GROUPS=$mr.38
'q65.Nos casos de acolhimento de crianças e adolescentes, quais atividades de gestão, monitoramento e supervisão são realizadas pelo órgão gestor da Assistência Social? '
+'Assistência Social no município:'
(q65.1 q65.2 q65.3 q65.4 q65.5 q65.6 q65.7 q65.8 q65.9 q65.0(1))
/FREQUENCIES=$mr.38.

FREQUENCIES q66 q67. 

MULT RESPONSE GROUPS=$mr.40
'q68.Quais equipes utilizam a embarcação do município?'
(q68.1 q68.2 q68.3 q68.4 q68.99 (1))
/FREQUENCIES=$mr.40.

FREQUENCIES q69.

MULT RESPONSE GROUPS=$mr.41
'q70.Quem é responsável pela execução do programa ACESSUAS Trabalho no município?'
(q70.1 q70.2 q70.3 q70.4 q70.99 (1))
/FREQUENCIES=$mr.41.

MULT RESPONSE GROUPS=$mr.42
'q71.Quais atividades são executadas pelo Acessuas Trabalho no município:'
(q71.1 q71.2 q71.3 q71.4 q71.5 q71.6 q71.7 q71.8 q71.9 q71.99 (1))
/FREQUENCIES=$mr.42.

MULT RESPONSE GROUPS=$mr.43
'q72.Para quais oportunidades do mundo do trabalho o município encaminha, de forma rotineira, os usuários da assistência social? ('
(q72.1 q72.2 q72.3 q72.4 q72.5 q72.6 q72.7 q72.99 (1))
/FREQUENCIES=$mr.43.

FREQUENCIES q73.

MULT RESPONSE GROUPS=$mr.44
'q74.Em relação ao programa Criança Feliz, o município:'
(q74.1 q74.2 q74.3 q74.4 q74.5 q74.6 q74.7 q74.8 q74.9 q74.10 (1))
/FREQUENCIES=$mr.44.

FREQUENCIES q75. 

MULT RESPONSE GROUPS=$mr.45
'q76.Qual o público atendido pelas visitas domiciliares?'
(q76.1 q76.2 q76.3 (1))
/FREQUENCIES=$mr.45.

MULT RESPONSE GROUPS=$mr.46
'q77.Indique as ações realizadas pela política de Assistência Social no município para enfrentamento do Trabalho Infantil?'
(q77.1 q77.2 q77.3 q77.4 q77.5 q77.6 q77.7 q77.8 q77.9 q77.10 q77.11 q77.12 q77.0(1))
/FREQUENCIES=$mr.46.

FREQUENCIES q78. 

MULT RESPONSE GROUPS=$mr.46
'q79.Indique as ações realizadas pela política de Assistência Social no município para enfrentamento do Trabalho Infantil?'
(q79.1 q79.2 q79.3 q79.4 q79.5 q79.6 q79.7 q79.8 q79.9 q79.0(1))
/FREQUENCIES=$mr.46.

CTABLES 
  /VLABELS VARIABLES=q80.1.1 q80.1.2 q80.1.4 DISPLAY=LABEL 
  /TABLE q80.1.1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q80.1.2 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q80.1.4 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q80.1.1 q80.1.2 q80.1.4 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES TITLE='q80.1.Benefício Enventual por situação de morte'.

CTABLES 
  /VLABELS VARIABLES=q80.2.1 q80.2.2 q80.2.4 DISPLAY=LABEL 
  /TABLE q80.2.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q80.2.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q80.2.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q80.2.1 q80.2.2 q80.2.4 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES TITLE='Benefício Eventual por Situação de Natalidade'.

CTABLES 
  /VLABELS VARIABLES=q80.3.1 q80.3.2 q80.3.4 DISPLAY=LABEL 
  /TABLE q80.3.1 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] + q80.3.2 [C][COUNT F40.0, COLPCT.COUNT 
    PCT40.1] + q80.3.4 [C][COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q80.3.1 q80.3.2 q80.3.4 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='Benefício Eventual para situação de calamidade pública'.

CTABLES
  /VLABELS VARIABLES=q80.4.1 q80.4.2 q80.4.4 DISPLAY=LABEL
  /TABLE q80.4.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q80.4.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q80.4.4 [COUNT F40.0, TABLEPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q80.4.1 q80.4.2 q80.4.4 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Outros benefícios eventuais para famílias em situação de vulnerabilidade temporária'.


CTABLES
  /VLABELS VARIABLES=q81.1.1 q81.1.2 q81.1.3 q81.1.4 q81.1.0 DISPLAY=LABEL
  /TABLE q81.1.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.1.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.1.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.1.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.1.0 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q81.1.1 q81.1.2 q81.1.3 q81.1.4 q81.1.0 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+
    'cadastral do CadÚnico: Na sede do órgão gestor/Secretaria de Assistência'.


CTABLES
  /VLABELS VARIABLES=q81.2.1 q81.2.2 q81.2.3 q81.2.4 q81.2.0 DISPLAY=LABEL
  /TABLE q81.2.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.2.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.2.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.2.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.2.0 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q81.2.1 q81.2.2 q81.2.3 q81.2.4 q81.2.0 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+
    'cadastral do CadÚnico: Nos CRAS'.

CTABLES 
  /VLABELS VARIABLES=q81.3.1 q81.3.2 q81.3.3 q81.3.4 q81.3.0 DISPLAY=LABEL 
  /TABLE q81.3.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.3.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.3.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.3.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.3.0 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
  /CATEGORIES VARIABLES=q81.3.1 q81.3.2 q81.3.3 q81.3.4 q81.3.0 ORDER=A KEY=VALUE EMPTY=INCLUDE 
  /TITLES 
    TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+ 
    'cadastral do CadÚnico: Em unidades/postos fixos exclusivos para cadastramento'.


CTABLES
  /VLABELS VARIABLES=q81.4.1 q81.4.2 q81.4.3 q81.4.4 q81.4.0 DISPLAY=LABEL
  /TABLE q81.4.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.4.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.4.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.4.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.4.0 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q81.4.1 q81.4.2 q81.4.3 q81.4.4 q81.4.0 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+
    'cadastral do CadÚnico: Em unidades móveis ou postos temporários'.


CTABLES
  /VLABELS VARIABLES=q81.5.1 q81.5.2 q81.5.3 q81.5.4 q81.5.0 DISPLAY=LABEL
  /TABLE q81.5.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.5.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.5.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.5.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.5.0 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q81.5.1 q81.5.2 q81.5.3 q81.5.4 q81.5.0 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+
    'cadastral do CadÚnico:Em outras unidades da Assistência Social'.


CTABLES
  /VLABELS VARIABLES=q81.6.1 q81.6.2 q81.6.3 q81.6.4 q81.6.0 DISPLAY=LABEL
  /TABLE q81.6.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.6.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.6.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.6.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.6.0 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q81.6.1 q81.6.2 q81.6.3 q81.6.4 q81.6.0 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+
    'cadastral do CadÚnico:Em unidades de outras políticas públicas'.

CTABLES
  /VLABELS VARIABLES=q81.7.1 q81.7.2 q81.7.3 q81.7.4 q81.7.0 DISPLAY=LABEL
  /TABLE q81.7.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.7.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.7.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.7.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.7.0 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q81.7.1 q81.7.2 q81.7.3 q81.7.4 q81.7.0 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+
    'cadastral do CadÚnico:No domicílio das famílias'.


CTABLES
  /VLABELS VARIABLES=q81.8.1 q81.8.2 q81.8.3 q81.8.4 q81.8.0 DISPLAY=LABEL
  /TABLE q81.8.1 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.8.2 [COUNT F40.0, COLPCT.COUNT PCT40.1] 
    + q81.8.3 [COUNT F40.0, COLPCT.COUNT PCT40.1] + q81.8.4 [COUNT F40.0, COLPCT.COUNT PCT40.1] + 
    q81.8.0 [COUNT F40.0, COLPCT.COUNT PCT40.1]
  /CATEGORIES VARIABLES=q81.8.1 q81.8.2 q81.8.3 q81.8.4 q81.8.0 ORDER=A KEY=VALUE EMPTY=INCLUDE
  /TITLES
    TITLE='Assinale os locais do município onde são realizados o cadastramento e a atualização '+
    'cadastral do CadÚnico:Outros'.

FREQUENCIES q82.

MEANS TABLES=q83 q85
  /CELLS=MEAN COUNT STDDEV.

FREQUENCIES q84.

***BLOCO 6 - PARTICIPACAO E COMUNICACAO COM O USUARIO***

MULT RESPONSE GROUPS=$mr.47
'q86.Quais estratégias de fomento à participação do cidadão e usuário são utilizadas pelo órgão gestor da Assistência Social no município?'
(q86.1 q86.2 q86.3 q86.4 q86.5 q86.6 q86.7 q86.8 q86.99 (1))
/FREQUENCIES=$mr.47.

MULT RESPONSE GROUPS=$mr.48
'q87.Como os usuários do SUAS costumam se comunicar com as equipes técnicas e/ou de gestão do SUAS? Por meio de:'
(q87.1 q87.2 q87.3 q87.4 q87.5 q87.6 q87.7 q87.8 q87.99 q87.0 (1))
/FREQUENCIES=$mr.48.

FREQUENCIES q88. 

MULT RESPONSE GROUPS=$mr.49
'q89.Indique os conteúdos/temas das ações de comunicação (campanha/ mobilização/sensibilização) realizadas pelo órgão gestor em 2017? ('
(q89.1 q89.2 q89.3 q89.4 q89.5 q89.6 q89.7 q89.8 q89.9 q89.10 q89.11 q89.12 q89.13 q89.14 q89.99  (1))
/FREQUENCIES=$mr.49.

