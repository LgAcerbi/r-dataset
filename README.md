### Objetivo
O código abaixo extrai os filmes com maiores "scores" de cada país, presentes no dataset do IMDB.

### Código

```r 
> library(data.table)                                         #Importação da biblioteca "data.table" para utilizar no script

> movies = read.csv("path/movies.csv")                        #Importação do dataset passando o caminho do arquivo

> data <- movies[,c("country","movie_title", "imdb_score")]   #Seleciona as colunas que serão analisadas

> setDT(data)[, .SD[which.max(imdb_score)], by=country]       #Lista por país, os filmes com os maiores scores no dataset
```

### Resultado

![Print do resultado](https://github.com/LgAcerbi/r-dataset/blob/main/sc_1.png?raw=true)

