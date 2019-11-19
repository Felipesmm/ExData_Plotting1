#Load data (It is created in create_data.R)
econsumption<-readRDS("econsumption.rds")

#Change Region (I have spanish weekdays)
Sys.setlocale("LC_TIME", "English")

#Create plot
png(file="plot1.png")
hist(econsumption$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",
     ylab="Frequency",main="Global Active Power")
dev.off()