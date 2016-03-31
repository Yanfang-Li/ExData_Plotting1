# load data from Cleaning data.R
setwd('E:\\Dropbox\\coursera\\Exploratory Data Analysis')
load('./data/Project1.RData')

# Plot 3
# open device
if(!file.exists('Project_1')) dir.create('Project_1')
png(filename = './Project_1/plot3.png', width = 480, height = 480, units='px')
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$DateTime, data$Sub_metering_2, col = 'red')
lines(data$DateTime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
# close device
dev.off()