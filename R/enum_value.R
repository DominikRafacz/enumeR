##not exported

enum_value <- function(enum_type, methods_env, value_name, index, fields = list()) {
  value <- c(list(type_name = enum_type,
                  methods_env = methods_env,
                  value_name = value_name,
                  index = index),
             fields)
  class(value) <- "enum_value"
  value
}



