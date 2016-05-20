#setwd("/Users/Mark/git/ExploratoryDataAnalysis/CourseProject2/")
library(plyr)
library(ggplot2)

## This first line will likely take a few seconds. Be patient!
if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("Source_Classification_Code.rds")
}


# How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

# Since Baltimore is fips = 24510 we subset
# Searching for ON-ROAD type in 
# check the levels for types of vehicles defined
mv.sourced <- unique(grep("Vehicles", SCC$EI.Sector, ignore.case = TRUE, value = TRUE))

mv.sourcec <- SCC[SCC$EI.Sector %in% mv.sourced, ]["SCC"]

# Subset the emissions from motor vehicles from
# NEI for Baltimore, MD.
emissions.ba <- NEI[NEI$SCC %in% mv.sourcec$SCC & NEI$fips == "24510",]

# Find the emissions due to motor vehicles in Baltimore for every year
emBalYear <- ddply(emissions.ba, .(year), function(x) sum(x$Emissions))
colnames(emBalYear)[2] <- "Emissions"

# Plot to png
png("plot5.png")
qplot(year, Emissions, data=emBalYear, geom="line") + ggtitle(expression("Baltimore City" ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) + xlab("Year") + ylab(expression("Total" ~ PM[2.5] ~ "Emissions (tons)"))
dev.off()

