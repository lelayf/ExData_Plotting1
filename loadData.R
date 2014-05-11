download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile="power.zip",method="curl")
unzip("power.zip")
fullData <- read.csv("household_power_consumption.txt",sep=";")
twoDays <- fullData[fullData["Date"] == "1/2/2007" | fullData["Date"] == "2/2/2007",]
# alternative if you have sed utility on your system
twoDays <- read.table(pipe("sed -n -e '/^[1-2]\\/2\\/2007/p' ./household_power_consumption.txt"),sep=";",header=FALSE)
dNames <- read.table("household_power_consumption.txt",nrows=1,sep=";",header=FALSE,stringsAsFactors=FALSE)
names(twoDays)<-dNames
