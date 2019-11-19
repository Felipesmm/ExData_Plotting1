#Load data
econsumption<-readRDS("econsumption.rds")

#Create plot
png(file="plot2.png")

with(econsumption,
     plot(DateTime,Global_active_power,
          type="l",
          ylab="Global Active Power (kilowatts)",
          xlab=""))

dev.off()