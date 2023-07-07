* Encoding: windows-1252.

******* RODAR PRIMEIRO AS TABELAS DE DG COM A SINTAXE DE DG *******




******************************* RECURSOS HUMANOS ********************************

**********************************************************************************************
**********************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO RH ***************
**********************************************************************************************
**********************************************************************************************

FREQUENCIES VARIABLES=
d35_idade_categoria
q35_sexo
q35_esc
d35_esc
q35_prof
    /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=
d35_pedagogo
d35_ass_social
d35_antropologo
d35_advogado
d35_psicologo
 DISPLAY=LABEL
  /TABLE 
d35_pedagogo [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d35_ass_social [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d35_antropologo [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d35_advogado [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d35_psicologo [C][COUNT F40.0][ROWPCT.TOTALN F40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=d35_pedagogo [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d35_ass_social [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d35_antropologo [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d35_advogado [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d35_psicologo [1] EMPTY=INCLUDE
  /TITLES TITLE="d35_profissão - Quantidade de Trabalhadores das Profissões Principais".



FREQUENCIES VARIABLES=
q35_vinc
q35_func
q35_carga_horaria
    /ORDER=ANALYSIS.




************** RETORNAR PARA A SINTAXE DE TABELAS DE DADOS GERAIS ***************
********** CONTINUAR AS TABELAS FINAIS DE RH NA BASE DE DADOS GERAIS **********
