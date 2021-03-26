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
                 country                                       movie_title imdb_score
 1:                  USA                          The Shawshank Redemption        9.3
 2:                   UK                                            Luther        8.6
 3:                                                               Preacher        8.3
 4:          New Zealand The Lord of the Rings: The Fellowship of the Ring        8.8
 5:               Canada                                  Towering Inferno        9.5
 6:            Australia                                Mad Max: Fury Road        8.1
 7:              Belgium                                The Devil's Double        7.1
 8:                Japan                                     Seven Samurai        8.7
 9:              Germany                               The Lives of Others        8.5
10:                China                                              Hero        7.9
11:               France                                       The Pianist        8.5
12:             New Line                                    Town & Country        4.4
13:               Mexico                                     Amores Perros        8.1
14:                Spain                                   Pan's Labyrinth        8.2
15:            Hong Kong                                    Kung Fu Hustle        7.8
16:       Czech Republic                      I Served the King of England        7.4
17:                India                                           Airlift        8.5
18:         Soviet Union                                           Solaris        8.1
19:          South Korea                                            Oldboy        8.4
20:                 Peru                                    The Specialist        5.4
21:                Italy                    The Good, the Bad and the Ugly        8.9
22:               Russia                                        The Return        8.0
23:                Aruba                                         Knock Off        4.8
24:              Denmark                                          The Hunt        8.3
25:                Libya                                Lion of the Desert        8.4
26:              Ireland                                              Room        8.3
27:         South Africa                                        District 9        8.0
28:              Iceland                                           Trapped        8.2
29:          Switzerland                                             Cargo        6.2
30:              Romania                      4 Months, 3 Weeks and 2 Days        7.9
31:         West Germany                                          Das Boot        8.4
32:                Chile                                            The 33        6.9
33:          Netherlands                                        Black Book        7.8
34:              Hungary                                          Fateless        7.1
35:               Panama                                    Hands of Stone        7.2
36:               Greece                                          Dogtooth        7.3
37:               Sweden                                  Cries & Whispers        8.2
38:               Norway                                        Lilyhammer        8.1
39:               Taiwan                    Crouching Tiger, Hidden Dragon        7.9
40:        Official site                                    Country Strong        6.3
41:             Cambodia                                         Listening        5.6
42:             Thailand                                     The Protector        7.1
43:             Slovakia                        Bathory: Countess of Blood        6.0
44:             Bulgaria                                          Automata        6.1
45:                 Iran                                Children of Heaven        8.5
46:               Poland                                           Dekalog        9.1
47:              Georgia                                     5 Days of War        5.6
48:               Turkey                        Valley of the Wolves: Iraq        6.0
49:              Nigeria                                    Black November        5.6
50:               Brazil                                       City of God        8.7
51:              Finland                                          Le Havre        7.2
52:              Bahamas                                Dying of the Light        4.4
53:            Argentina                          The Secret in Their Eyes        8.2
54:             Colombia                               Maria Full of Grace        7.5
55:               Israel                                 Waltz with Bashir        8.0
56:                Egypt                                        The Square        8.1
57:           Kyrgyzstan                            Queen of the Mountains        8.7
58:            Indonesia                              The Raid: Redemption        7.6
59:             Pakistan                                 Karachi se Lahore        7.0
60:             Slovenia                              Julija in alfa Romeo        6.4
61:          Afghanistan                                             Osama        7.4
62:   Dominican Republic                                The King of Najayo        6.9
63:             Cameroon                                    Sisters in Law        7.5
64: United Arab Emirates                              The Brain That Sings        8.2
65:                Kenya                              Stories of Our Lives        7.4
66:          Philippines                                            Cavite        6.3

