library(ggplot2)

#Import the data and add the values that are important

data <- read.csv("~/Documents/Github/Rstat/kaggle/Baseball/Data/SQLExtractTopPlayers.csv")
data$obp<-(data$h+data$bb)/data$ab
data$age<-data$yearID-data$birth_yearID
data$avg<-data$h/data$ab

basemen<-subset(data,pos %in% c('1B','2B','3B'))
plot<-ggplot(basemen)
plot+geom_boxplot(aes(factor(age),
                      obp))
    +facet_grid(.~pos)
plot+geom_boxplot(aes(factor(age),
                      obp, 
                      fill = pos, 
                      col = pos,
                      position = 'identity', 
                      alpha = .5))

basemen.prolific<-subset(basemen,g>=40)
plot2<-ggplot(basemen.prolific)
plot2+geom_boxplot(aes(factor(age),obp))+facet_grid(.~pos)

outfield<-subset(data,pos %in% c('RF','LF','CF'))
plot3<-ggplot(outfield)
plot3+geom_boxplot(aes(factor(age),
                       sb, 
                       col = 2))
    +facet_grid(.~pos)
plot3+geom_boxplot(aes(factor(age),
                       sb, 
                       fill = pos, 
                       col = pos,
                       position = 'identity', 
                       alpha = .5))
