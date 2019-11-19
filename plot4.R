#Load data
econsumption<-readRDS("econsumption.rds")

#Create plot
png(file="plot4.png")


#Set global par
par(mfrow=c(2,2))


#Create first plot
with(econsumption,
     plot(DateTime,Global_active_power,
          type="l",
          ylab="Global Active Power",
          xlab=""))

#Create second plot
with(econsumption,
     plot(DateTime,Voltage,
          type="l",
          ylab="Voltage",
          xlab="datetime"))

#Create third plot
plot(rep(econsumption$DateTime,3),
     c(econsumption$Sub_metering_1,econsumption$Sub_metering_2,econsumption$Sub_metering_3),type="n",
     xlab="",
     ylab="Energy sub metering")
points(econsumption$DateTime,econsumption$Sub_metering_1,col="black",type="l")
points(econsumption$DateTime,econsumption$Sub_metering_2,col="red",type="l")
points(econsumption$DateTime,econsumption$Sub_metering_3,col="blue",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lty = "solid",
       bty="n")

#Create fourth plot
with(econsumption,
     plot(DateTime,Global_reactive_power,
          type="l",
          ylab="Global_reactive_power",
          xlab="datetime"))

dev.off()