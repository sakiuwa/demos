# Set Up
setwd('~/Documents/UW/Courses/2016-17/Winter/INFO_498/demos/risks/')

library(dplyr)

risks <- read.csv("./data/prepped/risk-factors.csv", stringsAsFactors = FALSE)

risks$risk.average <- rowMeans(risks[7:ncol(risks)], na.rm=TRUE)
