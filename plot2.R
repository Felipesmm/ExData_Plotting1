#Load data (It is created in create_data.R)
econsumption<-readRDS("econsumption.rds")

#Change Region (I have spanish weekdays)
Sys.setlocale("LC_TIME", "English")

#Create plot
png(file="plot2.png")

with(econsumption,
     plot(DateTime,Global_active_power,
          type="l",
          ylab="Global Active Power (kilowatts)",
          xlab=""))

dev.off()