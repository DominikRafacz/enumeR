#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export

is.enum_value <- function(object) {
  if(class(object) == "enum_value" &&
     !any(is.null(object$type_name),
          is.null(object$value_name),
          is.null(object$index),
          is.null(object$methods_env)) &&
     all(is.character(object$type_name),
         is.character(object$value_name),
         is.integer(object$index),
         is.environment(object$methods_env)) &&
     all(length(object$type_name) == 1,
         length(object$value_name) == 1,
         length(object$index == 1))){
    return(TRUE)
  }
  return(FALSE)
}
