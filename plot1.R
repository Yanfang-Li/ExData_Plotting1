# load data from Cleaning data.R
setwd('E:\\Dropbox\\coursera\\Exploratory Data Analysis')
load('./data/Project1.RData')

# Plot 1
# open device
if(!file.exists('Project_1')) dir.create('Project_1')
png(filename = './Project_1/plot1.png', width = 480, height = 480, units='px')
# plot figure
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
# close device
dev.off()