
data <- read.table("household_power_consumption.txt",header=TRUE,sep=';',stringsAsFactors=FALSE,na.strings='?')

sub_data <- subset(data,data$Date=="1/2/2007"|data$Date=="2/2/2007")

png("plot1.png", width = 480, height = 480)

hist(sub_data$Global_active_power,main='Global Active Power',col='red',xlab='Global Active Power (kilowatts)')

dev.off()