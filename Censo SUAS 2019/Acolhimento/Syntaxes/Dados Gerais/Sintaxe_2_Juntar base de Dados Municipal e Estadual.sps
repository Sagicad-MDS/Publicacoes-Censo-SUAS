* Encoding: UTF-8.

 *** Colocar as variáveis Estaduais e Municipais no mesmo formato Name, Type, Width e Decimals

** Fazer o Data > Merge Files > Add Cases e incluir todas as variáveis na base final. 

DATASET ACTIVATE DataSet1.
ADD FILES /FILE=*
  /FILE='DataSet2'.
EXECUTE.

** Salvar como base de DADOS GERAIS - Acolhimento. 
