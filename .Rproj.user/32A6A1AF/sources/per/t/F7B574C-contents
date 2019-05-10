#'  @title Coerce to an enum type
#'
#'  @description Functions to check if an object is an enum type, or coerce it if possible.
#'
#'  @param x any R object
#'
#'  @return Object of class \code{\link{enum_type}}
#'
#'  @export

as.enum_type <- function(x) {
  stopifnot(!is.null(x), length(x) > 0)
  UseMethod("as.enum_type")
}

as.enum_type.default <- function(x) {
  stop(gettextf("cannot coerce class %s to an enum_type", sQuote(deparse(class(x))[1L])),
       domain = NA)
}

as.enum_type.list <- function(x) {
  stopifnot(length(x) > 0)

  type_name <- x$type_name
  type_name_ <- "type_name"
  if (is.null(type_name)) {
    type_name <- x$name
    type_name_ <- "name"
    if (is.null(type_name)) {
      type_name <- deparse(substitute(x))
      type_name_ <- ""
    }
  }

  values <- x$values
  if (is.null(values)) {
    values <- x[[names(x)[which(names(x)[1] != type_name_)]]]
  }

  enum_type(type_name, values)
}

as.enum_type.character <- function(x) {
  stopifnot(length(x) > 0)
  if (length(unique(x)) != length(x)) {
    message("Warning: Vector has non-unique values. Repeated ones will be dropped")
  }
  enum_type(deparse(substitute(x)), unique(x))
}
