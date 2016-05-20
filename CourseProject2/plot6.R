library(plyr)
library(ggplot2)
library(grid)

## This first line will likely take a few seconds. Be patient!
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}


# Compare emissions from motor vehicle sources in Baltimore City with emissions from motor 
# vehicle sources in Los Angeles County, California (fips == "06037"). 
# Which city has seen greater changes over time in motor vehicle emissions?


# Searching for ON-ROAD type in NEI

# Check the levels for types of vehicles defined
mv.sourced <- unique(grep("Vehicles", SCC$EI.Sector, ignore.case = TRUE, value = TRUE))

mv.sourcec <- SCC[SCC$EI.Sector %in% mv.sourced, ]["SCC"]


# Subset our data 24510 is Baltimore, see plot2.R, 06037 is LA CA
emissions.ba <- NEI[NEI$SCC %in% mv.sourcec$SCC & NEI$fips == "24510", ]

emissions.LA <- NEI[NEI$SCC %in% mv.sourcec$SCC & NEI$fips == "06037", ]

# Bind the data created in steps 3A and 3B
emissions.Combined <- rbind(emissions.ba, emissions.LA)

# Find the emmissions due to motor vehicles in 
# Baltimore (city) and Los Angeles County
tmveYR.county <- aggregate (Emissions ~ fips * year, data =emissions.Combined, FUN = sum ) 
tmveYR.county$county <- ifelse(tmveYR.county$fips == "06037", "Los Angeles", "Baltimore")

# Plotting to png
png("plot6.png", width=750)
qplot(year, Emissions, data=tmveYR.county, geom="line", color=county) + ggtitle(expression("Motor Vehicle Emission Levels" ~ PM[2.5] ~ "  from 1999 to 2008 in Los Angeles County, CA and Baltimore, MD")) + xlab("Year") + ylab(expression("Levels of" ~ PM[2.5] ~ " Emissions"))
dev.off()