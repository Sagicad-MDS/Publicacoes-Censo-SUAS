**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA LIMPAR ESCOLARIDADE E PROFISSÃO INCOMPATÍVEIS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

**********************************Limpeza da incompatibilidade das q43_7_esc e q43_8_prof  ****************************************
*As variáveis q43_7_esc e q43_8_prof expressam escolaridade e profissão dos trabalhadores, porém existem inconsistências.
*Em alguns casos a escolaridade está acima da profissão, e em outros a profissão acima da escolaridade.
*Em ambos os casos a escolaridade indicada prevalece. A syntax abaixo converte os valores de profissão incompatíveis em MISSING.
****************************************************************************************************************


*** BACKUP Var q43_8_prof Original (Profissão)

COMPUTE q43_8_prof_original = q43_8_prof.
VARIABLE LABELS q43_8_prof_original 'Original - q43_8_prof_Profissão'.
VALUE LABELS 
/q43_8_prof_original
273    "Assistente Social"
274    "Psicólogo"
275    "Pedagogo"
232    "Advogado"
235    "Administrador"
234    "Antropólogo"
276    "Sociólogo"
278    "Fisioterapeuta"
283    "Cientista Político"
279    "Nutricionista"
282    "Médico"
233    "Terapeuta Ocupacional"
236    "Economista"
281    "Enfermeiro"
240    "Analista de Sistema"
241    "Programador"
237    "Outra formação de nível superior"
238    "Profissional de nível médio"
239    "Sem formação profissional"
.
EXECUTE.


***** LIMPEZA DE q43_8_prof SE AS RESPOSTAS FOREM INCOMPATÍVEIS *****

DO IF (q43_7_esc = 257 | q43_7_esc = 258 | q43_7_esc = 260 | q43_7_esc = 261) & 
(q43_8_prof_original = 238 | q43_8_prof_original = 239 ).
RECODE q43_8_prof (238=SYSMIS) (239=SYSMIS).
END IF.

DO IF (q43_7_esc = 251 | q43_7_esc = 252 | q43_7_esc = 253 | q43_7_esc = 254 | q43_7_esc = 255  | q43_7_esc = 256) & 
(q43_8_prof_original = 273 | q43_8_prof_original = 274 | q43_8_prof_original = 275 | q43_8_prof_original = 232 |
q43_8_prof_original = 235 | q43_8_prof_original = 234 | q43_8_prof_original = 276 | q43_8_prof_original = 278 | 
q43_8_prof_original = 283 | q43_8_prof_original = 279 | q43_8_prof_original = 282 | q43_8_prof_original = 233 |
q43_8_prof_original = 236 | q43_8_prof_original = 281 | q43_8_prof_original = 240 | q43_8_prof_original = 241 |
q43_8_prof_original = 237).
RECODE q43_8_prof (ELSE=SYSMIS).
END IF.

DO IF (q43_7_esc = 251 | q43_7_esc = 252 | q43_7_esc = 253 | q43_7_esc = 254) & 
(q43_8_prof_original = 238).
RECODE q43_8_prof (238=SYSMIS).
END IF.

EXECUTE.


