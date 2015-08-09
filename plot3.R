png(filename="plot3.png")
data = read.table("household_power_consumption.txt", skip = 66638 , nrows = 2879, sep= ";")
x = c(1:2879)
y = one
one = data$V7
two = data$V8
three = data$V9
plot(x,y,type='n', ylab="Energy sub metering", xlab="",xaxt="n",yaxt="n")
lines(x,one)
lines(x,two,col="red")
lines(x,three,col="blue")
axis(1,at=c(0,1500,2879),labels=c("Thu","Fri","Sat"))
axis(2,at=c(0,10,20,30),labels=c("0","10","20","30"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()
