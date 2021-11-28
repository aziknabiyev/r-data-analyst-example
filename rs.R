library(tidyverse)
library(dplyr)

card0 <- read.csv("card0.csv")
card1 <- read.csv("card1.csv")
card2 <- read.csv("card2.csv")
card3 <- read.csv("card3.csv")
card4 <- read.csv("card4.csv")
card5 <- read.csv("card5.csv")
card6 <- read.csv("card6.csv")
card7 <- read.csv("card7.csv")
card8 <- read.csv("card8.csv")


cards <- bind_rows(card0,card1,card2,card3,card4,card5,card6,card7,card8)

cards$vaxt <- as.POSIXct(cards$vaxt, format = "%d.%m.%Y %H:%M:%S")

cards <- distinct(cards, phone, .keep_all = TRUE)
cards <- subset(cards, format(as.Date(vaxt),"%Y")==2016)

dim(cards)
View(cards)
# 
# View(sleep_day)
# 
# n_distinct(daily_activity$Id)
# n_distinct(sleep_day$Id)
# 
# nrow(daily_activity)
# nrow(sleep_day)
# 
# 
# 
# daily_activity %>%  
#   select(TotalSteps,
#          TotalDistance,
#          SedentaryMinutes) %>%
#   summary()
# 
# 
# 
# sleep_day %>%  
#   select(TotalSleepRecords,
#          TotalMinutesAsleep,
#          TotalTimeInBed) %>%
#   summary()
# 
# 
# 
# #ggplot(data=daily_activity, aes(x=TotalSteps, y=SedentaryMinutes)) + geom_point()
# 
# ggplot(data=sleep_day, aes(x=TotalMinutesAsleep, y=TotalTimeInBed)) + geom_point()
# 
# #combined_data <- merge(sleep_day, daily_activity, by="Id")
# 
# 
# 
# #n_distinct(combined_data$Id)
# 
# 
