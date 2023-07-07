* Encoding: UTF-8.

****Criando a variável identificadora dos questionários incompletos
É incorporado ao banco do CensoSuas os questionários, que embora não finalizados, obtiveram acima de 90% de preenchimento. No banco, tais questionários são identificados pela variável "incomplet" 


RECODE id_creas 
(13301900511=1) 
(12703103408=1) 
(12602202933=1) 
(12103400197=1) 
(52047096668=1) 
(29232093688=1)
(12503200432=1)
(14114302935=1) 
(26022093946=1) 
(12302200352=1) 
(11600152463=1) 
 (12411050561=1)
(27046093976=1) INTO incomplet.
VARIABLE LABELS  incomplet 'Questionários incompletos acima de 90% de preenchimento'.
EXECUTE.

VALUE LABELS incomplet
1 = incompletos
.



