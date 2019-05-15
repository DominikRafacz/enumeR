names.enum_type <- function(enum_type) {
  stopifnot(is.enum_type(enum_type))
  enum_type[["type_name"]]
}
