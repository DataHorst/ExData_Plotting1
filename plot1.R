 
source("load_data.R")

# Create PNG-Device
png(filename = "plot1.png", width =480, height = 480)
hist(encons_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()