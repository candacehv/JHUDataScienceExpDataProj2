# JHUDataScienceExpDataProj2

This repository stores my implementation of the requirements for Project 2 of the course Exploratory Data Analysis of the Johns Hopkins Data Science Coursera Specilization. 

This repository is a collection of R files which produce exploratory plots showing various characteristics of the fine particulate matter (pm2.5) collected in the [EPA National Emissions Inventory web site |https://www.epa.gov/technical-air-pollution-resources]. 

Files are named such that each .R file and .PNG file are numbered according to the research question they address. For example, Plot1.R produces Plot1.png and the plot answers question 1 (below). 

## Research Questions

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
a. **Yes, total PM2.5 emissions have decreased in the United States from 1999 to 2008. The bar graph shows a consistent downward trend of the total sum of PM2.5 emissions for all observations.**
3. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
a. **Yes, total PM2.5 emissions have decreased in Baltimore City between 1999 and 2008. While 2005 shows higher numbers than 2002, the sum in 2005 is lower than in 1999, and the overall trend is decreasing.**
5. Of the four types of sources indicated by the *type* (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
a. **Of the 4 types of emissions, 3 have seen a downward trend over the period from 1999-2008: on-road, non-road, and non-point. Point emissions, however, spiked in 2005 and settled close to the starting value by 2008. Of all emissions types, non-point has decreased the most, however the PM2.5 values remain the highest.**
7. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
8. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
9. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (\color{red}{\verb|fips == "06037"|}fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
