#Instalem BiocManager i SummarizedExperiment
if (!require("BiocManager", quietly = TRUE))
  +    install.packages("BiocManager")
BiocManager::install(version = "3.18")
BiocManager::install("SummarizedExperiment")
library(SummarizedExperiment)
#Carreguem el dataset 'GastricCancer_NMR'i treballem amb el document
library(readxl)
GastricCancer_NMR <- read_excel("C:/Users/laura/OneDrive/Escriptori/GastricCancer_NMR.xlsx")
View(GastricCancer_NMR)
colnames(GastricCancer_NMR)#visualitzem el nom de les columnes
head(GastricCancer_NMR) # mostrem les primeres files
summary(GastricCancer_NMR[, c("M1", "M2", "M3", "M4", "M5")]) #generem estadistiques resum de les primeres columnes
str(GastricCancer_NMR) #classe de dades en cada columna