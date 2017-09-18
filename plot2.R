# Exploratory Data Week1 
# Course Project Quiz 1
# Surabhi Naik



# Loading the data
epc <- read.table("household_power_consumption.txt", stringsAsFactors=FALSE, header = TRUE, sep = ";")

# Subsetting the data based on 1/2/2007 and 2/2/2007 dates
SubSetData <- epc[epc$Date %in% c("1/2/2007", "2/2/2007"),]

Date_Time <- strptime(paste(SubSetData$Date, SubSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Plotting the data (plot2.png)

plot(Date_Time, SubSetData$Global_active_power, type = "l", ylab = "Global Active Power (Kilowatts)")

dev.off()







