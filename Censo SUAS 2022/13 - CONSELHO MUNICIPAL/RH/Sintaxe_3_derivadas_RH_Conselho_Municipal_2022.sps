* Encoding: UTF-8.

**Criação de Derivadas Conselheiros - RH Conselhos - CENSO 2022**



****criar variavel data Censo

STRING  DataCenso (A10). 
COMPUTE DataCenso="31.08.2022". 
VARIABLE LABELS  DataCenso 'COMPUTE DataCenso="31.08.2022"'. 
EXECUTE.


***transformar variavel data string em date

* Date and Time Wizard: DataCenso_2022.
COMPUTE DataCenso_2022=number(DataCenso, EDATE10).
VARIABLE LABELS DataCenso_2022 "DataCenso recodificada".
VARIABLE LEVEL  DataCenso_2022 (SCALE).
FORMATS DataCenso_2022 (EDATE10).
VARIABLE WIDTH  DataCenso_2022(10).
EXECUTE.

******transfromar data nascimento string em date

COMPUTE q85_2_rec=number(q85_2, EDATE10).
VARIABLE LABELS q85_2_rec "q85_2_data nascimento recodificada".
VARIABLE LEVEL  q85_2_rec (SCALE).
FORMATS q85_2_rec (EDATE10).
VARIABLE WIDTH  q85_2_rec(10).
EXECUTE.


**transformar em data**

COMPUTE  Idade=DATEDIF(DataCenso_2022, q85_2_rec, "years"). 
VARIABLE LABELS  Idade "Idade". 
VARIABLE LEVEL  Idade (SCALE). 
FORMATS  Idade (F5.0). 
VARIABLE WIDTH  Idade(5). 
EXECUTE.  


FREQUENCIES VARIABLES=Idade .


  /STATISTICS=RANGE MINIMUM MAXIMUM STDDEV MEAN MEDIAN 
  /FORMAT=LIMIT(50) 
  /ORDER=ANALYSIS.



RECODE Idade (18 thru 29=1) (30 thru 40=2) (41 thru 50=3) (51 thru 60=4) (61 thru 100=5) INTO 
    Faixas_etarias.
VARIABLE LABELS  Faixas_etarias 'Faixas etárias dos Conselheiros'.
EXECUTE.

VALUE LABELS
/Faixas_etarias 
1'18 a 29 anos'
2'30 a 40 anos'
3'41 a 50 anos'
4'51 a 60 anos' 
5'Mais de 60 anos'
.


********************************************************************************
*****************************************************************************************
**Tempo de mandato dos Conselheiros**
* Date and Time Wizard: q85_8_Data de Início do mandato.

COMPUTE q85_8_rec=number(q85_8, EDATE10).
VARIABLE LABELS q85_8_rec "q85_8_Data de Início do mandato recodificada".
VARIABLE LEVEL  q85_8_rec (SCALE).
FORMATS q85_8_rec (EDATE10).
VARIABLE WIDTH  q85_8_rec(10).
EXECUTE.



****** Date and Time Wizard: q85_9_Data de término do mandato

COMPUTE q85_9_rec=number(q85_9, EDATE10).
VARIABLE LABELS q85_9_rec "q85_9_Data de término do mandato recodificada".
VARIABLE LEVEL  q85_9_rec (SCALE).
FORMATS q85_9_rec (EDATE10).
VARIABLE WIDTH q85_9_rec(10).
EXECUTE.



COMPUTE  TempoMandato=RND((q85_9_rec - q85_8_rec) / (365.25 * time.days(1))).
VARIABLE LABELS  TempoMandato "Tempo de mandato dos Conselheiros".
VARIABLE LEVEL  TempoMandato (SCALE).
FORMATS  TempoMandato (F5.0).
VARIABLE WIDTH  TempoMandato(5).
EXECUTE.





****variáveis binárias escolaridade***

RECODE q85_5 (251 thru 254=0) (255 thru 256=1) (257 thru 261=2) INTO d85_5.

VARIABLE LABELS d85_5  'd85_5_Níveis de escolaridade'.
EXECUTE.

VALUE LABELS d85_5
0 'Nível fundamental'
1 'Nível Médio'
2 'Nível Superior'.
execute.

RECODE d85_5 (0=1) INTO d85_5bin1.

VARIABLE LABELS  d85_5bin1  'd85_5_5bin1_Nível fundamental - Conselheiros que possuem até o nível médio (inclui aqueles sem escolaridade)'.
EXECUTE.

VALUE LABELS d85_5_5bin1
1 'Nível fundamental'.
EXECUTE.

RECODE d85_5  (1=1) INTO d85_5bin2.
VARIABLE LABELS d85_5bin2  'd85_5bin2_Nível médio - Conselheiros com ensino superior incompleto e ensino médio completo'.
EXECUTE.

VALUE LABELS d85_5bin2
1 'Nível Médio'.
EXECUTE.

RECODE d85_5 (2=1) INTO  d85_5bin3.
VARIABLE LABELS  d85_5bin3  'd85_5bin3_Nível superior - inclui Conselheiros graduados, com especialização, mestrado ou doutorado'.
EXECUTE.

VALUE LABELS d85_5bin3
1 'Nível Superior'.
EXECUTE.



****variáveis binárias Representação***
*
"GA"  'Governamental - Assistência Social'
"GE"  'Governamental – Educação'
"GS"  'Governamental – Saúde'
"GO"  'Governamental – Outras áreas'
"E"  'Sociedade Civil - das entidade e Organizações de Ass. Social'
"U"  'Sociedade Civil - dos usuários'
"T"  'Sociedade Civil - organizações dos trabalhadores'
"O"  'Sociedade Civil - organizações dos usuários'
*


RECODE q85_6 ("U"=1) ("O"=1)  INTO d85_6bin1.
VARIABLE LABELS  d85_6bin1  'd85_6bin1_Representante de usuários e organização de usuários '.
EXECUTE.


RECODE q85_6 ("E" =1) INTO d85_6bin2.
VARIABLE LABELS d85_6bin2 'd85_6bin2_.Representante de Entidades de Assistência Social'.
EXECUTE.

RECODE q85_6 ("T"=1) INTO d85_6bin3.
VARIABLE LABELS  d85_6bin3 'd85_6bin3_Representante de organização dos trabalhadores'.
EXECUTE.

RECODE q85_6 ("GA","GE","GS" ,"GO"=1) INTO d85_6bin4.
VARIABLE LABELS  d85_6bin4  'd85_6bin4_Representante do Governo'.
EXECUTE.


RECODE q85_6 ("U", "O", "E","T" =1) INTO d85_6bin5.
VARIABLE LABELS  d85_6bin5  'd85_6bin5_Representante da Sociedade Civil'.
EXECUTE.

VALUE LABELS  d85_6bin1
1 'Representante de usuários e organização de usuários'.
EXECUTE.


VALUE LABELS   d85_6bin2
1 'Representante de Entidades de Assistência Social'.
EXECUTE.

VALUE LABELS d85_6bin3
1 'Representante de organização dos trabalhadores'.
EXECUTE.

VALUE LABELS  d85_6bin4
1 'Representante do Governo'.
EXECUTE.

VALUE LABELS  d85_6bin5
1 'Representante da Sociedade Civil'.
EXECUTE.

**variáveis binárias de representação para titulares e suplentes**
20: Conselheiro(a) Presidente
308: Vice-Presidente
105: Conselheiro Titular
106: Conselheiro Suplente
21: Coordenador(a)
251: Apoio Administrativo
248: Educador Social
253: Estagiário(a)
79: Secretário Executivo
252: Serviços Gerais
250: Técnico(a) Nível Médio
249: Técnico(a) Nível Superior
254: Outros


*Duvida: na sintaxe de 2016 estava assim: 

**
DO IF  (q53.6 >= 20 & (q53.6 =251 | q53.6 =20 | q53.6 =105 | q53.6 =106))
RECODE D53.5bin1 (1=1) INTO D53.5bin1.TIT
END IF
VARIABLE LABELS  D53.5bin1.TIT 'D53.5bin1.TIT.Representante Titular de usuários e organização de usuários'
EXECUTE
está certo colocar o "106"? Que se refere a conselheiros suplentes?**
*Fiz diferente de 2016 (Debora)*


DO IF  (q85_7 = 20 | q85_7 = 308 | q85_7 = 105).
RECODE d85_6bin1 (1=1) INTO d85_6bin1_TIT.
END IF.

VARIABLE LABELS d85_6bin1_TIT 'd85_6bin1_TIT_Representante Titular de usuários e organização de usuários'.
EXECUTE.


DO IF  (q85_7 = 106).
RECODE d85_6bin1 (1=1) INTO d85_6bin1_SUPL.
END IF.

VARIABLE LABELS d85_6bin1_SUPL 'd85_6bin1_SUPL_Representante Suplente de usuários e organização de usuários'.
EXECUTE.


DO IF  (q85_7 = 20 | q85_7 = 308 | q85_7 = 105).
RECODE d85_6bin2 (1=1) INTO d85_6bin2_TIT.
END IF.

VARIABLE LABELS  d85_6bin2_TIT  'd85_6bin2_TIT_Representante Titular de Entidades de Assistência Social'.
EXECUTE.


DO IF  (q85_7 = 106).
RECODE d85_6bin2 (1=1) INTO d85_6bin2_SUPL.
END IF.

VARIABLE LABELS  d85_6bin2_SUPL  'd85_6bin2_SUPL_Representante Suplente de Entidades de Assistência Social'.
EXECUTE.


DO IF  (q85_7 = 20 | q85_7 = 308 | q85_7 = 105).
RECODE d85_6bin3 (1=1) INTO d85_6bin3_TIT.
END IF.

VARIABLE LABELS   d85_6bin3_TIT  ' d85_6bin3_TIT_Representante Titular de organização dos trabalhadores'.
EXECUTE.


DO IF  (q85_7 = 106).
RECODE d85_6bin3 (1=1) INTO d85_6bin3_SUPL.
END IF.

VARIABLE LABELS d85_6bin3_SUPL  'd85_6bin3_SUPL_Representante Suplente de organização dos trabalhadores'.
EXECUTE.


DO IF  (q85_7 = 20 | q85_7 = 308 | q85_7 = 105).
RECODE d85_6bin4 (1=1) INTO d85_6bin4_TIT.
END IF.

VARIABLE LABELS  d85_6bin4_TIT  'd85_6bin4_TIT_Representante Titular do Governo'.
EXECUTE.


DO IF  (q85_7 = 106).
RECODE d85_6bin4 (1=1) INTO d85_6bin4_SUPL.
END IF.

VARIABLE LABELS  d85_6bin4_SUPL 'd85_6bin4_SUPL_Representante Suplente do Governo'.
EXECUTE.


DO IF  (q85_7 = 20 | q85_7 = 308 | q85_7 = 105).
RECODE d85_6bin5 (1=1) INTO d85_6bin5_TIT.
END IF.

VARIABLE LABELS  d85_6bin5_TIT  'd85_6bin5_TIT_Representante Titular da Sociedade Civil'.
EXECUTE.


DO IF  (q85_7 = 106).
RECODE d85_6bin5 (1=1) INTO d85_6bin5_SUPL.
END IF.

VARIABLE LABELS  d85_6bin5_SUPL 'd85_6bin5_SUPL_Representante Suplente da Sociedade Civil'.
EXECUTE.



AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /d85_6bin1_sum=SUM(d85_6bin1) 
  /d85_6bin2_sum=SUM(d85_6bin2) 
  /d85_6bin3_sum=SUM(d85_6bin3) 
  /d85_6bin4_sum=SUM(d85_6bin4) 
  /d85_6bin5_sum=SUM(d85_6bin5).



AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /d85_6bin1_TIT_sum=SUM(d85_6bin1_TIT)
  /d85_6bin1_SUPL_sum=SUM(d85_6bin1_SUPL)
  /d85_6bin2_TIT_sum=SUM(d85_6bin2_TIT)
  /d85_6bin2_SUPL_sum=SUM(d85_6bin2_SUPL).
EXECUTE.


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /d85_6bin3_TIT_sum=SUM(d85_6bin3_TIT)
  /d85_6bin3_SUPL_sum=SUM(d85_6bin3_SUPL).
EXECUTE.


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /d85_6bin4_TIT_sum=SUM(d85_6bin4_TIT)
  /d85_6bin4_SUPL_sum=SUM(d85_6bin4_SUPL).
EXECUTE.


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /d85_6bin5_TIT_sum=SUM(d85_6bin5_TIT)
  /d85_6bin5_SUPL_sum=SUM(d85_6bin5_SUPL).
EXECUTE.


AGGREGATE
  /OUTFILE=* MODE=ADDVARIABLES
  /BREAK=IBGE
  /nu_conselheiros=N.
EXECUTE.


RECODE d85_6bin1_sum  d85_6bin2_sum  d85_6bin3_sum  d85_6bin4_sum   d85_6bin5_sum  nu_conselheiros 
    (SYSMIS=0).
EXECUTE.


RECODE d85_6bin1_TIT_sum  d85_6bin1_SUPL_sum  d85_6bin2_TIT_sum  d85_6bin2_SUPL_sum  d85_6bin3_TIT_sum  d85_6bin3_SUPL_sum  d85_6bin4_TIT_sum  d85_6bin4_SUPL_sum
 d85_6bin5_TIT_sum  d85_6bin5_SUPL_sum   (SYSMIS=0).
EXECUTE.




VARIABLE LABELS
d85_6bin1_sum	'd85_6bin1_sum_Representante de usuários e organização de usuários'
  d85_6bin2_sum	'd85_6bin2_sum_Representante de Entidades de Assistência Social'
  d85_6bin3_sum	'd85_6bin3_sum_Representante de organização dos trabalhadores'
  d85_6bin4_sum	'd85_6bin4_sum_Representante do Governo'
  d85_6bin5_sum	'd85_6bin5_sum_Representante da Sociedade Civil'
  d85_6bin1_TIT_sum    'd85_6bin1_TIT_sum.Representante Titular de usuários e organização de usuários'
  d85_6bin1_SUPL_sum    'd85_6bin1_SUPL_sum.Representante Suplente de usuários e organização de usuários'
  d85_6bin2_TIT_sum    'd85_6bin2_TIT_sum.Representante Titular de Entidades de Assistência Social'
  d85_6bin2_SUPL_sum    'd85_6bin2_SUPL_sum.Representante Suplente de Entidades de Assistência Social'
  d85_6bin3_TIT_sum    'd85_6bin3_TIT_sum.Representante Titular de organização dos trabalhadores'
  d85_6bin3_SUPL_sum    'd85_6bin3_SUPL_sum.Representante Suplente de organização dos trabalhadores'
  d85_6bin4_TIT_sum    'd85_6bin4_TIT_sum.Representante Titular do Governo'
  d85_6bin4_SUPL_sum    'd85_6bin4_SUPL_sum.Representante Suplente do Governo'
  d85_6bin5_TIT_sum    'd85_6bin5_TIT_sum.Representante Titular da Sociedade Civil'
  d85_6bin5_SUPL_sum    'd85_6bin5_SUPL_sum.Representante Suplente da Sociedade Civil'
nu_conselheiros	'Quantidade de conselheiros'
.
EXECUTE.







