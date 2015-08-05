#' Makes a call to the Eco Service 1.7 API
#'
#' @param start the start parameter in the call.
#' @param method the method being called (e.g. GetCustomers).
#' @return The response of the API call is in JSON format.

get_api <- function(start,method) {
    url <- paste0(baseurl,method)
    limit <- start + 1000
    key3 = paste0('"start": ', start,',')
    key4 = paste0('"limit": ', limit)
    body <- paste0('{',key1,key2,key3,key4,'}')
    req <- POST(url,body = body, content_type_json(), encode = "json", verbose())
    resp <- content(req, "text")
    x <- fromJSON(resp)
    value <<- rbind(value,fromJSON(x$Value))
    totalrecords <<- x$TotalRecords
    i <<- limit + 1
}
