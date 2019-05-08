#'  @title Enum type
#'
#'  @description Creates new enum type.
#'
#'  @param type_name Name of the type. Type will be referenced by this value
#'  @param values Possible values of print
#'
#'  @export

enum_type <- function(type_name, values) {
  n <- length(values)
  type <- 1:n
  names(type) <- values
  type <- list(values = type, type_name = type_name)
  class(type) <- "enum_type"
  type
}
