* Encoding: UTF-8.

**CENSO SUAS 2017 - Familia Acolhedora**





FREQUENCIES VARIABLES=Região Porte_pop2010 UF
  /ORDER=ANALYSIS.


***BLOCO 1 - CARACTERIZAÇÃO DA UNIDADE**

FREQUENCIES VARIABLES=q.1
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q.2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q.3
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.4 'Esta unidade possui convênio/termo de parceria ou outra forma de contratualização com o poder público?'
(q.4.1 q.4.2 q.4.3 q.4.0 q.4.99 (1))
/FREQUENCIES=$mr.4.

MULT RESPONSE GROUPS=$mr.5 'Conselho(s) no(s) qual(is) a entidade possui inscrição/registro'
(q.5.1 q.5.2 q.5.99 q.5.0 (1))
/FREQUENCIES=$mr.5.

FREQUENCIES VARIABLES=q.6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q.7
  /ORDER=ANALYSIS.


CTABLES
  /VLABELS VARIABLES=q.9.1 q.9.2 q.9.3 q.9.4 DISPLAY=LABEL
  /TABLE q.9.1 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q.9.2 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1] + q.9.3 [C][COUNT F40.0, ROWPCT.VALIDN PCT40.1] + q.9.4 [C][COUNT F40.0, ROWPCT.VALIDN 
    PCT40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=q.9.1 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q.9.2 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q.9.3 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
  /CATEGORIES VARIABLES=q.9.4 [1, 2, 0, OTHERNM] EMPTY=INCLUDE TOTAL=YES POSITION=AFTER
/TITLES
 TITLE= 'q9.Em caso de unidade estadual govenamental indique como está organizada a gestão administrativa'.




FREQUENCIES VARIABLES=q.10
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q.11
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q.12
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q.13
  /ORDER=ANALYSIS.

****derivada por faixa


RECODE q.13 (Lowest thru 100=1) (101 thru 500=2) (501 thru 1000=3) (1000 thru Highest=4) INTO 
    q.13.faixa.
EXECUTE.

FREQUENCIES VARIABLES=q.13.faixa
  /ORDER=ANALYSIS.




FREQUENCIES VARIABLES=q.14
  /ORDER=ANALYSIS.

****derivada por faixa

RECODE q.14 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO 
    q.14.faixa.
EXECUTE.

FREQUENCIES VARIABLES=q.14.faixa
  /ORDER=ANALYSIS.




FREQUENCIES VARIABLES=q.15
  /ORDER=ANALYSIS.

************derivada por faixa

RECODE q.15 (Lowest thru 10=1) (11 thru 50=2) (51 thru 100=3) (100 thru Highest=4) INTO 
    q.15.faixa.
EXECUTE.

FREQUENCIES VARIABLES=q.15.faixa
  /ORDER=ANALYSIS.

* Tabelas personalizadas. *****variavel q.16 modo escalar****


COMPUTE q.16.1.7.recod=q.16.1.1 + q.16.1.2 + q.16.1.3 + q.16.1.4 + q.16.1.5+ q.16.1.6.
EXECUTE.


CTABLES
  /VLABELS VARIABLES=q.16.1.1 q.16.1.2 q.16.1.3 q.16.1.4 q.16.1.5 q.16.1.6  q.16.1.7.recod 
    DISPLAY=LABEL
  /TABLE BY q.16.1.1 [S][SUM] + q.16.1.2 [S][SUM] + q.16.1.3 [S][SUM] + q.16.1.4 [S][SUM] + q.16.1.5 [S][SUM] + q.16.1.6 [S][SUM] + q.16.1.7.recod [S][SUM].


COMPUTE q.16.2.7.recod=q.16.2.1 + q.16.2.2 + q.16.2.3 + q.16.2.4 + q.16.2.5+ q.16.2.6.
EXECUTE.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q.16.2.1 q.16.2.2 q.16.2.3 q.16.2.4 q.16.2.5 q.16.2.6 q.16.2.7.recod
    DISPLAY=LABEL
  /TABLE BY q.16.2.1 [S][SUM] + q.16.2.2 [S][SUM] + q.16.2.3 [S][SUM] + q.16.2.4 [S][SUM] + q.16.2.5 [S][SUM] + q.16.2.6 [S][SUM] + q.16.2.7.recod [S][SUM].


FREQUENCIES VARIABLES=q.17
  /ORDER=ANALYSIS.


* Tabelas personalizadas.
CTABLES
  /VLABELS VARIABLES=q.18.1 q.18.1.99 q.18.2 q.18.2.99 DISPLAY=LABEL
  /TABLE q.18.1 [S][SUM] + q.18.1.99 [COUNT F40.0] + q.18.2 [S][SUM] + q.18.2.99 [COUNT F40.0]
  /CATEGORIES VARIABLES=q.18.1.99 q.18.2.99 ORDER=A KEY=VALUE EMPTY=EXCLUDE.


FREQUENCIES VARIABLES=q.19
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q.20
  /ORDER=ANALYSIS.


COMPUTE q.21.9.recod=q.21.1 + q.21.2 + q.21.3 + q.21.4+ q.21.5 + q.21.6+ q.21.7+ q.21.8.
EXECUTE.


CTABLES
  /VLABELS VARIABLES=q.21.1  q.21.2  q.21.3  q.21.4 q.21.5  q.21.6 q.21.7 q.21.8 q.21.9.recod
    DISPLAY=LABEL
  /TABLE BY q.21.1 [S][SUM] + q.21.2 [S][SUM] + q.21.3 [S][SUM] + q.21.4 [S][SUM] + q.21.5 [S][SUM] + q.21.6 [S][SUM] + q.21.7 [S][SUM] + q.21.8 [S][SUM] + q.21.9.recod [S][SUM].


FREQUENCIES VARIABLES=q.22
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=q.23
  /ORDER=ANALYSIS.


FREQUENCIES VARIABLES=q.24
  /ORDER=ANALYSIS.

MULT RESPONSE GROUPS=$mr.25 'Indique quais das atividades abaixo são promovidas sistematicamente pelo serviço'
(q.25.1 q.25.2 q.25.3 q.25.4 q.25.5  q.25.6 q.25.7  q.25.8 q.25.9 q.25.10 q.25.11  q.25.12 q.25.13 q.25.14 q.25.15 q.25.16
  q.25.17 q.25.18 q.25.19  q.25.20 q.25.21 q.25.22 q.25.23 q.25.24 q.25.25 q.25.0 (1))
/FREQUENCIES=$mr.25.


MULT RESPONSE GROUPS=$mr.26  'Quem realiza o acompanhamento dos usuarios após o seu desligamento do serviço'
(q.26.1 q.26.2 q.26.3 q.26.98 q.26.99 q.26.0 (1))
/FREQUENCIES=$mr.26.



FREQUENCIES VARIABLES=q.27
  /ORDER=ANALYSIS.



**********Bloco 3 - familias acolhedoras 

FREQUENCIES VARIABLES=q.28.0
  /ORDER=ANALYSIS.



**********Bloco 4  Gestão de pessoas 

FREQUENCIES VARIABLES=q.29
  /ORDER=ANALYSIS.



