# r-dataset
Uso de R para análise de datasets

### Script em R

Importação do dataset:
```r 
movies = read.csv("path/movies.csv")
``` 

Utiliza a função nativa aggregate, para coletar o maior score de um filme por país atráves da função "MAX"
```r
aggregate(movies$imdb_score, list(movies$country), FUN = "max") 
````



