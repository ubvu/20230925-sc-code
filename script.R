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
dat[,5] # shows entire col 5 (all rows)
dat[,5:7]
dat[,] # all rows, all columns
dat$V5
dat[,'V5']
dat[39:45,'V5']
# combining assignments <- and data frame inspection
(p01 <- dat[1,])
class(p01)
max(p01) # easy
min(p01) # easy
# median(p01) # error: doesn't like data frames
median(as.numeric(p01)) # ok
mean(as.numeric(p01)) # ok
class(dat[,])  # it' a data frame
class(dat[1,]) # it's a data frame (keeps the column names)
class(dat[,1]) # it's numbers