library(readxl)
library(dplyr)
library(ggplot2)
library(GGally)
library(Hmisc)
library(corrplot)
library(PerformanceAnalytics)
library(knitr)

cor(x, method = c("pearson", use = "complete.obs"))

my_data = data
kable(head(my_data,6), align = "l")

rownames(datos) <- datos$Fincas
dat <- datos[,2:15]

res <- cor(dat)
round(res, 2)
cor(dat, use = "complete.obs")
rcorr(as.matrix(dat))

correlacion<-round(cor(dat), 1)

corrplot(correlacion, method="number", type="upper")

