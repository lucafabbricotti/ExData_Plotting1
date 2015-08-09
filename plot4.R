#Require plot1.R to be launched before (for data arrangement)


#Plotting plot4 NEED TO MANIPULATE AXIS BECAUSE OS LANGUAGE IS NOT ENGLISH
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(dat_select$Global_active_power,type = "l", ylab = "Global Active Power (Kilowatt)", xlab = "",xaxt="n")
axis(1, at = c(1,1440,2880), labels = c("thur.", "fri.", "sat."), las = 0)
plot(dat_select$Voltage,type = "l", ylab = "Voltage", xlab = "",xaxt="n")
axis(1, at = c(1,1440,2880), labels = c("thur.", "fri.", "sat."), las = 0)
plot(dat_select$Sub_metering_1,type="l",col="black", ylab="Energy Submetering", xlab = "",xaxt="n")
lines(dat_select$Sub_metering_2,type="l",col="red")
lines(dat_select$Sub_metering_3,type="l",col="blue")
axis(1, at = c(1,1440,2880), labels = c("thur.", "fri.", "sat."), las = 0)
legend("topright",legend = c("Submetering 1", "Submetering 2", "Submetering 3"), col= c("black","red","blue"), lwd = 1)
plot(dat_select$Global_reactive_power, type = "l", ylab = "Global Reactive Power (Kilowatt)", xlab = "",xaxt="n")
axis(1, at = c(1,1440,2880), labels = c("thur.", "fri.", "sat."), las = 0)
dev.off()