#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export

get_enum_index <- function(enum_value) {
  stopifnot(is.enum_value(enum_value))
  base::"$"(enum_value, index)
}
