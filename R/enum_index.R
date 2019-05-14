#'  @title Get Enum Index
#'
#'  @description Extracts `index` attribute value of passed `enum_value`.
#'
#'  @param enum_value object of class `enum_value` or list of such objects with the same `enum_type`
#'
#'  @return integer index of `enum_value` or named vector of integers coresponding to  values in list
#'
#'  @export

get_enum_index <- function(enum_value) {
  stopifnot(is.enum_value(enum_value) || (is.list(enum_value) && all(sapply(enum_value, is.enum_value))))
  if(is.enum_value(enum_value)) {
    enum_value$index
  } else {
    sapply(enum_value, function(value) value$index)
  }
}
