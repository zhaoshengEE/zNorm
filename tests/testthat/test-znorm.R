test_that("Basic test", {
  # Simple test with a simple numeric vector as input
  expect_equal(znorm(c(1,5,9,10)), (c(1,5,9,10) - mean(c(1,5,9,10))) / sd(c(1,5,9,10)))

  # Test whether the default value of removeNA is True or not
  expect_equal(znorm(c(2,5,8,NA)), (c(2,5,8,NA) - mean(c(2,5,8,NA),na.rm = TRUE)) / sd(c(2,5,8,NA),na.rm = TRUE))

  # Test the ... input of znorm function
  expect_equal(znorm(c(1,5,9,10),trim = 0.2), (c(1,5,9,10) - mean(c(1,5,9,10),trim = 0.2)) / sd(c(1,5,9,10)))

  # Test the znorm function with non-numeric vector as input, which is expected to pop out warnings
  expect_error(znorm(c('abc','efg','qwr')))
})
