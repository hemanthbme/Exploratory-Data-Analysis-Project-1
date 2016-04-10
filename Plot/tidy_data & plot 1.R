## cleaning the data
power <- read.csv("C:/Personal/coursera course/Course 4 - Exploratory data analysis/week 1/project/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";")
power<-power[power$Date=='1/2/2007' | power$Date=='2/2/2007',]
library(lubridate)
power$date_time<-dmy(power$Date)+hms(power$Time)
power$weekday<-wday(power$date_time, label=TRUE)
power<-power[,c(10,11,1:9)]

## Plot 1

png("Plot1.png")
class(power$Global_active_power)<-as.numeric(power$Global_active_power)
hist(power$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")
dev.off()





