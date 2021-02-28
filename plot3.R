## Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

library(dplyr)
library(ggplot2)
library(graphics)

# setwd('C://Users//orhol//Desktop//Candace_School//MOOCS//Johns Hopkins Data Science//4. Exploratory Data Analysis//Week 4//Project 2')
# rawpm25 <- readRDS('summarySCC_PM25.rds')


## Filter emissions for Baltimore: fips==24510
balt <- subset(rawpm25, fips=='24510')


## Sum the baltimore emissions by year and type
balt<- aggregate(Emissions ~ year + type, balt, sum)
balt


## Save as png
png("plot3.png", width = 480, height = 480)
ggplot(data = balt, aes(year, Emissions, color=type)) + 
  geom_line() +
  # facet_grid( balt$type ~ .) +
  ggtitle("Baltimore Emissions by Type 1999 - 2008") +
  xlab("Year") +
  ylab("Emissions (in tons)")+
  labs(color= "Emission Type") ## Update Legend Title
dev.off()


