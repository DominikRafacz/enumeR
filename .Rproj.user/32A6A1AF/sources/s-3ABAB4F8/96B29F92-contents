#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export

is.enum_type <- function(object) {
  "$" <- base::"$"
  if(class(object) == "enum_type" &&
     !any(is.null(object$type_name),
          is.null(object$values)) &&
     is.character(object$type_name) &&
     length(object$type_name) == 1 &&
     (is.null(object$fields_names) ||
      is.character(object$fields_names))) {
    values <- object$values
    n <- length(values)
    if (length(unique(values)) == n &&
        all(unlist(lapply(values, is.enum_value)))) {
      #TO DO: add more tests, such as checking if all values have all fields
      return(TRUE)
    }
  }
  return(FALSE)
}
