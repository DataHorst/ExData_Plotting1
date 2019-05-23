

source("load_data.R")

# Create PNG-Device
png(filename = "plot4.png", width =480, height = 480)

# Create tibble with date/time combined

plot4data <- encons_data %>%
             mutate(datetime = as.POSIXct(paste(as.character(Date), as.character(Time)))) 
par(mfrow=c(2,2))              

# Diagram 1  
plot(x = plot4data$datetime, y=plot4data$Global_active_power, type="n", ylab="Global Active Power", xlab="")
lines(x = plot4data$datetime, y=plot4data$Global_active_power)

# Diagram 2  
plot(x = plot4data$datetime, y=plot4data$Voltage, type="n", ylab="Voltage", xlab="datetime")
lines(x = plot4data$datetime, y=plot4data$Voltage)

# Diagramm 3
plot(x = plot4data$datetime, y=plot4data$Sub_metering_1, type="n", ylab="Energy sub meeting", xlab="datetime")

lines(x = plot4data$datetime, y=plot4data$Sub_metering_1, col="black")
lines(x = plot4data$datetime, y=plot4data$Sub_metering_2, col="red")
lines(x = plot4data$datetime, y=plot4data$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_2"), col=c("black", "red", "blue"), lty=1, bty = "n")

# Diagram 4  
plot(x = plot4data$datetime, y=plot4data$Global_reactive_power, type="n", ylab="Global_reactive_power", xlab="datetime")
lines(x = plot4data$datetime, y=plot4data$Global_reactive_power)


dev.off()