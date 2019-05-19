#' TEMPORARRY DOCUMENTATION
#'
#' @description TEMPORARY DOCUMENTATION
#'
#' @export
match_enum_value <- function(x, table, nomatch = NA_integer_, incomparables = NULL) {
  stopifnot(is.enum_value(x) || all(sapply(x, is.enum_value)))
  if(is.enum_type(table)) {
    table <- get_enum_values(table)
  } else if (!all(sapply(table, is.enum_value))) {
    stop("table should be list of enum_values or enum_type")
  }
  if(is.enum_value(x)) {
    matched <- FALSE
    i <- 1
    while(!matched && i <= length(table)) {
      if (identical(x, table[[i]])) {
        matched <- TRUE
      }
      i <- i +1
    }
    ifelse(matched, i-1, NA_integer_)
  } else {
    sapply(x, function(val) {
      matched <- FALSE
      i <- 1
      while(!matched && i <= length(table)) {
        if (identical(val, table[[i]])) {
          matched <- TRUE
        }
        i <- i +1
      }
      ifelse(matched, i-1, NA_integer_)
    })
  }
}
