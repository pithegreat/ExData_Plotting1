png(filename="plot4.png")
data = read.table("household_power_consumption.txt", skip = 66638 , nrows = 2879, sep= ";")
par(mfrow=c(2,2))
par(mar=c(5,4,4,0.5))
y = data$V3
x = c(1:2879)
plot(x,y,type='n', ylab="Global Active Power", xlab="",xaxt="n")
lines(x,y)
axis(1,at=c(0,1500,2879),labels=c("Thu","Fri","Sat"))
voltage = data$V5
plot(x,voltage,type='n', ylab="Voltage", xlab="datetime",xaxt="n",yaxt="n")
lines(x,voltage)
axis(2,at=c("234","238","242","246"),labels=c("234","238","242","246"))
axis(1,at=c(0,1500,2879),labels=c("Thu","Fri","Sat"))
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
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,pt.cex = 1,cex=1)
x = c(1:2879)
y = data$V4
plot(x,y,type='n', ylab="Global_Reactive_Power", xlab="Datetime",xaxt="n",yaxt="n")
lines(x,y)
axis(1,at=c(0,1500,2879),labels=c("Thu","Fri","Sat"))
axis(2,at=c(0.0,0.1,0.2,0.3,0.4,0.5))
dev.off()
