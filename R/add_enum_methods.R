#'  @title TEMPORARRY DOCUMENTATION
#'
#'  @description TEMPORARY DOCUMENTATION
#'
#'  @export
add_enum_methods <- function(enum_type, ...) {
  added_methods <- match.call(expand.dots = FALSE)$`...`
  n <- length(added_methods)
  lapply(1:n, function(index) {
    enum_type[["methods_env"]][[names(added_methods)[index]]] <- added_methods[[index]]
  })

}

