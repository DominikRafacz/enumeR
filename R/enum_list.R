enum_list <- function(list) {
  stopifnot(all(sapply(list, is.enum_value)))
  class(list) <- c(class(list), "enum_list")
  list
}

print.enum_list <- function(enum_list) {
  cat("List of enum values:\n")
  invisible(sapply(enum_list, print))
}
