if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
data <- data.frame(
  Opinion = c("Négatif", "Positif", "Neutre"),  # Les catégories d'opinion
  Count = c(20, 10, 10)  # Nombre d'articles pour chaque opinion
)
ggplot(data, aes(x = "", y = Count, fill = Opinion)) +
  geom_bar(stat = "identity", width = 1) +  # Créer un diagramme en barres
  coord_polar(theta = "y") +  # Convertir en diagramme circulaire
  labs(title = "Position des articles face à l'impact du télétravail sur les salariés") +
  theme_void() +  # Supprimer les axes
  theme(legend.title = element_blank())  # Supprimer le titre de la légende
