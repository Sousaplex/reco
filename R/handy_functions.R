#handy_functions

find_row <- function(row, dfrm) anyDuplicated(rbind(row, dfrm)) > 1
