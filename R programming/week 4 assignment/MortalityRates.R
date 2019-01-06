## Plot the 30-day mortality rates for heart attack

## Read the outcome data into R
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

## Coerce the column to be numeric
outcome[, 11] <- as.numeric(outcome[, 11])

## Histogram of the 30-day death rates from heart attack
hist(outcome[, 11], xlab= "Deaths", main = "Hospital 30-Day Death (Mortality) Rates from Heart Attack", col="lightblue")
