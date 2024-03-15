library(testthat)
testthat::local_edition(3)

library(gapminder)
library(data.table)

gapminderData <- data.table::fread("./output/data/gapminder.csv")


test_that("Year and Country UID?",{
    expect_false(anyDuplicated(gapminderData$year))
    expect_false(anyDuplicated(gapminderData$country))
})

test_that("gdpPercap range",{
    expect_in(gapminderData$gdpPercap,c(0,1e6))
})

test_that("continents correct",{
    expect_in(gapminderData$continent,c("Asia", "Europe", "Africa", "Americas", "Oceania"))
})