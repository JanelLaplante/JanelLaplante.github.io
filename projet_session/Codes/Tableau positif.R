rm(list = ls())
data_positive <- data.frame(
  Categorie = c("Impacts au travail", "Impacts externes", "Aspect social", "Santé mentale"),
  Positif = c(0, 7, 1, 2)
)
print(data_positive)
str(data_positive)
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
ggplot(data_positive, aes(x = Categorie, y = Positif, fill = Categorie)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_minimal() +
  labs(
    title = "Nombre d'articles positifs recensés par catégorie",
    x = "Catégorie",
    y = "Nombre d'articles"
  ) +
  scale_fill_brewer(palette = "Set3")
