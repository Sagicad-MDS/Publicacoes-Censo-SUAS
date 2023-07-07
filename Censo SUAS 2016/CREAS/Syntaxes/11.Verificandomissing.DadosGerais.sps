* Encoding: UTF-8.
****Verificando questões onde há missing indevidos.
A syntax abaixo realiza a soma, que deveria ser automática, do total de atos infracionais cometidos por adolescentes. 

****Criando nova variável que informe o total de furtos cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.1.5NOVA=q23.1.1 + q23.1.2 + q23.1.3 + q23.1.4.
EXECUTE.

****Criando nova variável que informe o total de roubos cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.2.5NOVA=q23.2.1 + q23.2.2 + q23.2.3 + q23.2.4.
EXECUTE.

****Criando nova variável que informe o total de tráficos cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.3.5NOVA=q23.3.1 + q23.3.2 + q23.3.3 + q23.3.4.
EXECUTE.

****Criando nova variável que informe o total de agressão cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.4.5NOVA=q23.4.1 + q23.4.2 + q23.4.3 + q23.4.4.
EXECUTE.

****Criando nova variável que informe o total de homicídio cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.5.5NOVA=q23.5.1 + q23.5.2 + q23.5.3 + q23.5.4.
EXECUTE.

****Criando nova variável que informe o total de tentativa de homicídio cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.6.5NOVA=q23.6.1 + q23.1.2 + q23.6.3 + q23.6.4.
EXECUTE.

****Criando nova variável que informe o total de dano ao patrimônio cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.7.5NOVA=q23.7.1 + q23.7.2 + q23.7.3 + q23.7.4.
EXECUTE.

****Criando nova variável que informe o total de crime de transito cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.8.5NOVA=q23.8.1 + q23.8.2 + q23.8.3 + q23.8.4.
EXECUTE.

****Criando nova variável que informe o total de porte/uso drogas cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.9.5NOVA=q23.9.1 + q23.9.2 + q23.9.3 + q23.9.4.
EXECUTE.

****Criando nova variável que informe o total de lesão corporal cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.10.5NOVA=q23.10.1 + q23.10.2 + q23.10.3 + q23.10.4.
EXECUTE.


****Criando nova variável que informe o total de "outros" cometidos por adolescentes de todas faixas etárias.  

COMPUTE q23.11.5NOVA=q23.11.1 + q23.11.2 + q23.11.3 + q23.11.4.
EXECUTE.

*******Criando nova variável que informa o total de infranções cometidas por jovens de 12 a 13 anos

COMPUTE q23.12.1NOVA=q23.1.1 + q23.2.1 + q23.3.1 + q23.4.1 + q23.5.1 + q23.6.1 + q23.7.1 + q23.8.1 
    + q23.9.1 + q23.10.1 + q23.11.1.
EXECUTE.

*******Criando nova variável que informa o total de infranções cometidas por jovens de 14 a 15 anos

COMPUTE q23.12.2NOVA=q23.1.2 + q23.2.2 + q23.3.2 + q23.4.2 + q23.5.2 + q23.6.2 + q23.7.2 + q23.8.2 
    + q23.9.2 + q23.10.2 + q23.11.2 .
EXECUTE.


*******Criando nova variável que informa o total de infranções cometidas por jovens de 16 a 17 anos

COMPUTE q23.12.3NOVA=q23.1.3 + q23.2.3 + q23.3.3 + q23.4.3 + q23.5.3 + q23.6.3 + q23.7.3 + q23.8.3 
    + q23.9.3 + q23.10.3+ q23.11.3 .
EXECUTE.


*******Criando nova variável que informa o total de infranções cometidas por jovens de 18 a 21 anos

COMPUTE q23.12.4NOVA=q23.1.4 + q23.2.4 + q23.3.4 + q23.4.4 + q23.5.4 + q23.6.4 + q23.7.4 + q23.8.4 
    + q23.9.4 + q23.10.4  + q23.11.4.
EXECUTE.

**********Criando a variável "total - total" de todas as faixas etárias

COMPUTE q23.12.5NOVA=q23.12.1NOVA + q23.12.2NOVA + q23.12.3NOVA + q23.12.4NOVA.
EXECUTE.

****Renomeando as variáveis originais de totais como "velhas"

RENAME VARIABLES	
q23.1.5 = q23.1.5VELHA 
q23.2.5 = q23.2.5VELHA
q23.3.5 = q23.3.5VELHA
q23.4.5 = q23.4.5VELHA
q23.5.5 = q23.5.5VELHA
q23.6.5 = q23.6.5VELHA
q23.7.5 = q23.7.5VELHA
q23.8.5 = q23.8.5VELHA
q23.9.5 = q23.9.5VELHA
q23.10.5 = q23.10.5VELHA
q23.11.5 = q23.11.5VELHA
q23.12.1 = q23.12.1VELHA
q23.12.2 = q23.12.2VELHA
q23.12.3 = q23.12.3VELHA
q23.12.4 = q23.12.4VELHA
q23.12.5 = q23.12.5VELHA.

*****Renomeando as variáveis "novas" com os nomes das originais

RENAME VARIABLES
q23.1.5NOVA  = q23.1.5
q23.2.5NOVA = q23.2.5
q23.3.5NOVA = q23.3.5
q23.4.5NOVA = q23.4.5
q23.5.5NOVA = q23.5.5
q23.6.5NOVA = q23.6.5
q23.7.5NOVA = q23.7.5
q23.8.5NOVA = q23.8.5
q23.9.5NOVA = q23.9.5
q23.10.5NOVA = q23.10.5
q23.11.5NOVA = q23.11.5
q23.12.1NOVA = q23.12.1
q23.12.2NOVA = q23.12.2
q23.12.3NOVA = q23.12.3
q23.12.4NOVA = q23.12.4
q23.12.5NOVA = q23.12.5.





