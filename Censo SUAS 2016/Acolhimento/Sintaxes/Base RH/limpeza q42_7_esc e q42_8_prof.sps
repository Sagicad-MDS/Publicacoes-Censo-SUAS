

DO IF (q42_7_esc <=  256 & q42_8_prof ~= 238 & q42_8_prof ~= 239).
RECODE q42_8_prof (ELSE=SYSMIS).
END IF.
EXECUTE.
