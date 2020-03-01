data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c('character', 'character', 
'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'))

data$Date <- as.Date(data$Date, "%d/%m/%Y")

data <- subset(data,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

data <- data[complete.cases(data),]

dt <- paste(data$Date, data$Time)

dt <- setNames(dt, "dateandtime")

data <- data[,!(names(data) %in% c("date","time"))]

data <- cbind(dt, data)

data$dt <- as.POSIXct(dt)

