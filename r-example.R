#install.packages("data.table")
library(data.table)

movies <- read.csv("C:/Users/Guilherme/Desktop/movies.csv")

data <- movies[,c("country","movie_title", "imdb_score")]

setDT(data)[, .SD[which.max(imdb_score)], by=country]


