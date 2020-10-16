household_power_consumption <- read.csv("C:/Users/monica/Desktop/household_power_consumption.txt", header=FALSE, sep=";", stringsAsFactors=TRUE)
>   View(household_power_consumption)
> sub_data <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]
> date_time <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
> globalActivePower <- as.numeric(sub_data$Global_active_power)
> png("plot2.png", width=480, height=480)
> plot(date_time, globalActivePower,xlim=c(0,60),ylim = c(0,60), type="l", xlab="", ylab="Global Active Power (kilowatts)")
> dev.off()
