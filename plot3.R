with(data, {
  plot(data$Sub_metering_1~data$dt, ylab="Global Active Power (kilowatts)", xlab="", type="l")
  lines(data$Sub_metering_2~data$dt, col='red')
  lines(data$Sub_metering_3~data$dt, col='blue')
})

legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png", width = 480, height = 480, units = "px" )

dev.off()
