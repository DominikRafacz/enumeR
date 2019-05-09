#'  @title Enum type
#'
#'  @description Creates new enum type.
#'
#'  @param type_name Character vector of length 1. Name of the type. Type  name will be referenced by this value
#'  @param value_names Character vector of positive length. Possible names of enum_values (instances)
#'  @param ... Optional other fields that are used during constructing enum_values
#'
#'  @export
enum_type <- function(type_name, values_names, ...) {
  fields <- as.list(match.call(expand.dots = FALSE)$`...`)
  n <- length(values_names)

  stopifnot(is.character(type_name))
  stopifnot(length(type_name) == 1)
  stopifnot(all(unlist(lapply(fields, function(field) length(field) == n))))
  stopifnot(is.character(values_names))
  stopifnot(length(unique(values_names)) == n)

  if(length(fields) == 0) {
    fields_names <- NULL
  } else {
    fileds_names <- names(fields)
  }

  new_type <- list(type_name = type_name,
                   values_names = values_names,
                   fields_names = fields_names,
                   values = lapply(1L:n,
                       function(index) enum_value(enum_type = type_name,
                                                  value_name = values_names[index],
                                                  index = index,
                                                  lapply(fields, function(field) eval(field[[i]])))))
  names(new_type$values) <- values_names
  class(new_type) <- "enum_type"
  new_type
}


