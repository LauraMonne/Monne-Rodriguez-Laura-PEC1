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
#Dividim les dades en assays i coldata
assays <- t(as.matrix(GastricCancer_NMR[, 5:ncol(GastricCancer_NMR)]))#creem la matriu
#transposada amb les columnes amb dades quantitatives; cada columna es una mostra
dim(assays) #comprovem les dimensions de la matriu
colnames(assays) <- GastricCancer_NMR$SampleID #assignem un nom (sampleID) a cada columna (monstra)
#creem un dataframe amb dades SampleID, SampleType i Class sobre les mostres
colData <- DataFrame(SampleID = GastricCancer_NMR$SampleID, SampleType = GastricCancer_NMR$SampleType, Class = GastricCancer_NMR$Class)
dim(colData) #comprovem les dimensions
