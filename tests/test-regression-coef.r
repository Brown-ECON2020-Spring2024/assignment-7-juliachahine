linear_reg <- readRDS("./output/models/linear_reg.rds")

test_that("Gapminder Linear Regression coeff", {
    expect_equal(linear_reg$coefficients["gdpPercap"],0.00076, tolerance = 0.000001)
})
