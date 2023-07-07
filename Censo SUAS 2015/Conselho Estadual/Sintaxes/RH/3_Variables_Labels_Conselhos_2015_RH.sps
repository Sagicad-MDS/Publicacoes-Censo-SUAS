*****************************************************************************
**** Syntax Censo SUAS - RH ******Conselho Municipal 2015******
*Variables Labels*Value Labels*
*****************************************************************************


VARIABLE LABELS 
codigo_ibge 'codigo_ibge'
v10899'Nome'
v10900'Data de nascimento'
v10901'Sexo'
v10902'Escolaridade'
v10903'Representação'
v10904'Função:'
v10905'Vínculo'
v10906'Data de Início do mandato'
v10907'Data de término do mandato'
v10908'CPF'
.
execute.


VALUE LABELS
/v10901
1"F"
2"M"
/v10902
1"Sem Escolaridade"
2"Fundamental Incompleto"
3"Fundamental Completo"
4"Médio Incompleto"
5"Médio Completo"
6"Superior Incompleto"
7"Superior Completo"
8"Especialização"
9"Mestrado"
10"Doutorado"
/v10903
1"Governamental - Assistência Social"
2"Governamental – Educação"
3"Governamental – Saúde"
4"Governamental – Outras áreas"
5"Sociedade Cívil - das entidade e Organizações de Ass. Social"
6"Sociedade Cívil - organizações de usuários"
7"Sociedade Cívil - organizações dos trabalhadores"
8"Sociedade Cívil - dos usuários"
/v10904
00"Outros"
01'Conselheiro(a) Presidente'
02"Vice-Presidente"
03"Conselheiro Titular"
04"Conselheiro Suplente"
05'Coordenador(a)'
06"Apoio Administrativo"
07"Educador Social"
08"Estagiário(a)"
09"Secretário Executivo"
10"Serviços Gerais"
11"Técnico(a) Nível Médio"
12"Técnico(a) Nível Superior"
/v10905
1"Sem vínculo"
2"Comissionado"
3"Servidor/Estatutário"
4"Servidor Temporário"
5"Empregado Público Celetista – CLT"
6"Terceirizado"
7"Outro vínculo não permanente"
8"Trabalhador de empresa/Cooperativa/Entidade Prestadora de Serviço"
9"Voluntario"
.
EXECUTE.

