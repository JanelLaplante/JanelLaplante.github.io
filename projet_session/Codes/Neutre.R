
library(ggplot2)
data_neutral <- data.frame(
  Categorie = c("Impacts au travail", "Impacts externes", "Aspect social", "Santé mentale"),
  Neutre = c(2, 7, 1, 0)
)
print(data_neutral)  # Afficher les données
str(data_neutral)
ggplot(data_neutral, aes(x = Categorie, y = Neutre, fill = Categorie)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_minimal() +
  labs(
    title = "Nombre d'articles neutres recensés par catégorie",
    x = "Catégorie",
    y = "Nombre d'articles"
  ) +
  scale_fill_brewer(palette = "Set2")
