#' Converts the date column to POSIXct datetime format.
#'
#' @param dataset A dataframe.
#' @param y A column number of the dataframe.
#' @return The date column in proper POSIXct format.

#Date Conversion

date_convert <- function(dataset=data,col=colNumber,name=stringname) {
    a <- dataset
    a[,col] <- gsub('/Date(','',a[,col], fixed = T)
    a[,col] <- gsub(')/','',a[,col], fixed = T)
    a[,col] <- as.POSIXct(as.numeric(a[,col])/1000, origin='1970-01-01', tz='EST')
    assign(name,a, envir = .GlobalEnv)
}
