#Load data into R
data<-read.csv("C:\\Users\\Prerana\\Desktop\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings = "?", dec=".")
#Subset data based on dates
data_subset<-subset(data, Date %in% c("1/2/2007", "2/2/2007"))
#Format date 
data_subset$Date <- as.Date(data_subset$Date, format="%d/%m/%Y")
#Plot histogram of "Global active power"  
hist(data_subset$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
# Saving to a PNG file with a width of 480 pixels and a height of 480 pixels.
png("plot1.png", width=480, height=480)
dev.off()
