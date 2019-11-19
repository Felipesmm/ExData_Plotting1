#Load libraries
library(lubridate)


#Download the file
fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl,destfile="data.zip",method = "curl")

#Unzip the file and change the WD
unzip("data.zip")

#Read data
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses = "factor")
econsumption<-data

#Changing object type
econsumption$Date<-dmy(econsumption$Date)
econsumption$Time<-hms(econsumption$Time)
econsumption$DateTime<-econsumption$Date+econsumption$Time
econsumption$Global_active_power<-as.numeric(levels(econsumption$Global_active_power))[econsumption$Global_active_power]
econsumption$Global_reactive_power<-as.numeric(levels(econsumption$Global_reactive_power))[econsumption$Global_reactive_power]
econsumption$Voltage<-as.numeric(levels(econsumption$Voltage))[econsumption$Voltage]
econsumption$Global_intensity<-as.numeric(levels(econsumption$Global_intensity))[econsumption$Global_intensity]
econsumption$Sub_metering_1<-as.numeric(levels(econsumption$Sub_metering_1))[econsumption$Sub_metering_1]
econsumption$Sub_metering_2<-as.numeric(levels(econsumption$Sub_metering_2))[econsumption$Sub_metering_2]
econsumption$Sub_metering_3<-as.numeric(levels(econsumption$Sub_metering_3))[econsumption$Sub_metering_3]
econsumption$DateTime<-as.POSIXct(econsumption$DateTime)

#Filter
library(dplyr)
econsumption<-econsumption %>%
        filter(Date>=ymd("2007-02-01") & Date<=ymd("2007-02-02"))

#Save file
saveRDS(econsumption,"econsumption.rds")

