#' Sample n values from an enum type
#'
#' @description This is a wrapper around [sample()] to make selecting random enum values easier.
#'
#' @param enum_type Object that passes [is.enum_type()] check.
#' @param size A non-negative integer giving number of items to choose.
#' @param replace Should sampling be with replacement?
#' @param weight Sampling weights. This must evaluate to a vector of non-negative numbers the same
#' length as the input. Weights are automatically standardised to sum to 1.
#'
#' @return A list of enum values of length \code{size} drawn from \code{enum_type}'s values.
#'
#' @export

sample_enum <- function(enum_type, size, replace = FALSE, weight = NULL) {
  stopifnot(is.enum_type(enum_type))
  if (!is.null(weight)) {
    weight <- weight/sum(weight)
  }
  enum_list(sample(enum_type[["values"]], size, replace, weight))
}
