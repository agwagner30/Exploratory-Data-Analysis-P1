hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px" )

dev.off()


