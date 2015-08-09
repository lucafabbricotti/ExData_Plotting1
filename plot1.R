#Prepare DATA and plot plot1.png

# Preparing data for plotting
setwd(list.dirs()[3])
dat <- read.table(list.files()[2], header =TRUE, sep =';', na.strings='?')
dat$Time <- strptime(dat$Time,format= "%H:%M:%S")
dat$Time <- strftime(dat$Time, format= '%H:%M')
dat$Date <-as.Date(dat$Date, "%d/%m/%Y")
dat_select<-dat[dat$Date >="2007-02-01" & dat$Date <= "2007-02-02",]
dat_select$DateTime <- strptime(paste(dat_select$Date,dat_select$Time), "%Y-%m-%d %H:%M")
dat_select$Global_active_power<-as.numeric(dat_select$Global_active_power)

#Plotting plot1 
png(file="plot1.png",width=480,height=480)
hist(dat_select$Global_active_power, col="red", main ="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
