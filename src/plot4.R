## file builds 4th plot from the Assignment 1 from Exploratory Data Analysis Coursera course

# load working subset of the data (download data if necessary)
source(paste(getwd(), 'src', 'prerequisities.R', sep=.Platform$file.sep))

# build graph into png file
png(filename=getPath(DIR.FIG, 'plot4.png'), width=480, height=480)
par(bg='transparent', mfrow=c(2,2))
with(data,
{
    plot(Global_active_power ~ datetime, type='l', xlab='', ylab='Global Active Power')
    plot(Voltage ~ datetime, type='l')

    plot(data$Sub_metering_1 ~ datetime, type='l', xlab='', ylab='Energy sub metering')
    lines(data$Sub_metering_2 ~ datetime, col='red')
    lines(data$Sub_metering_3 ~ datetime, col='blue')
    legend('topright', legend=colnames(data)[5:7], col=c('black', 'red', 'blue'), lty=1, bty='n', pt.cex=.5, xjust=1)

    plot(Global_reactive_power ~ datetime, type='l')
})
dev.off()