###############################################
#Peer-graded Assignment: Course Project 1
# Plot 2 : Global Active Power : Thursday through Satuarday 
#############################################

setwd("C:\\R\\Exploratory\\Week1")

## Getting dataset
dataHPC <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
dataHPC$Date <- as.Date(dataHPC$Date, format = "%d/%m/%Y")

## Subsetting the data
dataHPC <- subset(dataHPC, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
 
## Converting dates
datetime <- paste(as.Date(dataHPC$Date), dataHPC$Time)
dataHPC$Datetime <- as.POSIXct(datetime)

## Generating Plot 2
plot(dataHPC$Global_active_power ~ dataHPC$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")


 