#Load data (It is created in create_data.R)
econsumption<-readRDS("econsumption.rds")

#Change Region (I have spanish weekdays)
Sys.setlocale("LC_TIME", "English")

#Create plot
png(file="plot3.png")

plot(rep(econsumption$DateTime,3),
     c(econsumption$Sub_metering_1,econsumption$Sub_metering_2,econsumption$Sub_metering_3),type="n",
     xlab="",
     ylab="Energy sub metering")
points(econsumption$DateTime,econsumption$Sub_metering_1,col="black",type="l")
points(econsumption$DateTime,econsumption$Sub_metering_2,col="red",type="l")
points(econsumption$DateTime,econsumption$Sub_metering_3,col="blue",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lty = "solid")

dev.off()