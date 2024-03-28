Sys.setlocale("LC_ALL","Portuguese_Brazil.utf8")

lista.de.pacotes = c("tinytex","tidyr", "purrr", "dplyr",
                     "lubridate","janitor","readxl","stringr",
                     "repmis","survey","srvyr","scales",
                     "ggrepel","renv","knitr") # escreva a lista de pacotes

novos.pacotes <- lista.de.pacotes[!(lista.de.pacotes %in%
                                      installed.packages()[,"Package"])]

if(length(novos.pacotes) > 0) {install.packages(novos.pacotes, repos = "http://cran.us.r-project.org")}
lapply(lista.de.pacotes, require, character.only=T)
rm(lista.de.pacotes,novos.pacotes)

setwd("C:/Users/vclet/OneDrive/Documentos/Trabalho/Publicacoes-Censo-SUAS/Publicação 2022")

dados_municipios <- read_excel("../RELATORIO_DTB_BRASIL_MUNICIPIO.xls", skip = 6) %>%
                      mutate(`Código Município` = substr(`Código Município Completo`,1,6))

render_one <- function(municipio) {
  nome_municipio <- dados_municipios$Nome_Município[dados_municipios$`Código Município`==municipio]
  uf_municipio <- dados_municipios$Nome_UF[dados_municipios$`Código Município`==municipio]
  # assuming the output format of input.Rmd is PDF
  rmarkdown::render(
    input='Relatório Municipal.Rmd',
#   output_dir = paste0('Relatorios Municipais 2022'),
    output_file = paste0('Relatório Indicadores 2022 - ', uf_municipio, '-', nome_municipio, '.pdf'),
    params = list(municipio = municipio, pacotes_carregados = TRUE)
  )
#  xfun::Rscript_call(
#    rmarkdown::render,
#    list(
#      input='Relatório Municipal.Rmd',
#      output_dir = paste0('Relatorios Municipais 2022'),
#      output_file = paste0('Relatório Indicadores 2022 - ', uf_municipio, '-', nome_municipio, '.pdf'),
#      params = list(municipio = municipio)
#    )
#  )
}

for (municipio in dados_municipios$`Código Município`) {
  render_one(municipio)
}
