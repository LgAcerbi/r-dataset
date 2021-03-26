### Objetivo
Exemplo do uso de R
O código abaixo extrai os filmes com maiores "scores" de cada país, presentes no dataset do IMDB.

### Código
Extrai os filmes com maiores "scores" por país, presentes no dataset do IMDB

```r 
library(data.table)

movies = read.csv("path/movies.csv")  #Importação do dataset passando o caminho do arquivo

data <- movies[,c("country","movie_title", "imdb_score")]   #Seleciona as colunas que serão analisadas

myDataFrame <- setDT(data)  	#Converte para data.table 

setDT(data)[, .SD[which.max(imdb_score)], by=country]    #setDT(data)[, .SD[which.max(imdb_score)], by=country]
```

### Resultado:

![Print do resultado](https://github.com/LgAcerbi/r-dataset/blob/main/sc_1.png?raw=true)

