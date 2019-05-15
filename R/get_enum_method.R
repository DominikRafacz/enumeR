#' TEMPORARRY DOCUMENTATION
#'
#' @description TEMPORARY DOCUMENTATION
#'
#' @export

get_enum_method <- function(enum_value, method) {
  method_name <- as.character(substitute(method))
  methods_names <- names(enum_value$methods_env)
  if(!method_name %in% methods_names) {
    stop(method_name, " is not a proper name of any of ", enum_value$type_name, " methods!")
  }
  method <- enum_value$methods_env[[method_name]]
  variables <- names(enum_value)[-c(1,2)]
  variables_w_d <- paste(".", variables, sep = "")
  inds <- match(variables_w_d, names(formals(method)))
  formals(method)[inds] <- enum_value[-c(1,2)]
  ret <- function() {
    method()
  }
  formals(ret) <- formals(method)[-inds]
  ret
}
