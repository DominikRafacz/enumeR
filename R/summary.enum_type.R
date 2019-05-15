summary.enum_type <- function(object, ...) {
  if (!is.enum_type(object)) {
    return(summary.default(object, ...))
  }
  value <- array("", c(2L, 1L), list(c("Values", "Methods"), "Length"))
  value[1L, 1L] <- length(get_enum_values(object))
  value[2L, 1L] <- length(object[["methods"]])
  class(value) <- c("table")
  value
}
