#' TEMPORARRY DOCUMENTATION
#'
#' @description TEMPORARY DOCUMENTATION
#'
#' @export
apply_enum_method <- function(enum_value, method, ...) {
  eval(enum_value$methods_env$methods_universal[[as.character(substitute(method))]])(...)
}




