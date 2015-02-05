## file builds 2nd plot from the Assignment 1 from Exploratory Data Analysis Coursera course

# load working subset of the data (download data if necessary)
source(paste(getwd(), 'src', 'prerequisities.R', sep=.Platform$file.sep))

# build graph into png file
png(filename=getPath(DIR.FIG, 'plot2.png'), width=480, height=480)
par(mfrow=c(1,1), bg='transparent')
with(data, plot(Global_active_power ~ datetime, type='l', xlab='', ylab='Global Active Power (kilowatts)'))
dev.off()