# load data from Cleaning data.R
setwd('E:\\Dropbox\\coursera\\Exploratory Data Analysis')
load('./data/Project1.RData')

# Plot 2
# open device
if(!file.exists('Project_1')) dir.create('Project_1')
png(filename = './Project_1/plot2.png', width = 480, height = 480, units='px')
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()