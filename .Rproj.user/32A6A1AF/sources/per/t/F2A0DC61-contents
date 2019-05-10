#'  @title Enum type
#'
#'  @description Creates new enum type.
#'
#'  @param type_name Character vector of length 1. Name of the type. Type will be referenced by this value
#'  @param values Character vector of positive length. Possible values of print
#'
#'  @export

enum_type <- function(type_name, values) {
  stopifnot(is.character(type_name))
  stopifnot(length(type_name) == 1)
  stopifnot(is.character(values))
  n <- length(values)
  stopifnot(length(unique(values)) == n)
  type <- list(values = lapply(1:n, function(i) enum_value(values[i], i)),
               type_name = type_name)
  class(type) <- "enum_type"
  type
}
