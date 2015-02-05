## in necessary, file call:
## 1. data download
## 2. data subsetting

# function builds a path using platform file separator
getPath <- function(dir = getwd(), file = '')
{
    paste(dir, file, sep=.Platform$file.sep)
}

## settings
# project variables - usually stored in .Rprofile
DIR.SRC  <- getPath(file='src')
DIR.DATA <- getPath(file='data')
DIR.FIG  <- getPath(file='figure')

# dataset url
url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'

# Rdata file with the working dataset
data.subset.file <- getPath(DIR.DATA, 'working.subset.Rdata')

# download data - unless it's already downloaded
source(getPath(DIR.SRC, 'download.data.R'))
# build the subset of the data
source(getPath(DIR.SRC, 'load.subset.data.R'))
