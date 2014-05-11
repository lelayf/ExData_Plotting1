twoDays <- read.csv("twoDays.csv")

png(filename = "plot4.png", width = 480, height = 480, units = "px", res=72, bg = "white")

par(mfrow=c(2,2))

plot(twoDays$Global_active_power,type="l", xlab="",ylab="Global Active Power (kilowatts)",xaxt="n")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))

plot(twoDays$Voltage,type="l", xlab="datetime",ylab="Voltage",xaxt="n")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))

plot(c(1,2880),c(1,40),ylab="Energy sub-metering",type="n",xlab="",xaxt="n",yaxt="n")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
axis(2,at=c(0,10,20,30))
lines(twoDays$Sub_metering_1)
lines(twoDays$Sub_metering_2,col="red")
lines(twoDays$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),bty="n",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1))

plot(twoDays$Global_reactive_power,type="l", xlab="datetime",ylab="Global_reactive_power",xaxt="n")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))

dev.off()

