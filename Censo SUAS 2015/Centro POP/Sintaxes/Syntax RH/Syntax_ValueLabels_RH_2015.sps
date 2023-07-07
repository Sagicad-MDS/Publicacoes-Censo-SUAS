
************************************************************************************************************************

*VALUE LABELS RH - SYNTAX

************************************************************************************************************************

VALUE LABELS
/v10248
1    "F"
2    "M"
/v10252
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
/v10253
273    "Assistente Social"
274    "Psicólogo"
275    "Pedagogo"
232    "Advogado"
235    "Administrador"
234    "Antropologo"
276    "Sociologo"
278    "Fisioterapeuta"
283    "Cientista político"
279    "Nutricionista"
282    "Médico"
233    "Terapeuta Ocupacional"
236    "Economista"
281    "Enfermeiro"
240    "Analista de sistema"
241    "Programador"
237    "Outra formação de nível superior"
238    "Profissional de nível médio"
239    "Sem formação profissional"
/v10254
292    "Comissionado"
139    "Empregado Público (CLT)"
142    "Outro vínculo não permanente"
266    "Servidor Temporário"
138    "Servidor Estatutário"
293    "Terceirizado"
264    "Trabalhador de Empresa/Cooperativa/Entidade Prestadora de Serviços"
265    "Voluntário"
291    "Sem Vínculo"
/v10255
251    "Apoio administrativo"
21    "Coordenador(a)"
248    "Educador(a) Social"
253    "Estagiário(a)"
252    "Serviços Gerais (limpeza, conservação, motoristas, etc)"
250    "Técnico(a) de nível médio"
249    "Técnico de nível superior"
370    "Cadastrador(a)"
254    "Outros"
/v10256
262    "Menor que 20 horas semanais"
272    "20 horas semanais"
18    "30 horas semanais"
20    "40 horas semanais"
263    "Maior que 40 horas semanais"
/v10258
1    "Atividades de gestão (administrativo)"
2    "Serviço Especializado para Pessoas em Situação de Rua"
3    "Serviço de Abordagem Social"
4    "Cadastramento e/ou Revisão/Atualização Cadastral (CadÚnico)"
99    "Outros"
/v10259
1    "Atividades de gestão (administrativo)"
2    "Serviço Especializado para Pessoas em Situação de Rua"
3    "Serviço de Abordagem Social"
4    "Cadastramento e/ou Revisão/Atualização Cadastral (CadÚnico)"
99    "Outros"
/v10260
1    "Atividades de gestão (administrativo)"
2    "Serviço Especializado para Pessoas em Situação de Rua"
3    "Serviço de Abordagem Social"
4    "Cadastramento e/ou Revisão/Atualização Cadastral (CadÚnico)"
99    "Outros"

*******A variável v10255  Função no Centro POP apresentou 164 casos com o código da função errado. 
******O código exibido era o número que constava no questionário (1- Apoio Administrativo 2 - Coordenador(a) 3 - Educador (a) Social e assim por diante) e não o código correto.
**** Segue o complemento da Syntax para a variável *************

execute.
