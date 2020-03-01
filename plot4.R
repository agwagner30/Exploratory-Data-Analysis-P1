par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

with(data, {
  plot(data$Global_active_power~data$dt, ylab="Global Active Power (kilowatts)", xlab="", type="l")
  plot(data$Voltage~data$dt, xlab="datetime", ylab="Voltage", type="l")
  plot(data$Sub_metering_1~data$dt, ylab="Global Active Power (kilowatts)", xlab="", type="l")
  lines(data$Sub_metering_2~data$dt, col='red')
  lines(data$Sub_metering_3~data$dt, col='blue')
  legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(data$Global_reactive_power~data$dt, xlab="datetime", ylab="Global_reactive_power", type="l")
  
})

dev.copy(png, file = "plot4.png", width = 480, height = 480, units = "px" )

dev.off()
