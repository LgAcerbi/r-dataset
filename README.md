# r-dataset
Uso de R para análise de datasets

### Script em R

```r 
movies = read.csv("path/movies.csv")  #Importação do dataset passando o caminho do arquivo

aggregate(movies$imdb_score, list(movies$country), FUN = "max")  #Utiliza a função nativa aggregate, para coletar o maior score de um filme por país atráves da função "MAX"
````



