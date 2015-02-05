# build graphs
# load working subset of the data (download data if necessary)
source(paste(getwd(), 'src', 'prerequisities.R', sep=.Platform$file.sep))

source(getPath(DIR.SRC, 'plot1.R'))
source(getPath(DIR.SRC, 'plot2.R'))
source(getPath(DIR.SRC, 'plot3.R'))
source(getPath(DIR.SRC, 'plot4.R'))

rm(list=ls())                # remove all variables
lapply(dev.list(), dev.off)  # clear all plots