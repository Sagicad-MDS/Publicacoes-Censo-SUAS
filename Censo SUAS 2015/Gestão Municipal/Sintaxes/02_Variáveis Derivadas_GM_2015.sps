



RECODE q8 q9a q9b  (0 thru 1=1) (2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru Highest=6) 
    (ELSE=Copy) INTO D_8  D_9a  D_9b.
VARIABLE LABELS  D_8 'D_8 - Qtd Locais de Cadastramento'   /D_9a 'D_9a - Locais on-line'   /D_9b 'D_9b - Locais Papel'.
ADD VALUE LABELS D_8  D_9a  D_9b  1 '1'   2'2'  3'3 a 5'  4'6 a 10'  5'11 a 20'  6'mais de 20'. 
EXECUTE.


RECODE q10  (0=0)  (1 thru 3=1) (4 thru 7= 2) (8 thru 15=3) (16 thru 30=4) (11 thru Highest=5) 
    (ELSE=Copy) INTO D_10.
VARIABLE LABELS  D_10 'D10 - Qtd de dias até a digitação do Formulário de papel' .
ADD VALUE LABELS D_10  0'No mesmo dia'  1 '1 a 3 dias'   2'4 a 7 dias'  3'8 a 15 dias'  4'16 a 30 dias'  5'mais de 30'. 
EXECUTE.


RECODE q28a q28b q28c (0 =0) (1 = 1)  (2=2) (3=3) (4 thru 5=4) (6 thru 10=5) (11 thru Highest=6) 
    (ELSE=Copy) INTO D_28a  D_28b  D_28c.
VARIABLE LABELS   D_28a 'D28_a - Profissionais FNAS de nível superior'  /D_28b 'D28_b - Profissionais FNAS de nível médio'    /D_28c 'D28_c - Trabalhador FMAS - Total' .
ADD VALUE LABELS D_28a D_28b D_28c  0'zero' 1 '1'  2'2'  3'3'  4'4 a 5'   5'6 a 10' 6'mais de 10'. 
EXECUTE.


RECODE q35 (0 thru 1=1) (2=2) (3 thru 5=3) (6 thru 10=4) (11 thru 20=5) (21 thru Highest=6) 
    (ELSE=Copy) INTO D_35.
VARIABLE LABELS  D_35 'D35 - Qtd de Entidades conveniadas'.
ADD VALUE LABELS D_35 1 '1'   2'2'  3'3 a 5'  4'6 a 10'  5'11 a 20'  6'mais de 20'. 
EXECUTE.


RECODE q36 (0 thru 5 = 0)  (6 thru 10=1) (11 thru 20=2 ) (21 thru 30=3) (31 thru 50=4) (51 thru 100=5)  (101 thru 200=6) (201 thru 500=7)  (500 thru Highest=8) 
    (ELSE=Copy) INTO D_36.
VARIABLE LABELS  D_36 'D36 - Qtd de Trabalhadores - Total'.
ADD VALUE LABELS D_36    0 'até 5'  1 ' 6 a 10'   2'11 a 20'  3'21 a 30'  4'31 a 50'  5'51 a 100'  6'101 a 200'     7'201 a 500'   8'mais de 500'. 
EXECUTE.


RECODE q59 q60 (0=0) (1 thru 5=1) (6 thru 15=2) (16 thru 30=3) (31 thru 50=4) (51 thru Highest=5) 
    (ELSE=Copy) INTO D_59 D_60.
VARIABLE LABELS  D_59 'D59 - PFA - Familias Cadastradas'  /D_60 'D60 - PFA - Crianças Acolhidas'.
ADD VALUE LABELS D_59 D_60  0 'Zero' 1 '1 a 5' 2'6 a 15'  3'16 a 30'  4'31 a 50'  5'mais de 50'. 
EXECUTE.


RECODE q64 (0 thru 10=1) (11 thru 20=2) (21 thru 50=3) (51 thru 100=4) (101 thru 500=5) (501 thru Highest=6) 
    (ELSE=Copy) INTO D_64.
VARIABLE LABELS  D_64 'D_64 - Pessoas Desabrigadas Acolhidas' .
ADD VALUE LABELS D_64  1 'até3 10'  2'11 a 20'  3'21 a 50'  4'51 a 100'  5'101 a 500'  6'mais de 500'. 
EXECUTE.


RECODE q77 (0 thru 50=1) (51 thru 100=2) (101 thru 500=3) (501 thru 1000=4) (1001 thru 5000=5) (5001 thru 10000=6) (10001 thru Highest=7) 
    (ELSE=Copy) INTO D_77.
VARIABLE LABELS  D_77 'Familias Beneficiárias - Transferência de Renda Municipal' .
ADD VALUE LABELS D_77  1 'até 50'  2'51 a 100'  3'101 a 500'  4'501 a 1.000'  5'1.001 a 5.000' 6'5001 a 10.000'  7'mais de 10.000'. 
EXECUTE.


RECODE q80a q80b q80c (0 =0) (1 = 1)  (2=2) (3=3) (4 thru 5=4) (6 thru 10=5) (11 thru Highest=6) 
    (ELSE=Copy) INTO D_80a  D_80b  D_80c.
VARIABLE LABELS   D_80a 'D_80a - Trabalhador Vigilância - Nível Superior'  /D_80b 'D_80b - Trabalhador Vigilância - Nível Médio'    /D_80c 'D_80c - Trabalhador Vigilância - Total' .
ADD VALUE LABELS D_80a D_80b D_80c  0'zero' 1 '1'  2'2'  3'3'  4'4 a 5'   5'6 a 10' 6'mais de 10'. 
EXECUTE.


RECODE q85  (0 =0) (1 thru 5=1) (6 thru 10=2) (11 thru 50=3) (51 thru 200=4) (201 thru 500=5)  (501 thru 1000=6) (1001 thru Highest=6) 
    (ELSE=Copy) INTO D_85.
VARIABLE LABELS   D_85 'D_85 - Pessoas em Situação de Rua'   .
ADD VALUE LABELS D_85   0'zero' 1 'até 5'  2'6 a 10'  3'11 a 50'  4'51 a 200'   5'201 a 500' 6'501 a 1.000'    7 'mais de 1.000'. 
EXECUTE.


COMPUTE q49_1c=q49_1a + q49_1b.
VARIABLE LABELS  q49_1c 'q49_1c Total - Outras PSB'.
EXECUTE.

COMPUTE q49_2c=q49_2a + q49_2b.
VARIABLE LABELS  q49_2c 'q49_2c Total - Exclusiva MSE'.
EXECUTE.

COMPUTE q49_3c=q49_3a + q49_3b.
VARIABLE LABELS  q49_3c 'q49_3c - Outras PSE-MC - Total'.
EXECUTE.

