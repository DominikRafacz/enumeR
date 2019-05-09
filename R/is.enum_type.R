#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export

is.enum_type <- function(object) {
  if(class(object) == "enum_type") {
    values <- base::"$"(object, values)
    n <- length(values)
    if (stopifnot(values == 1:n) && length(unique(names(values)) == n)) {
      return(TRUE)
    }
  }
  return(FALSE)
}
