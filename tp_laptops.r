# install.packages('car')
# install.packages('ggplot2')
# install.packages('lm.beta')


library(car)
library(ggplot2)
library(lm.beta)
library("dplyr")

laptop <- read.table('laptops.csv', header = TRUE, sep=';')

# 4
View(laptop)
# les variables dans ce jeu de données
colnames(laptop)
# Price, Screen Size, RAM Memory, Hard drive, USB Ports, Brand, Weight

# Afficher les 6 premières lignes de l'objet "laptops"
head(laptop)

colnames(laptop) <- c("Prix", "Taille", "RAM", "Disque", "Ports", "Marque", "Poids")

# Afficher les mesures statistiques de base pour le dataset à l’aide de la commande summary
summary(laptop)

attach(laptop)
# Quel est le prix maximal et minimal d’un laptop en $
max(Prix)
min(Prix)
# Quel est le nombre minimal de ports qu’on peut trouver dans un laptop de
# l’échantillon étudié
min(Ports)

# Quelle est la taille moyenne d’un laptop
mean(Taille)
