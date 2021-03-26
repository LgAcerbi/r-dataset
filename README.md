# r-dataset
Uso de R para análise de datasets

### Script em R
Extrai os filmes com maiores "scores" por país, presentes no dataset do IMDB

```r 
movies = read.csv("path/movies.csv")  #Importação do dataset passando o caminho do arquivo

data <- movies[,c("country","movie_title", "imdb_score")]   #Seleciona as colunas que serão analisadas

myDataFrame <- setDT(data)  	#Converte para data.table 

setDT(data)[, .SD[which.max(imdb_score)], by=country]    #setDT(data)[, .SD[which.max(imdb_score)], by=country]
```

Resultado:

![Print do resultado](https://github.com/LgAcerbi/r-dataset/blob/main/sc_1.png?raw=true)

