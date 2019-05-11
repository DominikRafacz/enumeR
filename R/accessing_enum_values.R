#' Get subset of values of enum_type
#'
#' @description placeholder
#'
#' @param enum_type enum_type
#' @param index index
#'
#' @export
"[.enum_type" <- function(enum_type, index) {
  enum_type[["values"]][index]
}

#' Get subset of values of enum_type
#'
#' @description placeholder
#'
#' @param enum_type enum_type
#' @param index index
#'
#' @export
"[<-.enum_type" <- function(enum_type, index, value) {
  stop("You cannot modify enum_type values!")
}

#' Get subset of values of enum_type
#'
#' @description placeholder
#'
#' @param enum_type enum_type
#' @param index index
#'
#' @export
"$.enum_type" <- function(enum_type, value) {
  enum_type[["values"]][[value]]
}

#' Get subset of values of enum_type
#'
#' @description placeholder
#'
#' @param enum_type enum_type
#' @param index index
#'
#' @export
"$<-.enum_type" <- function(enum_type, index, value) {
  stop("You cannot modify enum_type values!")
}
