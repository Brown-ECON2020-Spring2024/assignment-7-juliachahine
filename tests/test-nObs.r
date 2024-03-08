linear_reg <- readRDS("./output/models/linear_reg.rds")


test_that("Gapminder linear regression model number of obs.",{
    expect_equal(linear_reg$nobs,1704)
})
