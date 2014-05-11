twoDays <- read.csv("twoDays.csv")
png(filename = "plot1.png", width = 480, height = 480, units = "px", res=72, bg = "white")
hist(twoDays$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()
