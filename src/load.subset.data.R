## file builds subset of the data according to set rules,
## unless it is already build. In that case it simly loads it.

if (!file.exists(data.subset.file)) {
    # load data
    print('Building data subset...')
    data <- read.csv(txt.file, sep=';', header=T, na.strings='?')

    data$Date <- as.Date(data$Date, '%d/%m/%Y')

    # subset to 2007-02-01 and 2007-02-02
    data <- subset(data, data$Date >= '2007-02-01' & data$Date <= '2007-02-02')

    # create new datetime column and remove unnecessary columns
    data$datetime <- as.POSIXct(paste(data$Date, data$Time))
    data <- data[ , !(names(data) %in% c('Date', 'Time'))]
    row.names(data) <- NULL
    save(data, file=data.subset.file, compress='bzip2')
} else {
    print('Loading data subset...')
    load(data.subset.file)
}

rm(data.subset.file, txt.file)