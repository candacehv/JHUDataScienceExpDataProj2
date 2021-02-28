## Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

library(graphics)
library(data.table)
setwd('C://Users//orhol//Desktop//Candace_School//MOOCS//Johns Hopkins Data Science//4. Exploratory Data Analysis//Week 4//Project 2')

# rawSCC <- readRDS('Source_Classification_Code.rds')

## Read RDS data
# rawpm25 <- readRDS('summarySCC_PM25.rds')


## Create a 
sumdata <- rowsum(rawpm25$Emissions, rawpm25$year)/100000
setnames(sumdata, "TotalEmissions")

png("plo1.png", width = 480, height = 480)
with(sumdata, barplot(TotalEmissions, names.arg = c('1999', '2002', '2005', '2008'), xlab="Year", ylab = "Total Emissions", main="All Emissions in 100K tons"))
dev.off()
