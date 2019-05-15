#' Print enum_type
#'
#' @description Pretty prints enum_type object. Overloads default print.
#'
#' @param enum_type Object of class enum_type
#'
#' @export

print.enum_type <- function(enum_type) {
  cat("Enum type: ", enum_type[["type_name"]],
      "\n\nValues:\n")
  invisible(sapply(enum_type[["values"]], print))
}
