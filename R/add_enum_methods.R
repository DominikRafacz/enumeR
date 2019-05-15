#' TEMPORARRY DOCUMENTATION
#'
#' @description TEMPORARY DOCUMENTATION
#'
#' @export
add_enum_methods <- function(enum_type, ...) {
  added_methods <- match.call(expand.dots = FALSE)$`...`
  n <- length(added_methods)
  invisible(
    lapply(1:n, function(index) {
      enum_type[["methods_env"]][[names(added_methods)[index]]] <- methodize(enum_type, eval(added_methods[[index]]))
    })
  )
}


#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
methodize <- function(enum_type, method) {
  variables <- paste(".", c("index", enum_type[["fields_names"]]), sep = "")
  if(is.null(formals(method))) {
    formals(method) <- alist(.value_name = )
  } else {
    formals(method)[[".value_name"]] <- alist(x= )$x
  }
  for(var in variables) {
    formals(method)[[var]] <- alist(x = )$x
  }
  method
}
