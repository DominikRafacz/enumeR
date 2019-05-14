context("Accessing enum_values")

simple_enum <- enum_type("color",
                         c("RED", "GREEN", "BLUE"),
                         hex_value = c("#FF0000", "#00FF00", "#0000FF"))

red <- list(type_name = "color",
            methods_env = simple_enum[["methods_env"]],
            value_name = "RED",
            index = 1,
            hex_value = "#FF0000")
class(red) <- "enum_value"

green <- list(type_name = "color",
              methods_env = simple_enum[["methods_env"]],
              value_name = "GREEN",
              index = 2,
              hex_value = "#00FF00")
class(green) <- "enum_value"

test_that("enum_values are accessed properly with '$'", {
  expect_true(is.enum_value(simple_enum$RED))
  expect_true(is.enum_value(simple_enum$GREEN))
  expect_true(is.enum_value(simple_enum$BLUE))
  expect_equal(simple_enum[["type_name"]], simple_enum$RED[["type_name"]])
  expect_equal(simple_enum[["type_name"]], simple_enum$GREEN[["type_name"]])
  expect_equal(simple_enum[["type_name"]], simple_enum$BLUE[["type_name"]])
  expect_equal(simple_enum$RED, red)
  expect_equal(simple_enum$GREEN, green)
})

test_that("it's not possible to modify enum_type with '$<-'", {
  expect_error(simple_enum$RED <- "anything", "You cannot modify enum_type values!" )
  expect_error(simple_enum$GREEN <- "anything", "You cannot modify enum_type values!" )
  expect_error(simple_enum$BLUE <- "anything", "You cannot modify enum_type values!" )
})

test_that("enum_values are subsetted properly with '['", {
  object <- simple_enum[1]
  expect_equal(object, list(RED = red))
  object <- simple_enum[c(1,2,1)]
  reference <- list(RED = red, GREEN = green, RED = red)
  expect_equal(object, reference)
  object <- simple_enum[c("RED", "GREEN", "RED")]
  expect_equal(object, reference)
})

test_that("it's not possible to modify enum_type with '[<-'", {
  expect_error(simple_enum[1] <- "anything", "You cannot modify enum_type values!" )
  expect_error(simple_enum["GREEN"] <- "anything", "You cannot modify enum_type values!" )
  expect_error(simple_enum[c(1,2,3,1)] <- "anything", "You cannot modify enum_type values!" )
  expect_error(simple_enum[c("RED", "BLUE", "RED")] <- "anything", "You cannot modify enum_type values!" )
})
