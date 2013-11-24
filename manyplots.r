## This makes plots for many counters
setwd('./')
source('util.r')

lake <- read.csv('./dat/sanfrancisco/lake.csv')
names(lake)[2] <- "time"
names(lake)[3] <- "count"
boxplotit(lake)

tele66 <- read.csv('./dat/oakland/Telegraph66th.csv')
names(tele66)[2] <- "time"
names(tele66)[3] <- "count"
boxplotit(tele66)
