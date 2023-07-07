* Encoding: windows-1252.

******* RODAR PRIMEIRO AS TABELAS DE DG COM A SINTAXE DE DG *******




******************************* RECURSOS HUMANOS ********************************

**********************************************************************************************
**********************************************************************************************
************ TABELAS PARA SEREM RODADAS NA BASE DO RH ***************
**********************************************************************************************
**********************************************************************************************

FREQUENCIES VARIABLES=
d31_idade_categoria
q31_sexo
q31_esc
d31_esc
q31_prof
    /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=
d31_pedagogo
d31_ass_social
d31_antropologo
d31_advogado
d31_psicologo
 DISPLAY=LABEL
  /TABLE 
d31_pedagogo [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d31_ass_social [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d31_antropologo [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d31_advogado [C][COUNT F40.0][ROWPCT.TOTALN F40.1] + 
d31_psicologo [C][COUNT F40.0][ROWPCT.TOTALN F40.1]
  /CLABELS ROWLABELS=OPPOSITE
  /CATEGORIES VARIABLES=d31_pedagogo [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d31_ass_social [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d31_antropologo [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d31_advogado [1] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=d31_psicologo [1] EMPTY=INCLUDE
  /TITLES TITLE="d31_profissão - Quantidade de Trabalhadores das Profissões Principais".



FREQUENCIES VARIABLES=
q31_vinc
q31_func
q31_carga_horaria
    /ORDER=ANALYSIS.




************** RETORNAR PARA A SINTAXE DE TABELAS DE DADOS GERAIS ***************
********** CONTINUAR AS TABELAS FINAIS DE RH NA BASE DE DADOS GERAIS **********
