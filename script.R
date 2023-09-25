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
# assign a variable from reading a file
dat <- read.csv(file='data/inflammation-01.csv', header=FALSE)
dim(dat)
nrow(dat)
ncol(dat)
head(dat)
# class()
class(weight_kg)
class(dat)
# inspecting a data frame (aka table)
dat[1,1]
dat[2,10]
dat[c(1,2),c(1,10)] # introducing c()
class(c(1,2))
class(dat[c(1,2),c(1,10)])
# playing with (numbers that I can use as) indices
1:5  # introducing the colon and slices
dat[5:10,5:10]
dat[5,] # shows entire row 5 (all columns)
dat[,5] # shows entrie col 5 (all rows)
dat[,5:7]