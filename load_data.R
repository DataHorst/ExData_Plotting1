library(tidyverse)

# Data directory
dir_data <- "./"

# Load data on electric power consumption
if (!exists("full_data")){
full_data <- read_delim(paste(dir_data,"household_power_consumption.txt", sep=""), delim=";")

# Convert to Date / Time objects
full_data <- mutate(full_data, Date = as.Date(Date, format="%d/%m/%Y")) 
}


# Filter rows for the dates 2007-02-01 and 2007-02-02
if(!exists("encons_data")){
encons_data <- filter(full_data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
}