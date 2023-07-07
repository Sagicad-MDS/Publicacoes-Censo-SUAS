


VARIABLE LABELS
v10716'Nome Completo'
v10718'Data de nascimento'
v10719'SEXO'
v10720'Número do CPF'
v10721'Dados do RG - Número'
v10722'Dados do RG - Órgão Emissor'
v10723'Dados do RG -UF'
v10724'Escolaridade'
v10726'Profissão'
v10727'Vínculo'
v10729'Função'
v10730'Carga horária SEMANAL'
v10731'Início do exercício da função'
.
EXECUTE.




VALUE LABELS
/v10719
2    "M"
1    "F"
/v10724
251    "Sem Escolaridade"
252    "Fundamental Incompleto"
253    "Fundamental Completo"
254    "Médio Incompleto"
255    "Médio Completo"
256    "Superior Incompleto"
257    "Superior Completo"
258    "Especialização"
260    "Mestrado"
261    "Doutorado"
/v10726
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
/v10727
292    "Comissionado"
138    "Servidor Estatutário"
266    "Servidor Temporário"
139    "Empregado Público Celetista - CLT"
361    "Empregado Público Celetista - CLT"
362    "Empregado Celetista do Setor Privado"
293    "Terceirizado"
142    "Outro vínculo não permanente"
265    "Voluntário"
/v10729
21    "Coordenador(a)"
217    "Educador(a) Social"
216    "Apoio Administrativo"
253    "Estagiário(a)"
220    "Serviços Gerais"
218    "Técnico(a) de nível superior"
254    "Outros"
/v10730
262    "Menor que 20 horas semanais"
272    "20 horas semanais"
18    "30 horas semanais"
20    "40 horas semanais"
263    "Maior que 40 horas semanais"
.
EXECUTE.


FILTER OFF.
USE ALL.
SELECT IF (v10719 = 1 | v10719 = 2).
EXECUTE.