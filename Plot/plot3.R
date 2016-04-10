## Plot 3

png("plots/plot3.png")
lncol=c("black","red", "blue")
plot(power$date_time, power$Sub_metering_1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power$date_time, power$Sub_metering_2,col=lncol[2])
lines(power$date_time,power$Sub_metering_3,col=lncol[3])
legend("topright",col= lncol, legend=c("Sub metering 1","Sub metering 2","Sub metering 3"), lty='solid')
dev.off()