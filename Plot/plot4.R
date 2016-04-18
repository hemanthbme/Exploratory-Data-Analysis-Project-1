## Plot 4

png("plot/plot4.png")
par(mfrow=c(2,2))
plot(power$date_time, power$Global_active_power, type="l", xlab="Weekday", ylab="Global Active POwer")
plot(power$date_time, power$Voltage, xlab="date time", ylab="Voltage", type="l")
lncol=c("black","red", "blue")
plot(power$date_time, power$Sub_metering_1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power$date_time, power$Sub_metering_2,col=lncol[2])
lines(power$date_time,power$Sub_metering_3,col=lncol[3])
plot(power$date_time, power$Global_active_power, type="l", xlab="Weekday", ylab="Global Active POwer")
dev.off()