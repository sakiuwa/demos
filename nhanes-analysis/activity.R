# Calculate survey weighted estimates

# Set up
setwd('~/Documents/UW/Courses/2016-17/Winter/INFO_498/demos/nhanes-analysis/')
# library(foreign)
library(survey)
library(dplyr)
library(Hmisc)

# Load demographic data, which includes survey weights
demographics <- sasxport.get('./data/DEMO_H.XPT')

# Load alcohol use data
alcohol <- sasxport.get('./data/ALQ_H.XPT')

# Merge alcohol and demographic data
nhanes <- left_join(alcohol, demographics, by='seqn')

# Take the sum of the weighting column `wtint2yr` - what is this number?
sum(nhanes$wtint2yr) # Number of people being represented in this study

# Create a survey design that indicates the id, strata, and weights
nhanes.weighted <- svydesign(id=~seqn, strata=~sdmvstra, weights=~wtint2yr, data=nhanes, nest = TRUE)

# Using the codebook, find the question that asks about 12+ drinks in the last year


# Using the `table` function get a table of 12+ drinks in the last year responses


# Using the `prop.table` function, get the proportions of each response


# Using the `svytable` function, compute the survey weighted responses to the same question


# Using `prop.table` in conjunction with `svytable`, compute the survey weighted proportions

