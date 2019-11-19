#Load data
econsumption<-readRDS("econsumption.rds")

#Create plot
png(file="plot1.png")
hist(econsumption$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",
     ylab="Frequency",main="Global Active Power")
dev.off()