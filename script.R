read.csv(file = "data/inflammation-01.csv", header = FALSE)
read.csv(file = "data/inflammation-01.csv", header = TRUE)
# read.csv(file = "data/commedec.txt")
read.csv(file = "data/commadec.txt", sep = ';', dec=',')
# variables
weight_kg <- 55
weight_kg
(weight_kg <- 77)
2.2 * weight_kg
weight_lb <- 2.2 * weight_kg
weight_kg <- 88
weight_lb
dat <- read.csv(file='data/inflammation-01.csv', header=FALSE)