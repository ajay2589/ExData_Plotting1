data <-  read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
dataWithinPeriod <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
dateTime <- paste(as.Date(data$Date), data$Time)
dataWithinPeriod$DateTime <- as.POSIXct(dateTime)

hist(dataWithinTime$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
