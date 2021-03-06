## Course Project 2

#### Instructions

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the <a href="http://www.epa.gov/ttn/chief/eiinformation.html">EPA National Emissions Inventory web site</a>.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that we will be using for this assignment are for 1999, 2002, 2005, and 2008.


#### Review Criteria
For each question:
<ol type="1">
<li>Does the plot appear to address the question being asked?</li>
</ol>

#### Data
The data for this assignment are available from the course website as a single zip file:
<ul>
<li> <b>Dataset: </b> <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip">Data for Peer Assessment</a> [29Mb]
</ul>

#### Assignment
The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

#### Questions
You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

<ol type="1">
<li> Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the <b>base</b> plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.</li>

<li> Have total emissions from PM2.5 decreased in the <b>Baltimore City</b>, Maryland <font color="red">(fips == "24510")</font> from 1999 to 2008? Use the <b>base</b> plotting system to make a plot answering this question.

<li> Of the four types of sources indicated by the <font color="red">type</font> (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for <b>Baltimore City</b>? Which have seen increases in emissions from 1999–2008? Use the <b>ggplot2</b> plotting system to make a plot answer this question.</li>

<li> Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?</li>

<li> How have emissions from motor vehicle sources changed from 1999–2008 in <b>Baltimore City</b>?</li>

<li> Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (<font color="red">fips="06037"</font>). Which city has seen greater changes over time in motor vehicle emissions?</li>

</ol>

##### Plot for Question 1
![plot of question 1](figures/plot1.png) 

##### Plot for Question 2
![plot of question 2](figures/plot2.png) 

##### Plot for Question 3
![plot of question 3](figures/plot3.png) 

##### Plot for Question 4
![plot of question 4](figures/plot4.png) 

##### Plot for Question 5
![plot of question 5](figures/plot5.png) 

##### Plot for Question 6
![plot of question 6](figures/plot6.png) 