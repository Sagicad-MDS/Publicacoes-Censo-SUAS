* Encoding: windows-1252.

RENAME VARIABLES		
id_acolhimento	=	NU_IDENTIFICADOR
codigo_ibge	=	IBGE
v11102	=	q51_1
v11103	=	q51_2
v11104	=	q51_3
v11105	=	q51_4
v11997	=	q51_5
v11106	=	q51_6
v11107	=	q51_7
v11108	=	q51_8
v11110	=	q51_9
v11111	=	q51_10
v11112	=	q51_11
v11113	=	q51_12
v11114	=	q51_13
v11115	=	q51_14.
execute. 


VARIABLE LABELS
NU_IDENTIFICADOR'NU_IDENTIFICADOR_id_acolhimento_NU_IDENTIFICADOR'
IBGE'IBGE_codigo_ibge_IBGE'
q51_1 'q51_1_v11102_51.1. Nome Completo'
q51_2 'q51_2_v11103_51.2. Data de nascimento'
q51_3 'q51_3_v11104_51.3. SEXO'
q51_4 'q51_4_v11105_51.4. CPF'
q51_5 'q51_5_v11997_51.5. E-mail'
q51_6 'q51_6_v11106_51.6. RG – Número'
q51_7 'q51_7_v11107_51.7. RG – Órgão Emissor'
q51_8 'q51_8_v11108_51.8. RG – UF'
q51_9 'q51_9_v11110_51.9. Escolaridade'
q51_10 'q51_10_v11111_51.10. Profissão'
q51_11 'q51_11_v11112_51.11. Vínculo'
q51_12 'q51_12_v11113_51.12. Função'
q51_13 'q51_13_v11114_51.13. Carga horária'
q51_14 'q51_14_v11115_51.14. Inicio do exercício da função'.
execute.



VALUE LABELS
/q51_3
1' MASCULINO'
2' FEMININO'
/q51_9
251' Sem Escolaridade'
252' Fundamental Incompleto'
253' Fundamental Completo'
254' Médio Incompleto'
255' Médio Completo'
256' Superior Incompleto'
257' Superior Completo'
258' Especialização'
260' Mestrado'
261' Doutorado'
/q51_10
273' Assistente Social'
274' Psicóloga(o)'
275' Pedagoga(o)'
232' Advogada(o)'
235' Administrador(a)'
234' Antropóloga(o)'
276' Socióloga(o)'
278' Fisioterapeuta'
283' Cientista Política(o)'
279' Nutricionista'
282' Médica(o)'
233' Terapeuta Ocupacional'
236' Economista'
281' Enfermeira(o)'
240' Analista de Sistemas'
241' Programador(a)'
237' Outra formação de nível superior'
238' Profissional de nível médio'
239' Sem formação profissional'
419' Profissional de educação física'
416' Contador'
417' Geógrafo'
371' Economista Doméstico'
420' Administração Pública/Gestão Pública'
/q51_11
362' Empregada(o) Celetista do Setor Privado'
293' Terceirizada(o)'
142' Outro vínculo não permanente'
264' Trabalhador(a) de empresa/cooperativa/entidade prestadora de serviço'
265' Voluntária(o)'
291' Sem vínculo'
138' Servidor(a)/Estatutário(a)'
266' Servidor(a) Temporário(a)'
139' Empregada(o) Pública(o) Celetista'
292' Comissionado'
/q51_12
21' Coordenador(a)'
218' Técnico(a) de Nível Superior'
250' Técnico(a) de Nível Médio'
349' Cuidador(a)'
368' Auxiliar de Cuidador(a)'
216' Apoio Administrativo'
350' Cuidador(a) Residente'
372' Motorista'
371' Cozinheiro(a)'
408' Segurança'
220' Serviços Gerais'
253' Estagiário(a)'
217' Educador(a)/Orientador(a) Social'
254' Outros'
388' Família Acolhedora'
/q51_13
262' Até 10 horas semanais'
272' De 11 a 20 horas semanais'
18' De 21 a 30 horas semanais'
20' De 31 a 40 horas semanais'
263' De 41 a 44 horas semanais'
391' Mais de 44 horas semanais'.
execute.


