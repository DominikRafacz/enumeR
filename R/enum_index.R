#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export

enum_index <- function(enum_value) {
  stopifnot(is.enum_value(enum_value))
  attr(enum_value, "index")
}
