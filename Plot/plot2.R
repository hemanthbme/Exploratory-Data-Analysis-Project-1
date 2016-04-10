## Plot 2

png("Plots/plot2.png")
plot(power$date_time, power$Global_active_power, type="l", xlab="Weekday", ylab="Global Active POwer")
dev.off()