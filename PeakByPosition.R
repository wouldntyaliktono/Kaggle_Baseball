#Import the data
data <- read.csv("~/Documents/Github/Rstat/kaggle/Baseball/Data/SQLExtractPlayerPeaks.csv")

#Import the necessary data processing libraries
library(ggplot2)

#subset the data to include only what is important
players<-data[,c("player_id",
                     "birth_yearID",
                     "yearID",
                     "stint",
                     "pos",
                     "team_id",
                     "league_id",
                     'g',
                     'ab',
                     'h',
                     'bb',
                     'bats',
                     'height',
                     'weight')]
#age in years from birth to the playing year
players$age<-players$yearID-players$birth_yearID
players$batting_avg<-players$h/players$ab

#pull out the players with fewer than 5 at-bats
players<-subset(players,players$ab>=5)

#subset to only the first players to explore the data
first<-subset(players, pos == '1B')
first<-droplevels(first)

plot<-ggplot(first, aes(batting_avg))
plot+geom_histogram()+facet_grid(bats~.)
plot+geom_hex(aes(batting_avg,age))

