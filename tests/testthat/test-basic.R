test_that("enum_values are created properly", {
  temp <- new.env()
  object <- enum_value("animal", temp, "COW", 5L, list(voice = "mooo!", color = c("red", "white")))
  reference <- list(type_name = "animal",
                    methods_enviroment = temp,
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
  temp <- object[["methods_enviroment"]]
  reference <- list(type_name = "animal",
                    values_names = c("DOG", "CAT", "COW"),
                    fields_names = NULL,
                    values = list(DOG = enum_value("animal", temp, "DOG", 1),
                                  CAT = enum_value("animal", temp, "CAT", 2),
                                  COW = enum_value("animal", temp, "COW", 3)),
                    methods_enviroment = temp)
  class(reference) <- "enum_type"
  expect_equal(object, reference)
})

test_that("enum_values are recoginized as enum_values", {
  object <- enum_value("animal", new.env(), "COW", 5L, list(voice = "mooo!", color = c("red", "white")))
  expect_true(is.enum_value(object))
})

test_that("enum_types are recoginized as enum_values", {
  object <- enum_type("animal",
                      c("DOG", "CAT", "COW"))
  expect_true(is.enum_type(object))
})
