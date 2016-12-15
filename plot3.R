###############################################
#Peer-graded Assignment: Course Project 1
# Plot 3 : Global Active Power 
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

## Generating Plot 3
with(dataHPC, {
  plot(Sub_metering_1 ~ Datetime, type = "l", 
       ylab = "Energy sub meetering", xlab = "")
  lines(Sub_metering_2 ~ Datetime, col = 'Red')
  lines(Sub_metering_3 ~ Datetime, col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

 