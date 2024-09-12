install.packages("readxl")
install.packages("corrplot")

library(readxl)
library(corrplot)

# Leer el archivo Excel (puedes especificar la hoja si hay varias)
datos <- read_excel("/dia/Predicción de producción lotes de banano 10-11-2023 (1).xlsx", sheet = 1)

cor_matrix <- cor(datos, use = "complete.obs")  # use = "complete.obs" ignora los valores NA
print(cor_matrix)





# Visualizar la matriz de correlación
corrplot(cor_matrix, method = "circle")
