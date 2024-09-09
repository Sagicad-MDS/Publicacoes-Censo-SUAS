* Encoding: UTF-8.

**CENSO SUAS 2023 - Familia Acolhedora**


****q12

RECODE q12  (2023=1)  (2022=2)   (2020 THRU 2021 = 3)  (2016 THRU 2019 = 4) (2011 THRU 2015 =5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d12.
VARIABLE LABELS d12 '.Em que ano este Serviço de Acolhimento em Família Acolhedora foi implantado?'.
VALUE LABELS d12
1 '2023'
2 '2022'
3'De 2020 a 2021'
4 'De 2016 a 2019'
5 'De 2011 a 2015'
6 'De 2006 a 2010'
7 'Até de 2005'.
EXECUTE.


