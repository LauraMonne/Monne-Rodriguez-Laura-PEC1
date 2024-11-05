# Metadades del Dataset `GastricCancer_NMR.xlsx`

 Dades i metadades del dataset utilitzat GastricCancer_NMR. El fitxer conté dues fulles, `Data` i `Peak`, amb informació rellevant sobre les mostres i els metabolits analitzats.

 ---

 ## Fulla 1: Data

 ### Descripció
 Conté informació sobre 140 mostres, incloent-hi dades de 149 metabolits. La informació general de cada mostra i la concentració de cada metabolit estan organitzades en les següents columnes:

 - **Idx**: Índex de la mostra.
 - **SampleID**: Identificador únic de cada mostra.
 - **SampleType**: Tipus de mostra.
 - **Class**: Categoria a la qual pertany la mostra (control, pacient, etc.).
 - **M1 - M149**: Concentracions dels metabolits, cadascun representat amb una columna específica.

 ### Tipus de Dades
 - `Idx`: Enter.
 - `SampleID`: Text.
 - `SampleType`: Text.
 - `Class`: Text.
 - `M1 - M149`: Nombre decimal (float).

 ---

 ## Fulla 2: Peak

 ### Descripció
 Metadades sobre els 149 metabolits inclosos a la fulla `Data`, amb les següents columnes:

 - **Idx**: Índex del metabolit.
 - **Name**: Nom químic del metabolit.
 - **Label**: Etiqueta associada al metabolit.
 - **Perc_missing**: Percentatge de valors absents per al metabolit.
 - **QC_RSD**: Desviació estàndard relativa en el control de qualitat, com a indicador de variabilitat.

 ### Tipus de Dades
 - `Idx`: Enter.
 - `Name`: Text.
 - `Label`: Text.
 - `Perc_missing`: Nombre decimal (float), indica el percentatge de dades absents.
 - `QC_RSD`: Nombre decimal (float), mesura la variabilitat de la concentració del metabolit en les mostres de control de qualitat.

 ---

