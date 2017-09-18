# Exploratory Data Week1 
# Course Project Quiz 1
# Surabhi Naik



# Loading the data
epc <- read.table("household_power_consumption.txt", stringsAsFactors=FALSE, header = TRUE, sep = ";")

# Subsetting the data based on 1/2/2007 and 2/2/2007 dates
SubSetData <- epc[epc$Date %in% c("1/2/2007", "2/2/2007"),]

Date_Time <- strptime(paste(SubSetData$Date, SubSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Plotting the data (plot3.png)
plot(Date_Time, SubSetData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(Date_Time, SubSetData$Sub_metering_2, col = "Red", type = "l",xlab = "", ylab = "Energy sub metering") #"lines" command for joining/overlaying graph
lines( Date_Time, SubSetData$Sub_metering_3, col = "Blue", type = "l", xlab = "", ylab = "Energy sub metering")

# Adding legends
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("Black", "Red", "Blue"), lty=1, lwd=2)

dev.off()
