# readr
data <- readr::read_csv("./candidatures-2026-10-19.csv")

# utils
head(data)

# dplyr
dplyr::select(data, 1:3)

# dplyr
dplyr::filter(data, une_colonne > 10)

# dplyr
dplyr::mutate(data, nouvelle_colonne = une_colonne * 2)

# ggplot2
ggplot2::ggplot(
  data,
  ggplot2::aes(x = une_variable, y = autre_variable)
) +
  ggplot2::geom_point()