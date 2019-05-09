#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export

is.enum_value <- function(object) {
  if(class(object) == "enum_value" && is.integer(attr(object, "index")) && attr(object, "index") > 0) {
    return(TRUE)
  }
  return(FALSE)
}
