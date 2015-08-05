#Clean API results for depositing into database

#Date Conversion

# API Date results come in the form of: /Date(1000000000000)/
# This function strips the characters from the numbers,
# converts to numeric, and converts the time stamp to datetimes

date_convert <- function(dataset=data,col=colNumber,name=stringname) {
    a <- dataset
    a[,col] <- gsub('/Date(','',a[,col], fixed = T)
    a[,col] <- gsub(')/','',a[,col], fixed = T)
    a[,col] <- as.POSIXct(as.numeric(a[,col])/1000, origin='1970-01-01', tz='EST')
    assign(name,a, envir = .GlobalEnv)
}
