## file builds 3rd plot from the Assignment 1 from Exploratory Data Analysis Coursera course

# load working subset of the data (download data if necessary)
source(paste(getwd(), 'src', 'prerequisities.R', sep=.Platform$file.sep))

# build graph into png file
png(filename=getPath(DIR.FIG, 'plot3.png'), width=480, height=480)
par(mfrow=c(1,1), bg='transparent')
with(data,
{
    plot(data$Sub_metering_1 ~ datetime, type='l', xlab='', ylab='Energy sub metering')
    lines(data$Sub_metering_2 ~ datetime, col='red')
    lines(data$Sub_metering_3 ~ datetime, col='blue')
    legend('topright', legend=colnames(data)[5:7], col=c('black', 'red', 'blue'), lty=1)
})
dev.off()