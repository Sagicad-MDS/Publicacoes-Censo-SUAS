library("rmarkdown")
library("tinytex")
# Substituído o conjunto de pacotes tidyverse pelos pacotes separadamente porque não funciona o carregamento do tidyverse no R do Ministério
#library("tidyverse")
library("dplyr")
library("purrr")
library("tidyr")
library("readr")
library("stringr")
library("forcats")
library("readxl")
library("janitor")
library("repmis")
library("ggrepel")
library("renv")
library("readODS")
library("prismatic")
library("scales")

gera.graficos.office = FALSE;
if(gera.graficos.office) {
  library("export")
  arquivo_graficos = "Censo-SUAS-2023-graficos"
  arquivo_graficos_criado = FALSE
}


