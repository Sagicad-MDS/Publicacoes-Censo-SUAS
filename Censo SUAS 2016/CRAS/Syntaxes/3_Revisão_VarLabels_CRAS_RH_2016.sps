VARIABLE LABELS
CD_IBGE'Código IBGE do Município'
NºIDENTIFICADOR'Número Identificador da Unidade'
q43_1_nome'q43_1_Nome Completo'
co_seq_dirigente'co_seq_dirigente_Código do Dirigente'
q43_2_dtnasc'q43_2_Data de nascimento'
q43_3_sexo'q43_3_Sexo'
q43_4_cpf'q43_4_Número do CPF'
q43_5_1_rg_num'q43_5_1_RG - Número'
q43_5_2_rg_órgão'q43_5_2_RG - Órgão Emissor'
q43_5_3_rg_uf'q43_5_3_RG - UF'
q43_6_email'q43_6_Email'
q43_7_esc'q43_7_Escolaridade'
q43_8_prof'q43_8_Profissão'
q43_9_vinc'q43_9_Vínculo'
q43_10_função'q43_10_Função'
q43_11'q43_11_Carga horária SEMANAL'
q43_12'q43_12_Início do exercício da função'
q43_13_1'q43_13_1_Serviços/Atividade a qual o profissional está vinculado - Principal serviço/atividade'
q43_13_2'q43_13_2_Serviços/Atividade a qual o profissional está vinculado - Segundo principal serviço/atividade'
q43_13_3'q43_13_3_Serviços/Atividade a qual o profissional está vinculado - Terceiro principal serviço/atividade'
.
EXECUTE.


VALUE LABELS
/q43_3_sexo
1    "Feminino"
2    "Masculino"
/q43_7_esc
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
/q43_8_prof
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
/q43_9_vinc
292    "Comissionado"
139    "Empregado Público (CLT)"
142    "Outro vínculo não permanente"
266    "Servidor Temporário"
138    "Servidor Estatutário"
293    "Terceirizado"
264    "Trabalhador de Empresa/Cooperativa/Entidade Prestadora de Serviços"
265    "Voluntário"
291    "Sem Vínculo"
/q43_10_função
1    "Apoio Administrativo"
2    "Coordenador(a)"
3    "Educador(a) Social"
4    "Estagiário(a)"
5    "Serviços Gerais"
6    "Cadastrador(a)"
7    "Técnico(a) de Nível Superior"
8    "Técnico(a) de Nível Médio"
99    "Outros"
/q43_11
262    "Menor que 20 horas semanais"
272    "20 horas semanais"
18    "30 horas semanais"
20    "40 horas semanais"
263    "Maior que 40 horas semanais"
/q43_13_1
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Integral à Família (PAIF)"
3    "Serviço de Convivência e Fortalecimento de Vínculos"
4    "Cadastramento e/ou Atualização Cadastral (CadÚnico)"
99    "Outros"
/q43_13_2
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Integral à Família (PAIF)"
3    "Serviço de Convivência e Fortalecimento de Vínculos"
4    "Cadastramento e/ou Atualização Cadastral (CadÚnico)"
99    "Outros"
/q43_13_3
1    "Atividades de gestão (administrativo)"
2    "Serviço de Proteção e Atendimento Integral à Família (PAIF)"
3    "Serviço de Convivência e Fortalecimento de Vínculos"
4    "Cadastramento e/ou Atualização Cadastral (CadÚnico)"
99    "Outros".
EXECUTE.
