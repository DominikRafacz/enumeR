#' TEMPORARRY DOCUMENTATION
#'
#' @description TEMPORARY DOCUMENTATION
#'
#' @export

print.enum_value <- function(enum_value) {
  cat(get_enum_index(enum_value), " : ", enum_value$value_name, "\n")
}
