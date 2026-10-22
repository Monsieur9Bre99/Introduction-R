# Introduction à R et RStudio

Ce dépôt présente les bases de l'utilisation de R et RStudio pour l'analyse de données.

## Prérequis

- Installer R : https://cran.r-project.org/
- Installer RStudio : https://posit.co/download/rstudio-desktop/
- Installer Rtools : https://cran.rstudio.com/bin/windows/Rtools/rtools45/rtools.html

## Installation des packages

```r
install.packages("readr")
install.packages("dplyr")
install.packages("ggplot2")

Importer un fichier CSV
# readr : importation des données
data <- readr::read_csv("./candidatures-2026-10-19.csv")

Afficher les premières lignes
# utils : aperçu des données
head(data)

Sélectionner des colonnes
# dplyr : sélection de colonnes
dplyr::select(data, 1:3)

Filtrer des lignes
# dplyr : filtrage
dplyr::filter(data, une_colonne > 10)

Créer ou modifier une colonne
# dplyr : transformation
dplyr::mutate(
  data,
  nouvelle_colonne = une_colonne * 2
)

Créer un graphique
# ggplot2 : nuage de points
ggplot2::ggplot(
  data,
  ggplot2::aes(
    x = une_variable,
    y = autre_variable
  )
) +
  ggplot2::geom_point()
  
```