length.enum_type <- function(enum_type) {
  stopifnot(is.enum_type(enum_type))
  length(get_enum_values(enum_type))
}
