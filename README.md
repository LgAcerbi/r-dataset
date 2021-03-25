# r-dataset
Uso de R para análise de datasets

### Script em R

movies = read.csv("path/movies.csv")    <!-- O caminho onde se encontra o arquivo

aggregate(movies$imdb_score, list(movies$country), FUN = "max") <!-- Utiliza a função nativa aggregate, para coletar o maior score de um filme por país atráves da função "MAX"



