context("Adding and accessing enum methods")

color_enum <- enum_type("color_enum",
                        c("QUEEN_BLUE", "DARK_PURPLE", "PINK_RASPBERRY"),
                        red  = c(67, 47, 156),
                        green = c(124, 36, 13),
                        blue  = c(144, 58, 56))

qu <- color_enum$QUEEN_BLUE

test_that("adding field-based method with no parameters works", {
  add_enum_methods(color_enum,
                   get_hex_color_w_index_name = function() {
                     paste0(.value_name,
                            " ",
                            .index,
                            " #",
                            as.hexmode(.red),
                            as.hexmode(.green),
                            as.hexmode(.blue))
                   })
  object <- color_enum[["methods_env"]]$get_hex_color_w_index_name(qu$value_name,
                                                                   qu$index,
                                                                   qu$red,
                                                                   qu$green,
                                                                   qu$blue)
  expect_equal(object, "QUEEN_BLUE 1 #437c90")
})

test_that("adding field-based method which does nothing with no parameters works", {
  add_enum_methods(color_enum,
                   do_nothing = function() {NULL})
  object <- color_enum[["methods_env"]]$do_nothing(qu$value_name,
                                                   qu$index,
                                                   qu$red,
                                                   qu$green,
                                                   qu$blue)
  expect_equal(object, NULL)
})

test_that("adding field-based method with some parameters works", {
  add_enum_methods(color_enum,
                   return_multiplicity_of_index = function(multiplicity) {
                     multiplicity * .index
                   })
  object <- color_enum[["methods_env"]]$return_multiplicity_of_index(12,
                                                                     qu$value_name,
                                                                     qu$index,
                                                                     qu$red,
                                                                     qu$green,
                                                                     qu$blue)
  expect_equal(object, 12)
})

test_that("calling field-based method with no parameters works", {
  object <- get_enum_method(qu, get_hex_color_w_index_name)()
  expect_equal(object, "QUEEN_BLUE 1 #437c90")
})

test_that("calling field-based method which does nothing with no parameters works", {
  object <- get_enum_method(qu, do_nothing)()
  expect_equal(object, NULL)
})

test_that("calling field-based method with some parameters works", {
  skip("not implemented properly yet")
  object <- get_enum_method(qu, return_multiplicity_of_index)(12)
  expect_equal(object, 12)
})
