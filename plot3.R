#Require Plot1.R to be launched before
#Plotting plot3 NEED TO MANIPULATE AXIS BECAUSE OS LANGUAGE IS NOT ENGLISH
png(file="plot3.png",width=480,height=480)
with(dat_select, plot(Sub_metering_1,type="l",col="black", ylab="Energy Submetering", xlab = "",xaxt="n"))
with(dat_select, lines(Sub_metering_2,type="l",col="red"))
with(dat_select, lines(Sub_metering_3,type="l",col="blue"))
axis(1, at = c(1,1440,2880), labels = c("thur.", "fri.", "sat."), las = 0)
legend("topright",legend = c("Submetering 1", "Submetering 2", "Submetering 3"), col= c("black","red","blue"), lwd = 1)
dev.off()