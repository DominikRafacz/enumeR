#'  @title Test if the object is an enum type
#'
#'  @description This function checks class of passed object. If vector of classes contains
#'  \code{"enum_type"}, then checks if all necessary fields are not \code{null}, namely
#'  \code{type_name} and \code{values}, and whether \code{type_name} is a singular
#'  character vector. Next, checks if \code{fields_names} is a character vector or \code{null}.
#'  Lastly, all values need to be unique and proper \code{enum_value} objects.
#'
#'  @return \code{TRUE} if the object passed all tests described above, \code{FALSE} otherwise.
#'
#'  @export

is.enum_type <- function(object) {
  if("enum_type" %in% class(object) &&
     !any(is.null(object[["type_name"]]),
          is.null(object[["values"]]),
          is.null(object[["methods_env"]])) &&
     is.character(object[["type_name"]]) &&
     is.environment(object[["methods_env"]]) &&
     length(object[["type_name"]]) == 1 &&
     (is.null(object[["fields_names"]]) ||
      is.character(object[["fields_names"]]))) {
    values <- object[["values"]]
    n <- length(values)
    if (length(unique(values)) == n &&
        all(unlist(lapply(values, is.enum_value)))) {
      #TO DO: add more tests, such as checking if all values have all fields
      return(TRUE)
    }
  }
  return(FALSE)
}
