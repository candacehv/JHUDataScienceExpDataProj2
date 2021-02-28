## Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

library(graphics)
library(data.table)
setwd('C://Users//orhol//Desktop//Candace_School//MOOCS//Johns Hopkins Data Science//4. Exploratory Data Analysis//Week 4//Project 2')

# rawSCC <- readRDS('Source_Classification_Code.rds')
# rawpm25 <- readRDS('summarySCC_PM25.rds')


## Filter emissions for Baltimore: fips==24510
balt <- subset(rawpm25, fips=='24510')
head(balt)

## Create a dataframe summing the baltimore emissions by year
sumdata <- as.data.frame(rowsum(balt$Emissions, balt$year))
setnames(sumdata, "TotalEmissions")

png("plo2.png", width = 480, height = 480)
with(sumdata, barplot(TotalEmissions, names.arg = c('1999', '2002', '2005', '2008'), col="yellow", xlab="Year", ylab = "Total Emissions", main="Baltimore Emissions (in tons)"))
lines(lm(sumdata$TotalEmissions))
dev.off()
