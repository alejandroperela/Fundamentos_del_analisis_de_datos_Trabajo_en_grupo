library(dplyr)
library(GGally)
library(VIM)

#folder = '/home/alejandro/Documents/Master Data Science/Curso/Fundamentos del análisis de datos/Trabajo grupo/data/bank-additional/bank-additional.csv'
data <- read.csv(file = '../data/bank-additional/bank-additional.csv', sep = ';')
head(data)


# Añadimos valores nulos a las variables numéricas, dado que no hay ningún nulo

colSums(is.na(data))
sapply(data, class)
na_numeric_columns <- c("age", "campaign", "pdays", "previous")
for (column in na_numeric_columns){
  ind <- sample.int(nrow(data), nrow(data) * 0.07)
  data[c(ind), column] <- NA
}

colSums(is.na(data))


# Cambiamos también los datos categóricos a NA, sustituyendo Unknown por valores nulos

data$job[data$job=='unknown'] <- NA
data$marital[data$marital=='unknown'] <- NA
data$education[data$education=='unknown'] <- NA
data$default[data$default=='unknown'] <- NA
data$housing[data$housing=='unknown'] <- NA
data$loan[data$loan=='unknown'] <- NA


aggr_plot <- aggr(data[,2:7], col=c('navyblue','red'), numbers=TRUE, sortVars=TRUE,
                  labels=names(data[,2:7]), cex.axis=.7, gap=3, 
                  ylab=c("Histogram of missing data","Pattern"))


# Separamos nuestros datos en Train y Test




margin.table(data, margin = 9)











