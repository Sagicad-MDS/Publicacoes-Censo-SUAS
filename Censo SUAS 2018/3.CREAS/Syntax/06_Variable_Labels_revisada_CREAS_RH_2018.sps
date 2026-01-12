***************************************************************************************************
                                         CENSO SUAS CREAS 2018
***************************************************************************************************
SyntaxVariable Labels
Esta Syntax atualiza os labels das variáveis

VARIABLE LABELS	
q56_1	'	q56_1	_	Nome Completo	'
co_seq_dirigente	'	co_seq_dirigente	_	Código do Dirigente	'
q56_2	'	q56_2	_	Data de Nascimento	'
q56_3	'	q56_3	_	Sexo	'
q56_4	'	q56_4	_	Número do CPF	'
q56_5_1	'	q56_5_1	_	RG - Número	'
q56_5_2	'	q56_5_2	_	RG - Órgão Emissor	'
q56_6	'	q56_6	_	Escolaridade	'
q56_7	'	q56_7	_	Profissão	'
q56_8	'	q56_8	_	Vínculo	'
q56_9	'	q56_9	_	Função	'
q56_10	'	q56_10	_	Carga horária SEMANAL	'
q56_11	'	q56_11	_	Início do exercício da função	'
q56_12_1	'	q56_12_1	_	Principal serviço/atividade	'
q56_12_2	'	q56_12_2	_	Segundo principal serviço/atividade	'
q56_12_3	'	q56_12_3	_	Terceiro principal serviço/atividade	'
.
execute.


VALUE LABELS
/q56_3
1    "F"
2    "M"
/q56_6
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
/q56_7
273    "Assistente Social"
274    "Psicóloga(o)"
275    "Pedagoga(o)"
232    "Advogada(o)"
235    "Administrador(a)"
234    "Antropóloga(o)"
276    "Socióloga(o)"
278    "Fisioterapeuta"
283    "Cientista Política(o)"
279    "Nutricionista"
282    "Médica(o)"
371    "Musicoterapeuta"
233    "Terapeuta Ocupacional"
236    "Economista"
372    "Economista Doméstica(o)"
281    "Enfermeira(o)"
240    "Analista de Sistema"
241    "Programador(a)"
237    "Outra(o) profissional de nível superior"
238    "Profissional de nível médio"
239    "Sem formação profissional"
/q56_8
292    "Comissionada(o)"
139    "Empregada(o) Pública(o) (CLT)"
142    "Outro vínculo não permanente"
266    "Servidor(a) Temporária(o)"
138    "Servidor(a)/Estatutário(a)"
293    "Terceirizada(o)"
264    "Trabalhador(a) de Empresa, Cooperativa ou Entidade Prestadora de Serviços"
265    "Voluntária(o)"
291    "Sem vínculo"
/q56_9
251    "Apoio Administrativo"
21    "Coordenador(a)"
248    "Educador(a) Social"
253    "Estagiário(a)"
252    "Serviços Gerais (limpeza, conservação, motoristas, etc.)"
250    "Técnico(a) de nível médio"
249    "Técnico(a) de nível superior"
254    "Outros"
/q56_10
262    "Até 10 horas semanais"
272    "De 11 a 20 horas semanais"
18    "De 21 a 30 horas semanais"
20    "De 31 a 40 horas semanais"
263    "De 41 a 44 horas semanais"
391    "Mais de 44 horas semanais"
/q56_12_1
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos"
3    "Serviço de Medida Socioeducativa (Liberdade Assistida ou Prestação de Serviço a Comunidade)"
4    "Serviço Especializado em Abordagem Social"
5    "Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos e suas Famílias"
6    "Concessão Benefícios Eventual"
7    "Cadastramento e/ou Atualização cadastral (Cadúnico)"
99    "Outros"
/q56_12_2
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos"
3    "Serviço de Medida Socioeducativa (Liberdade Assistida ou Prestação de Serviço a Comunidade)"
4    "Serviço de Abordagem Social"
5    "Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos e suas Famílias"
6    "Concessão Benefícios Eventual"
7    "Cadastramento e/ou Atualização cadastral (Cadúnico)"
99    "Outros"
/q56_12_3
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Especializado a Famílias e Indivíduos"
3    "Serviço de Medida Socioeducativa (Liberdade Assistida ou Prestação de Serviço a Comunidade)"
4    "Serviço Especializado em Abordagem Social"
5    "Serviço de Proteção Social Especial para Pessoas com Deficiência, Idosos e suas Famílias"
6    "Concessão Benefícios Eventual"
7    "Cadastramento e/ou Atualização cadastral (Cadúnico)"
99   "Outros"
.
execute.
