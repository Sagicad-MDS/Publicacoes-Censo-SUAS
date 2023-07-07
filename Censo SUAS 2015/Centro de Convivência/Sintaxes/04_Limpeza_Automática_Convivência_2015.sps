
**** LIMPEZA DAS QUESTÕES MÚLTIPLA ESCOLHA DOS INCOMPLETOS

*Q4.
DO IF ((Incompletos=1 | Incompletos=2) & (q4_0=0 & q4_1=0
& q4_2=0 & q4_3=0 & q4_4=0 & q4_5=0 & q4_6=0 & q4_7=0 &
q4_8=0 & q4_9=0 & q4_10=0 & q4_99 = 0)).
RECODE q4_0 q4_1 q4_2 q4_3 q4_4 q4_5 q4_6 q4_7 q4_8 q4_9 q4_10 q4_99 (0=SYSMIS).
END IF.
EXECUTE.



*Q9.
DO IF ((Incompletos=1 | Incompletos=2) & (q9_0=0 & q9_1=0
& q9_2=0 & q9_3=0 & q9_4=0 & q9_5=0 & q9_6=0 & q9_7=0 &
q9_8=0 & q9_9=0 & q9_99 = 0)).
RECODE q9_0 q9_1 q9_2 q9_3 q9_4 q9_5 q9_6 q9_7 q9_8 q9_9 q9_99 (0=SYSMIS).
END IF.
EXECUTE.


*Q13.
DO IF ((Incompletos=1 | Incompletos=2) & (q13_1=0
& q13_2=0 & q13_3=0 & q13_4=0 & q13_5=0 & q13_6=0 & q13_7=0 &
q13_8=0 & q13_9=0 & q13_10=0 & q13_11=0 & q13_12=0 & q13_99 = 0)).
RECODE q13_1 q13_2 q13_3 q13_4 q13_5 q13_6 q13_7 q13_8 q13_9
q13_10 q13_11 q13_12 q13_99 (0=SYSMIS).
END IF.
EXECUTE.



***** Q13_5 MARCAÇÃO CRAS *****

*FILTER OFF.
*USE ALL.
*SELECT IF (q13_5 = 0).
*EXECUTE.


