#' Converts the date column to POSIXct datetime format.
#'
#' @param string A string that needs to be converted to underscore notation.
#' @return The date column in proper POSIXct format.

#Date Conversion

to_underscore <- function(x) {
    x2 <- gsub("([A-Za-z])([A-Z])([a-z])", "\\1_\\2\\3", x)
    x3 <- gsub(".", "_", x2, fixed = TRUE)
    x4 <- gsub("([a-z])([A-Z])", "\\1_\\2", x3)
    x5 <- tolower(x4)
    x5
}
