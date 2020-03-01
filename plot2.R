plot(data$Global_active_power~data$dt, ylab="Global Active Power (kilowatts)", xlab="", type="l")

dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px" )

dev.off()
