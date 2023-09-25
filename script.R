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
summary(dat[,1:4])
# the function apply()
#help(apply)  -- commented out out of convenience
#?apply -- ditto
apply(dat, 1, mean)  # all rows = patients
apply(dat, 2, mean)  # all columns = days
animal <- c('d','o','n','k','e','y')
animal[-3]
animal[-1:-3]
# variables and apply() function
avg_day_inflammation <- apply(dat, 2, mean)
min_day_inflammation <- apply(dat, 2, min)
max_day_inflammation <- apply(dat, 2, max)
length(max_day_inflammation)  # instead of dim() because...
sd_day_inflammation <- apply(dat, 2, sd)
length(sd_day_inflammation)
sd_patient_inflammation <- apply(dat, 1, sd)
length(sd_patient_inflammation)
# Creating your own function
f2c <- function(temp_F){
    temp_C <- (temp_F - 32) * 5 / 9  # y = (x - 32) * 5 / 9
    return(temp_C)
}
f2c(32)
f2c(212)
c2k <- function(temp_C){
    temp_K = temp_C + 273.15
    return(temp_K)
}
c2k(0)
c2k(100)
c2k(f2c(32))  # nested function
f2k <- function(temp_F){
    temp_C <- f2c(temp_F)
    temp_K <- c2k(temp_C)
    return(temp_K)
}
f2k(32)