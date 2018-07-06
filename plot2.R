data<-read.csv("C:\\Users\\Prerana\\Desktop\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings = "?", dec=".")
data_subset<-subset(data, Date %in% c("1/2/2007", "2/2/2007"))
data_subset$Date <- as.Date(data_subset$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data_subset$Date), data_subset$Time)
data_subset$Datetime <- as.POSIXct(datetime)
with(data_subset, {
  plot(Global_active_power~Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
  })
