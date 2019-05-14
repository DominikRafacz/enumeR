#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export
get_enum_method <- function(enum_value, method) {
  eval(enum_value$methods_env[[as.character(substitute(method))]])
}

`%.%` <- function(enum_value, method) {
  eval(enum_value$methods_env[[as.character(substitute(method))]])
}
