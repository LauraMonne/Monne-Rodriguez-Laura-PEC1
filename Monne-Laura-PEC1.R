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
#creem el SummarizedExperiment
se <- SummarizedExperiment(assays = list(counts = assays), colData = colData)
se #explorem el contingut de SummarizedExperiment
summary(se) #veiem un resum de SummarizedExperiment
head(colData(se)) #mostra les primeres files de les metadates
assays(se)$counts #visualitzem les dades quantitative de les mostres
colData(se) #mostrem les metadates
se [1:5, 1:3] #fem subconjunts bidimensionals p.e. 5 primeres files i 3 primeres columnes