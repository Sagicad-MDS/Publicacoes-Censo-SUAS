setwd("/home/valdio/Publicacoes-Censo-SUAS/Relatórios de Indicadores Municipais 2023")

dados_municipios <- read_excel("../RELATORIO_DTB_BRASIL_MUNICIPIO.xls", skip = 6) %>%
                      mutate(`Código Município` = substr(`Código Município Completo`,1,6))

render_one <- function(municipio) {
  nome_municipio <- dados_municipios$Nome_Município[dados_municipios$`Código Município`==municipio]
  uf_municipio <- dados_municipios$Nome_UF[dados_municipios$`Código Município`==municipio]
  quarto::quarto_render(
    input='Relatório Municipal 2023.qmd',
    output_file = paste0('Relatório Indicadores 2023 - ', uf_municipio, '-', nome_municipio, '.html'),
    execute_params = list(municipio = municipio, pacotes_carregados = TRUE)
  )
}

for (municipio in dados_municipios$`Código Município`) {
  render_one(municipio)
}

