test_that("Formal test", {
  expect_equal(znorm(c(1,5,9,10)), (c(1,5,9,10) - mean(c(1,5,9,10))) / sd(c(1,5,9,10)))
  expect_equal(znorm(c(2,5,8,NA)), (c(2,5,8,NA) - mean(c(2,5,8,NA),na.rm = TRUE)) / sd(c(2,5,8,NA),na.rm = TRUE))
  expect_equal(znorm(c(1,5,9,10),trim = 0.2), (c(1,5,9,10) - mean(c(1,5,9,10),trim = 0.2)) / sd(c(1,5,9,10)))
  expect_error(znorm(c('abc','efg','qwr')))
})
