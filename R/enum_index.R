#'  @title Get Enum Index
#'
#'  @description Extracts `index` attribute value of passed `enum_value`.
#'
#'  @param enum_value object of class `enum_value`
#'
#'  @return integer index of
#'
#'  @export

enum_index <- function(enum_value) {
  stopifnot(is.enum_value(enum_value))
  attr(enum_value, "index")
}
