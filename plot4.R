# Exploratory Data Week1 
# Course Project Quiz 1
# Surabhi Naik



# Loading the data
epc <- read.table("household_power_consumption.txt", stringsAsFactors=FALSE, header = TRUE, sep = ";")

# Subsetting the data based on 1/2/2007 and 2/2/2007 dates
SubSetData <- epc[epc$Date %in% c("1/2/2007", "2/2/2007"),]

Date_Time <- strptime(paste(SubSetData$Date, SubSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot4.png", height = 480, width = 480)
#Plotting the data (plot4.png)
par(mfrow = c(2, 2)) 

plot(Date_Time, SubSetData$Global_active_power, type = "l", xlab="", ylab = "Global Active Power (Kilowatts)")

plot(Date_Time, SubSetData$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(Date_Time, SubSetData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(Date_Time, SubSetData$Sub_metering_2, col = "Red")
lines( Date_Time, SubSetData$Sub_metering_3, col = "Blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col = c("Black", "Red", "Blue"), bty = "o")

plot(Date_Time, SubSetData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
