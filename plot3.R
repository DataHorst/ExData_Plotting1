 
source("load_data.R")

# Create PNG-Device
png(filename = "plot3.png", width =480, height = 480)

# Create tibble with date/time combined

timesubmeter <- encons_data %>%
             select(Date, Time, Sub_metering_1, Sub_metering_2, Sub_metering_3) %>%
             mutate(DT = as.POSIXct(paste(as.character(Date), as.character(Time)))) %>%
             select(Sub_metering_1:DT)

plot(x = timesubmeter$DT, y=timesubmeter$Sub_metering_1, type="n", ylab="Energy submetering", xlab="")
lines(x = timesubmeter$DT, y=timesubmeter$Sub_metering_1, col="black")
lines(x = timesubmeter$DT, y=timesubmeter$Sub_metering_2, col="red")
lines(x = timesubmeter$DT, y=timesubmeter$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_2"), col=c("black", "red", "blue"), lty=1)


# Close PNG-Device
dev.off()