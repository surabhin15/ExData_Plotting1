# Exploratory Data Week1 
# Course Project Quiz 1
# Surabhi Naik

# Loading the data
epc <- read.table("household_power_consumption.txt", stringsAsFactors=FALSE, header = TRUE, sep = ";")

# Subsetting the data based on 1/2/2007 and 2/2/2007 dates
SubSetData <- epc[epc$Date %in% c("1/2/2007", "2/2/2007"),]

#Plotting the data (plot1.png)
hist(as.numeric(SubSetData$Global_active_power), main = "Global Active Power", col = "Red", xlab = "Global Active Power (Kilowatts)")

dev.off()
