setwd('~/Documents/UW/Courses/2016-17/Winter/INFO_498/demos/nhanes')

install.packages("SASxport")

require(SASxport)

my_data <- read.xport('data/raw/PAQ_H.XPT')
demo_data <- read.xport('data/raw/DEMO_H.XPT')
combined <- merge(my_data, demo_data)

write.csv(combined, file = '/data/prepped/my_data.csv')
