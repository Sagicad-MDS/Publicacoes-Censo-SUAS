

IF  (q1 = 2 & (q2_1+q2_2 + q2_3 + q2_4 + q2_5 + q2_6 + q2_7 + q2_8 = 0)) q2_critica_a=1.
EXECUTE.

RECODE q2_critica_a (SYSMIS=0).
EXECUTE.

IF  (q1 ~= 2 & (q2_1+q2_2 + q2_3 + q2_4 + q2_5 + q2_6 + q2_7 + q2_8 = 0)) q2_critica_b=1.
EXECUTE.

RECODE q2_critica_b (SYSMIS=0).
EXECUTE.

IF  (q1 ~= 2 & (q2_1+q2_2 + q2_3 + q2_4 + q2_5 + q2_6 + q2_7 + q2_8 > 0)) q2_critica_c=1.
EXECUTE.

RECODE q2_critica_c (SYSMIS=0).
EXECUTE.

FREQUENCIES VARIABLES=q2_9
  /ORDER=ANALYSIS.


IF  (MISSING(q7_1) | MISSING(q7_2) | MISSING(q7_3)  | MISSING(q7_4)  | MISSING(q7_5)  | MISSING(q7_6)  | MISSING(q7_7)  | MISSING(q7_8) ) q7_critica_a=1.
EXECUTE.

RECODE q7_critica_a (SYSMIS=0).
EXECUTE.

COMPUTE q8_original= q8.
COMPUTE q9a_original= q9a.
COMPUTE q9b_original= q9b.
EXECUTE.

COMPUTE q9_soma=q9a + q9b.
EXECUTE.

IF ( q8 ~= q9_soma) q8_critica_a = 1.
RECODE q8_critica_a (SYSMIS=0).
EXECUTE.

Compute Dif_Q8_Q9 = (q8 - q9_soma).
EXECUTE.



*****************  BOX PLOTS  *********************

EXAMINE VARIABLES=q8 q9_soma BY FX_pop
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /ID=Ident_09.

SORT CASES  BY FX_pop.
SPLIT FILE LAYERED BY FX_pop.
EXAMINE VARIABLES=q8 q9_soma
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /ID=Ident_09.
SPLIT FILE OFF.


EXAMINE VARIABLES=q10 
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /ID=Ident_09.

SORT CASES  BY FX_pop.
SPLIT FILE LAYERED BY FX_pop.
EXAMINE VARIABLES=q13a q13b
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL
  /ID=Ident_09.
SPLIT FILE OFF.




*************************************************  IMPUTAÇÕES ****************************

* Imputação q2*

DO IF (q2_critica_b = 1).
RECODE q2_1 q2_2 q2_3 q2_4 q2_5 q2_6  q2_7  q2_8  (0=SYSMIS).
END IF.
EXECUTE.

STRING q6a_outro__original (A100).

COMPUTE q6a_outro__original = q6a_outro .
Execute.

NUMERIC q6_original (F2.0).

COMPUTE q6_original = q6 .
Execute.


* Imputação q6a_outros*

IF (IBGE	=	250050 |
IBGE	=	310210	|
IBGE = 310620 |
IBGE	=	311960	|
IBGE	=	316440	|
IBGE	=	316570	|
IBGE	=	350020	|
IBGE	=	350120	|
IBGE	=	350470	|
IBGE	=	351130	|
IBGE	=	351800	|
IBGE	=	351890	|
IBGE	=	352650	|
IBGE	=	352770	|
IBGE	=	352950	|
IBGE	=	352965	|
IBGE	=	353230	|
IBGE	=	353284	|
IBGE	=	353286	|
IBGE	=	353690	|
IBGE	=	353970	|
IBGE	=	354030	|
IBGE	=	354040	|
IBGE	=	354420	|
IBGE	=	354610	|
IBGE	=	354710	|
IBGE	=	354720	|
IBGE	=	354920	|
IBGE	=	355120	|
IBGE	=	355130	|
IBGE	=	355310	|
IBGE	=	355330	|
IBGE	=	410645	|
IBGE	=	411040	|
IBGE	=	411270	|
IBGE	=	411375	|
IBGE	=	412217	|
IBGE	=	412280	|
IBGE	=	412300	|
IBGE	=	420360	|
IBGE	=	420765	|
IBGE	=	431244	|
IBGE	=	431333	|
IBGE	=	520420	|
IBGE	=	521385	|
IBGE	=	521925) q6a_Outro = "" .
Execute.



* Imputação q6*

DO IF (IBGE	=	250050 |
IBGE	=	310210	|
IBGE = 310620 |
IBGE	=	311960	|
IBGE	=	316440	|
IBGE	=	316570	|
IBGE	=	350020	|
IBGE	=	350120	|
IBGE	=	350470	|
IBGE	=	351130	|
IBGE	=	351800	|
IBGE	=	351890	|
IBGE	=	352650	|
IBGE	=	352770	|
IBGE	=	352950	|
IBGE	=	352965	|
IBGE	=	353230	|
IBGE	=	353284	|
IBGE	=	353286	|
IBGE	=	353690	|
IBGE	=	353970	|
IBGE	=	354030	|
IBGE	=	354040	|
IBGE	=	354420	|
IBGE	=	354610	|
IBGE	=	354710	|
IBGE	=	354720	|
IBGE	=	354920	|
IBGE	=	355120	|
IBGE	=	355130	|
IBGE	=	355310	|
IBGE	=	355330	|
IBGE	=	410645	|
IBGE	=	411040	|
IBGE	=	411270	|
IBGE	=	411375	|
IBGE	=	412217	|
IBGE	=	412280	|
IBGE	=	412300	|
IBGE	=	420360	|
IBGE	=	420765	|
IBGE	=	431244	|
IBGE	=	431333	|
IBGE	=	520420	|
IBGE	=	521385	|
IBGE	=	521925).
Recode q6 (99=SYSMIS).
END IF.
EXECUTE.



* Imputação q5 *

DO IF (IBGE	=	250050 |
IBGE	=	310210	|
IBGE = 310620 |
IBGE	=	311960	|
IBGE	=	316440	|
IBGE	=	316570	|
IBGE	=	350020	|
IBGE	=	350120	|
IBGE	=	350470	|
IBGE	=	351130	|
IBGE	=	351800	|
IBGE	=	351890	|
IBGE	=	352650	|
IBGE	=	352770	|
IBGE	=	352950	|
IBGE	=	352965	|
IBGE	=	353230	|
IBGE	=	353284	|
IBGE	=	353286	|
IBGE	=	353690	|
IBGE	=	353970	|
IBGE	=	354030	|
IBGE	=	354040	|
IBGE	=	354420	|
IBGE	=	354610	|
IBGE	=	354710	|
IBGE	=	354720	|
IBGE	=	354920	|
IBGE	=	355120	|
IBGE	=	355130	|
IBGE	=	355310	|
IBGE	=	355330	|
IBGE	=	410645	|
IBGE	=	411040	|
IBGE	=	411270	|
IBGE	=	411375	|
IBGE	=	412217	|
IBGE	=	412280	|
IBGE	=	412300	|
IBGE	=	420360	|
IBGE	=	420765	|
IBGE	=	431244	|
IBGE	=	431333	|
IBGE	=	520420	|
IBGE	=	521385	|
IBGE	=	521925) .
RECODE q5 (0 = 1) .
End if.
Execute.



* Imputação q8 *

COMPUTE q8_original= q8.
COMPUTE q9a_original= q9a.
COMPUTE q9b_original= q9b.
EXECUTE.


COMPUTE q9_soma=q9a + q9b.
EXECUTE.

IF  ( q8 ~= q9_soma) q8 = q9_soma.
Execute.

DO IF 
( FX_pop < 3 & q8 > 20) |
( FX_pop = 3 & q8 > 30) |
( FX_pop  < 6 & q8 > 50) |
( FX_pop >= 6 & q8 > 100).
Recode q8 ( ELSE = SYSMIS).
End if.
Execute.

DO IF (MISSING(q8)).
RECODE q9a q9b (ELSE=SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES q9_soma.

* Reverter
*COMPUTE q8 = q8_original.
*COMPUTE q9a = q9a_original.
*COMPUTE q9b = q9b_original.
*EXECUTE.

DO IF ((q8=0) and (Soma_q7 = q7_1 + q7_2 + q7_3 + q7_4 + q7_5 + q7_6 + q7_7 + q7_8 > 0)) .
Recode q8 (0=1).
End if.
Execute.


DO IF (q9a + q9b = 0 )  .
Recode q9a q9b (0=SYSMIS).
End if.
Execute.




* Imputação q13 *

COMPUTE 
q13a_original = q13a.

DO IF 
( FX_pop < 3 & q13a > 2).
Recode q13a ( ELSE = 1).
End if.
Execute.

DO IF 
( (FX_pop > 2 & FX_pop < 5) & q13a > 4).
Recode q13a ( ELSE = 1).
End if.
Execute.

*REVERTER
COMPUTE 
q13a = q13a_original.


* Imputação q17, q18 e q19 *

DO IF (q16 = 0).
RECODE q17 q18 q19_1 q19_2 q19_3 q19_4 q19_5 q19_6 q19_7 q19_8 q19_9 q19_10 q19_11 q19_12 q19_13 
    q19_14 q19_15 q19_16 q19_17 q19_18 q19_19 (ELSE=SYSMIS).
END IF.
EXECUTE.


* Imputação q25 *

DO IF (q24 = 0).
RECODE q25_1 q25_2 q25_3 q25_4 q25_5 q25_6 q25_7 q25_8 q25_9 q25_10 q25_11 q25_12 q25_13 q25_14 
    q25_15 q25_16 q25_17 q25_18 q25_19 q25_20 q25_21 q25_99 (ELSE=SYSMIS).
END IF.
EXECUTE.


* Imputação q28c *

DO IF ((q28a +q28b) ~= q28c ).
COMPUTE q28c = q28a + q28b.
END IF.
EXECUTE.



* Imputação q32 *

RECODE q32 (1 thru 3=1) (ELSE=Copy) INTO q32_recodificada.
EXECUTE.

IF  (q33_2b > 0) q32_recodificada=1.
EXECUTE.

IF  (q39_2014 = 1 | q39_2014 = 3) q32_recodificada=1.
EXECUTE.

IF  (q33_2b > 0) q32_recodificada=1.
EXECUTE.


*****************************************

*** q33 *****************


DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /STATISTICS=MEAN SUM STDDEV.

COMPUTE
q33_1a_original = q33_1a.
EXECUTE.

COMPUTE
q33_1b_original = q33_1b.
EXECUTE.

COMPUTE
q33_2a_original = q33_2a.
EXECUTE.

COMPUTE
q33_2b_original = q33_2b.
EXECUTE.

COMPUTE
q33_3a_original = q33_3a.
EXECUTE.

COMPUTE
q33_3b_original = q33_3b.
EXECUTE.

COMPUTE
q33_4a_original = q33_4a.
EXECUTE.

COMPUTE
q33_4b_original = q33_4b.
EXECUTE.

****  REVERTER ***


COMPUTE q33_1a = q33_1a_original.
COMPUTE q33_1b = q33_1b_original.
COMPUTE q33_2a = q33_2a_original.
COMPUTE q33_2b = q33_2b_original.
COMPUTE q33_3a = q33_3a_original.
COMPUTE q33_3b = q33_3b_original.
COMPUTE q33_4a = q33_4a_original.
COMPUTE q33_4b = q33_4b_original.




************************************************************



DO IF (q33_1a + q33_1b + q33_2a + q33_2b +q33_3a + q33_3b +q33_4a + q33_4b = 0).
RECODE q33_1a  q33_1b  q33_2a  q33_2b q33_3a  q33_3b q33_4a  q33_4b  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_4a > (1.3 *q33_2a)).
RECODE q33_4a q33_2a  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_3a > (1.3 *q33_1a)).
RECODE q33_3a q33_1a  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_4b > (1.3 *q33_2b)).
RECODE q33_4b q33_2b  (ELSE=SYSMIS).
END IF.
EXECUTE.

DO IF (q33_3b > (1.3 *q33_1b)).
RECODE q33_3b q33_1b  (ELSE=SYSMIS).
END IF.
EXECUTE.


DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /STATISTICS=MEAN SUM STDDEV.



****  Porte FX 1 *****

USE ALL.
COMPUTE filter_$=(FX_pop = 1).
VARIABLE LABELS filter_$ 'FX_pop = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /SAVE
  /STATISTICS=MEAN.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2a > 3). 
RECODE q33_2a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2b > 3). 
RECODE q33_2b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3a > 3). 
RECODE q33_3a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3b > 3). 
RECODE q33_3b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4a > 3). 
RECODE q33_4a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4b > 3). 
RECODE q33_4b (ELSE = SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES Zq33_1a Zq33_1b Zq33_2a Zq33_2b Zq33_3a Zq33_3b Zq33_4a Zq33_4b .
Execute.

FILTER OFF.
USE ALL.
EXECUTE.


****  Porte FX 2 *****

USE ALL.
COMPUTE filter_$=(FX_pop = 2).
VARIABLE LABELS filter_$ 'FX_pop = 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /SAVE
  /STATISTICS=MEAN.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2a > 3). 
RECODE q33_2a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2b > 3). 
RECODE q33_2b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3a > 3). 
RECODE q33_3a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3b > 3). 
RECODE q33_3b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4a > 3). 
RECODE q33_4a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4b > 3). 
RECODE q33_4b (ELSE = SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES Zq33_1a Zq33_1b Zq33_2a Zq33_2b Zq33_3a Zq33_3b Zq33_4a Zq33_4b .
Execute.


FILTER OFF.
USE ALL.
EXECUTE.


****  Porte FX 3 *****

USE ALL.
COMPUTE filter_$=(FX_pop = 3).
VARIABLE LABELS filter_$ 'FX_pop = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /SAVE
  /STATISTICS=MEAN.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2a > 3). 
RECODE q33_2a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2b > 3). 
RECODE q33_2b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3a > 3). 
RECODE q33_3a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3b > 3). 
RECODE q33_3b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4a > 3). 
RECODE q33_4a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4b > 3). 
RECODE q33_4b (ELSE = SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES Zq33_1a Zq33_1b Zq33_2a Zq33_2b Zq33_3a Zq33_3b Zq33_4a Zq33_4b .
Execute.

FILTER OFF.
USE ALL.
EXECUTE.




****  Porte FX 4 *****

USE ALL.
COMPUTE filter_$=(FX_pop = 4).
VARIABLE LABELS filter_$ 'FX_pop = 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /SAVE
  /STATISTICS=MEAN.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2a > 3). 
RECODE q33_2a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2b > 3). 
RECODE q33_2b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3a > 3). 
RECODE q33_3a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3b > 3). 
RECODE q33_3b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4a > 3). 
RECODE q33_4a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4b > 3). 
RECODE q33_4b (ELSE = SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES Zq33_1a Zq33_1b Zq33_2a Zq33_2b Zq33_3a Zq33_3b Zq33_4a Zq33_4b .
Execute.

FILTER OFF.
USE ALL.
EXECUTE.



****  Porte FX 5 *****

USE ALL.
COMPUTE filter_$=(FX_pop = 5).
VARIABLE LABELS filter_$ 'FX_pop = 5 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /SAVE
  /STATISTICS=MEAN.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2a > 3). 
RECODE q33_2a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2b > 3). 
RECODE q33_2b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3a > 3). 
RECODE q33_3a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3b > 3). 
RECODE q33_3b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4a > 3). 
RECODE q33_4a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4b > 3). 
RECODE q33_4b (ELSE = SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES Zq33_1a Zq33_1b Zq33_2a Zq33_2b Zq33_3a Zq33_3b Zq33_4a Zq33_4b .
Execute.

FILTER OFF.
USE ALL.
EXECUTE.




****  Porte FX 6 *****

USE ALL.
COMPUTE filter_$=(FX_pop = 6).
VARIABLE LABELS filter_$ 'FX_pop = 6 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /SAVE
  /STATISTICS=MEAN.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2a > 3). 
RECODE q33_2a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2b > 3). 
RECODE q33_2b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3a > 3). 
RECODE q33_3a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3b > 3). 
RECODE q33_3b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4a > 3). 
RECODE q33_4a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4b > 3). 
RECODE q33_4b (ELSE = SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES Zq33_1a Zq33_1b Zq33_2a Zq33_2b Zq33_3a Zq33_3b Zq33_4a Zq33_4b .
Execute.

FILTER OFF.
USE ALL.
EXECUTE.




****  Porte FX 7 *****

USE ALL.
COMPUTE filter_$=(FX_pop = 7).
VARIABLE LABELS filter_$ 'FX_pop = 6 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /SAVE
  /STATISTICS=MEAN.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1a > 3). 
RECODE q33_1a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_1b > 3). 
RECODE q33_1b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2a > 3). 
RECODE q33_2a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_2b > 3). 
RECODE q33_2b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3a > 3). 
RECODE q33_3a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_3b > 3). 
RECODE q33_3b (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4a > 3). 
RECODE q33_4a (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (Zq33_4b > 3). 
RECODE q33_4b (ELSE = SYSMIS).
END IF.
EXECUTE.

DELETE VARIABLES Zq33_1a Zq33_1b Zq33_2a Zq33_2b Zq33_3a Zq33_3b Zq33_4a Zq33_4b .
Execute.

FILTER OFF.
USE ALL.
EXECUTE.


DESCRIPTIVES VARIABLES=q33_1a q33_1b q33_2a q33_2b q33_3a q33_3b q33_4a q33_4b
  /STATISTICS=MEAN SUM STDDEV.



********** q36 ****************************

COMPUTE q36_1a_original = q36_1a.
COMPUTE q36_1b_original = q36_1b.
COMPUTE q36_1c_original = q36_1c.
COMPUTE q36_1_original = q36_1.

COMPUTE q36_2a_original = q36_2a.
COMPUTE q36_2b_original = q36_2b.
COMPUTE q36_2c_original = q36_2c.
COMPUTE q36_2_original = q36_2.

COMPUTE q36_3a_original = q36_3a.
COMPUTE q36_3b_original = q36_3b.
COMPUTE q36_3c_original = q36_3c.
COMPUTE q36_3_original = q36_3.

COMPUTE q36_4a_original = q36_4a.
COMPUTE q36_4b_original = q36_4b.
COMPUTE q36_4c_original = q36_4c.
COMPUTE q36_4_original = q36_4.

COMPUTE q36_a_original = q36_a .
COMPUTE q36_b_original = q36_b .
COMPUTE q36_c_original = q36_c .
COMPUTE q36_original = q36 .


** REVERTER 
*COMPUTE q36_1a = q36_1a_original.
*COMPUTE q36_1b = q36_1b_original.
*COMPUTE q36_1c = q36_1c_original.
*COMPUTE q36_1 = q36_1_original.
*COMPUTE q36_2a = q36_2a_original.
*COMPUTE q36_2b = q36_2b_original.
*COMPUTE q36_2c = q36_2c_original.
*COMPUTE q36_2 = q36_2_original.
*COMPUTE q36_3a = q36_3a_original.
*COMPUTE q36_3b = q36_3b_original.
*COMPUTE q36_3c = q36_3c_original.
*COMPUTE q36_3 = q36_3_original.
*COMPUTE q36_4a = q36_4a_original.
*COMPUTE q36_4b = q36_4b_original.
*COMPUTE q36_4c = q36_4c_original.
*COMPUTE q36_4 = q36_4_original.
*COMPUTE q36a = q36a_original.
*COMPUTE q36b = q36b_original.
*COMPUTE q36c = q36c_original.
*COMPUTE q36 = q36_original.

***********************************************************

* CRITICA

IF  (q36_1a + q36_1b + q36_1c ~= q36_1) Critica_q36_1=1.
EXECUTE.

IF  (q36_2a + q36_2b + q36_2c ~= q36_2) Critica_q36_2=1.
EXECUTE.

IF  (q36_3a + q36_3b + q36_3c ~= q36_3) Critica_q36_3=1.
EXECUTE.

IF  (q36_4a + q36_4b + q36_4c ~= q36_4) Critica_q36_4=1.
EXECUTE.

* CRITICA

IF  (q36_1 + q36_2 + q36_3 + q36_4 ~= q36) Critica_q36=1.
EXECUTE.

IF  (q36_a + q36_b + q36_c ~= q36) Critica_q36abc=1.
EXECUTE.


*** Imputação ***

DO IF (q36_1a + q36_1b + q36_1c ~= q36_1).
COMPUTE  q36_1 = (q36_1a + q36_1b + q36_1c).
END IF.
EXECUTE.

DO IF (q36_2a + q36_2b + q36_2c ~= q36_2).
COMPUTE  q36_2 = (q36_2a + q36_2b + q36_2c).
END IF.
EXECUTE.

DO IF (q36_3a + q36_3b + q36_3c ~= q36_3).
COMPUTE  q36_3 = (q36_3a + q36_3b + q36_3c).
END IF.
EXECUTE.

DO IF (q36_4a + q36_4b + q36_4c ~= q36_4).
COMPUTE  q36_4 = (q36_4a + q36_4b + q36_4c).
END IF.
EXECUTE.

DO IF  (q36_1 + q36_2 + q36_3 + q36_4 ~= q36).
COMPUTE q36 = (q36_1 + q36_2 + q36_3 + q36_4).
END IF.
EXECUTE.

DO IF (q36_a ~= q36_1a + q36_2a + q36_3a + q36_4a).
COMPUTE q36_a = (q36_1a + q36_2a + q36_3a + q36_4a).
END IF.
EXECUTE.

DO IF (q36_b ~= q36_1b + q36_2b + q36_3b + q36_4b).
COMPUTE q36_b = (q36_1b + q36_2b + q36_3b + q36_4b).
END IF.
EXECUTE.

DO IF (q36_c ~= q36_1c + q36_2c + q36_3c + q36_4c).
COMPUTE q36_c = (q36_1c + q36_2c + q36_3c + q36_4c).
END IF.
EXECUTE.


*****************************************

COMPUTE RH_perc_POP=(q36/Pop_Total2010)*100.
EXECUTE.


****** Crítica q37 *********************************************

DO IF ((q37_1 + q37_2 + q37_3 + q37_4 + q37_5 + q37_6 + q37_7 + q37_8 + q37_9 + q37_10 + q37_11 + q37_12 + q37_13) > q36_c).
COMPUTE Critica_q37_a = (1).
END IF.
EXECUTE.

COMPUTE Soma_q37 =(q37_1 + q37_2 + q37_3 + q37_4 + q37_5 + q37_6 + q37_7 + q37_8 + q37_9 + q37_10 + q37_11 + q37_12 + q37_13) .
EXECUTE.


******************  Imputação q42 q q43 q45 q46 ****


DO IF (q41 = 0).
RECODE q42_1 q42_2 q42_3 (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (q41 = 0).
COMPUTE q43 = (MISSING(q42)).
END IF.
EXECUTE.


DO IF (q44 = 0).
RECODE q45_1 q45_2 q45_3 (ELSE = SYSMIS).
END IF.
EXECUTE.

DO IF (q44 = 0).
COMPUTE q46 = (MISSING(q46)).
END IF.
EXECUTE.


******************  Imputação q51 ****


DO IF (q50_0=1).
RECODE q51_1 q51_2 q51_3 q51_4 q51_5 q51_6 (ELSE = SYSMIS).
END IF.
EXECUTE.

FILTER OFF. 
USE ALL. 
EXECUTE.

DO IF (
IBGE = 231300 |
IBGE = 431490 |
IBGE = 351760 |
IBGE = 270840 |
IBGE = 431750 |
IBGE = 291800 |
IBGE = 431240 |
IBGE = 260920 |
IBGE = 310170 |
IBGE = 311830).
Compute q50_0 = 1.
END IF.
EXECUTE.


DO IF (q50_0=1).
COMPUTE q50_6a = ("").
END IF.
EXECUTE.

FILTER OFF. 
USE ALL. 
EXECUTE.

DO IF (q50_0=1).
COMPUTE q51_5a = ("").
END IF.
EXECUTE.

FILTER OFF. 
USE ALL. 
EXECUTE.

