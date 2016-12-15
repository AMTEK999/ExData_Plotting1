
###############################################
#Peer-graded Assignment: Course Project 1
# Plot 1 : Global Active Power 
#############################################

setwd("C:\\R\\Exploratory\\Week1")
HPC <- file("household_power_consumption.txt")
dataHPC  <- read.table(text = grep("^[1,2]/2/2007", readLines(HPC), value = TRUE),  sep = ";", header = TRUE)
NamesHPC <- c("date", "time", "globaActivePower", "globalReactivePower", "voltage", "globalIntensity", "subMetering1", "subMetering2", "subMetering3")
names(dataHPC) <- NamesHPC
# Generating Plot 1
hist(dataHPC$globaActivePower, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")


