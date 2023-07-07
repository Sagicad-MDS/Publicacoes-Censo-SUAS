* Encoding: UTF-8.
**********************************************************************************************************************************************************************************************************
******RODAR ESSA SYNTAX NA BASE DO RH PARA LIMPAR ESCOLARIDADE E PROFISSÃO INCOMPATÍVEIS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
***********************************************************************************************************************************************************************************************************

**********************************Limpeza da incompatibilidade das q40_8 e q40_9  ****************************************
*As variáveis q23_9 e q23_10 expressam escolaridade e profissão dos trabalhadores, porém existem inconsistências.
*Em alguns casos a escolaridade está acima da profissão, e em outros a profissão acima da escolaridade.
*Em ambos os casos a escolaridade indicada prevalece. A syntax abaixo converte os valores de profissão incompatíveis em MISSING.
****************************************************************************************************************


*** BACKUP Var q23_10 Original (Profissão)

COMPUTE q23_10_original = q23_10.
VARIABLE LABELS q23_10_original 'Original - q23_10_Profissão'.
VALUE LABELS 
/q23_10_original
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
239    "Sem formação profissional".
EXECUTE.


***** LIMPEZA DE q23_10 SE AS RESPOSTAS FOREM INCOMPATÍVEIS *****

DO IF (q23_9 = 257 | q23_9 = 258 | q23_9 = 260 | q23_9 = 261) & 
(q23_10_original = 238 | q23_10_original = 239 ).
RECODE q23_10 (238=SYSMIS) (239=SYSMIS).
END IF.

DO IF (q23_9 = 251 | q23_9 = 252 | q23_9 = 253 | q23_9 = 254 | q23_9 = 255  | q23_9 = 256) & 
(q23_10_original = 273 | q23_10_original = 274 | q23_10_original = 275 | q23_10_original = 232 |
q23_10_original = 235 | q23_10_original = 234 | q23_10_original = 276 | q23_10_original = 278 | 
q23_10_original = 283 | q23_10_original = 279 | q23_10_original = 282 | q23_10_original = 233 |
q23_10_original = 236 | q23_10_original = 281 | q23_10_original = 240 | q23_10_original = 241 |
q23_10_original = 237).
RECODE q23_10 (ELSE=SYSMIS).
END IF.

DO IF (q23_9 = 251 | q23_9 = 252 | q23_9 = 253 | q23_9 = 254) & 
(q23_10_original = 238).
RECODE q23_10 (238=SYSMIS).
END IF.

EXECUTE.


