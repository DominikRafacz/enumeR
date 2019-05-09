##bez exporta

enum_value <- function(value, index) {
  class(value) <- "enum_value"
  attr(value, "index") <- index
  value
}
