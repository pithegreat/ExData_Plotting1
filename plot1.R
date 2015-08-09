png(filename="plot1.png")
data = read.table("household_power_consumption.txt", skip = 66638 , nrows = 2879, sep= ";")
x = data$V3
hist(x,main="Global Active Power",xlab="Global Active Power (kilowatts)",col='red')
dev.off()


