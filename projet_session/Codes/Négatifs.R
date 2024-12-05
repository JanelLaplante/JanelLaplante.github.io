rm(list = ls())
data_negative <- data.frame(
  Categorie = c("Impacts au travail", "Impacts externes", "Aspect social", "Santé mentale"),
  Negatif = c(14, 8, 5, 7)
)  
print(data_negative)
str(data_negative)
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
ggplot(data_negative, aes(x = Categorie, y = Negatif, fill = Categorie)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_minimal() +
  labs(
    title = "Nombre d'articles négatifs recensés par catégorie",
    x = "Catégorie",
    y = "Nombre d'articles"
  ) +
  scale_fill_brewer(palette = "Set1")  # Palette de couleurs
