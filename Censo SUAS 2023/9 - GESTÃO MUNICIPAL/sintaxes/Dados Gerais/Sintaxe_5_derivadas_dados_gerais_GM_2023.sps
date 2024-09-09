* Encoding: UTF-8.
****************************************************************************************************
SINTAXE VARIÁVEIS DERIVADAS GESTÃO MUNICIPAL - CENSO SUAS 2023
****************************************************************************************************

********************************************** questão 4

RECODE q4_0  (1=0) INTO d4.
RECODE q4  (2023=1)  (2022=2)   (2020 THRU 2021 = 3)  (2016 THRU 2019 = 4) (2011 THRU 2015 =5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d4.
VARIABLE LABELS d4 'd4. Ano da Lei Municipal de regulamentação do SUAS'.
VALUE LABELS d4
0 'Não possui Lei'
1 '2023'
2 '2022'
3'De 2020 a 2021'
4 'De 2016 a 2019'
5 'De 2011 a 2015'
6 'De 2006 a 2010'
7 'Até de 2005'.
EXECUTE.



*******************************questão 30

RECODE q30  (2023=1)  (2022=2)   (2020 THRU 2021 = 3)  (2016 THRU 2019 = 4) (2011 THRU 2015 =5) (2006 THRU 2010 = 6) (LOWEST THRU 2005 = 7) INTO d30.
VARIABLE LABELS d30 'd30. Qual o ano de elaboração (ou atualização) do diagnóstico?'.
VALUE LABELS d30
0 'Não possui Lei'
1 '2023'
2 '2022'
3'De 2020 a 2021'
4 'De 2016 a 2019'
5 'De 2011 a 2015'
6 'De 2006 a 2010'
7 'Até de 2005'.
EXECUTE.





