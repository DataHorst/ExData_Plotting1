 
source("load_data.R")

# Create PNG-Device
png(filename = "plot2.png", width =480, height = 480)

# Create tibble with date/time combined

timepower <- encons_data %>%
             select(Date, Time, Global_active_power) %>%
             mutate(DT = as.POSIXct(paste(as.character(Date), as.character(Time)))) %>%
             select(DT, Global_active_power)

plot(x = timepower$DT, y=timepower$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
lines(x = timepower$DT, y=timepower$Global_active_power)

# Close PNG-Device
dev.off()