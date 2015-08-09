png(filename="plot2.png")
data = read.table("household_power_consumption.txt", skip = 66638 , nrows = 2879, sep= ";")
y = data$V3
x = c(1:2879)
plot(x,y,type='n', ylab="Global Active Power (kilowatts)", xlab="",xaxt="n",yaxt="n")
lines(x,y)
axis(1,at=c(0,1500,2879),labels=c("Thu","Fri","Sat"))
dev.off()
