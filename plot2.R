# Require Plot1 to be launched before
#Plotting plot2 NEED TO MANIPULATE AXIS BECAUSE OS LANGUAGE IS NOT ENGLISH
png(file="plot2.png",width=480,height=480)
plot(dat_select$Global_active_power,type = "l", ylab = "Global Active Power (Kilowatt)", xlab = "",xaxt="n")
axis(1, at = c(1,1440,2880), labels = c("thur.", "fri.", "sat."), las = 0)
dev.off()