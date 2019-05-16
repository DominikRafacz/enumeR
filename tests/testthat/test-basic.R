test_that("enum_values are created properly", {
  temp <- new.env()
  object <- enum_value("animal", temp, "COW", 5L, list(voice = "mooo!", color = c("red", "white")))
  reference <- list(type_name = "animal",
                    methods_env = temp,
                    value_name = "COW",
                    index = 5,
                    voice = "mooo!",
                    color = c("red", "white"))
  class(reference) <- "enum_value"
  expect_equal(object, reference)
})

test_that("enum_types with no fields are created properly", {
  object <- enum_type("animal",
                      c("DOG", "CAT", "COW"))
  temp <- object[["methods_env"]]
  reference <- list(type_name = "animal",
                    values_names = c("DOG", "CAT", "COW"),
                    fields_names = NULL,
                    values = list(DOG = enum_value("animal", temp, "DOG", 1L),
                                  CAT = enum_value("animal", temp, "CAT", 2L),
                                  COW = enum_value("animal", temp, "COW", 3L)),
                    methods_env = temp)
  class(reference$values) <- c("list", "enum_list")
  class(reference) <- "enum_type"
  #length.enum_type <- base::length
  expect_equal(object, reference)
})

test_that("enum_values are recoginized as enum_values", {
  object <- enum_value("animal", new.env(), "COW", 5L, list(voice = "mooo!", color = c("red", "white")))
  expect_true(is.enum_value(object))
})

test_that("enum_types are recoginized as enum_types", {
  object <- enum_type("animal",
                      c("DOG", "CAT", "COW"))
  expect_true(is.enum_type(object))
})
