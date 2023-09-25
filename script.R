# FILES
# reading a spreadsheet file
read.csv(file = "data/inflammation-01.csv", header = TRUE)
read.csv(file = "data/inflammation-01.csv", header = FALSE)
# handling separator characters: between columns and in decimal numbers
# read.csv(file = "data/commedec.txt")  # typo in filename
read.csv(file = "data/commadec.txt", sep = ';', dec=',')

# VARIABLES
weight_kg  # undefined variable
weight_kg <- 55  # assign and define
weight_kg  # print (display) value
(weight_kg <- 77)  # assign and print at once
# calculating with R 
2.2 * weight_kg  
weight_lb <- 2.2 * weight_kg  # calculate and assign
weight_kg <- 88  # reassign input
weight_lb  # verify output

# FILE CONTENTS AND VARIABLES
# assign the file content to a variable
dat <- read.csv(file='data/inflammation-01.csv', header=FALSE)
# informative commands
dim(dat)
nrow(dat)
ncol(dat)
head(dat)
# types of R-objects
class(weight_kg)    # numeric
class(dat)          # data frame
# inspecting the content of a data frame (aka table)
# introducing square brackets and indices
dat[1,1]  # NB counting starts from 1 (Python starts from 0)
dat[2,10]
dat[c(1,2),c(1,10)] # introducing c() to group objects
class(c(1,2))
class(dat[c(1,2),c(1,10)])
# playing with (numbers that I can use as) indices
1:5  # introducing the colon and slices
dat[5:10,5:10]
dat[5,] # shows entire row 5 (all columns)
dat[,5] # shows entire col 5 (all rows)
dat[,5:7] # shows an entire row and a slice of columns
dat[,] # all rows, all columns
dat$V5  # select a column by its name (shorthand without indices)
dat[,'V5'] # select a column by its name
dat[39:45,'V5']  # ditto plus a slice of rows
# negative indices in R (toy example)
animal <- c('d','o','n','k','e','y')
animal[-3]
animal[-1:-3]
# back to the dataframe
(p01 <- dat[1,])  # assign subset of dataframe to variable and print it
class(p01)

# STATISTICAL FUNCTIONS
max(p01) # easygoing
min(p01) # easygoing
# median(p01) # error: doesn't cope with data frames
median(as.numeric(p01)) # workaround, ok
mean(as.numeric(p01)) # workaround, ok
# explaining the issue
class(dat[,])  # it's a data frame
class(dat[1,]) # it's a data frame (keeps the column names)
class(dat[,1]) # it's numbers
# function for summary statistics
summary(dat[,1:4])

# SUBSETS OF DATAFRAMES AND FUNCTIONS: example with apply() 
help(apply) # learn more about the arguments of apply()
?apply # equivalent
apply(dat, 1, mean)  # 1: repeat function with data from each row = for each patient
apply(dat, 2, mean)  # 2: repeat function with data from each column = for each day
# storing the apply() output in variables
avg_day_inflammation <- apply(dat, 2, mean)
min_day_inflammation <- apply(dat, 2, min)
max_day_inflammation <- apply(dat, 2, max)
class(max_day_inflammation)
length(max_day_inflammation)  # instead of dim() because...
# repeating with the standard deviation
sd_day_inflammation <- apply(dat, 2, sd)
length(sd_day_inflammation)
sd_patient_inflammation <- apply(dat, 1, sd)
length(sd_patient_inflammation)

# FUNCTIONS
# Defining and using your own functions

# 1) convert Fahrenheit temperature to Celsius
# defining the function operations (no calculation occurs)
f2c <- function(temp_F){
    temp_C <- (temp_F - 32) * 5 / 9  # y = (x - 32) * 5 / 9
    return(temp_C)
}
# perform calculations
f2c(32)
f2c(212)

# 2) convert Celsius temperature to Kelvin
# defining the function operations (no calculation occurs)
c2k <- function(temp_C){
    temp_K = temp_C + 273.15
    return(temp_K)
}
# perform calculations
c2k(0)
c2k(100)

# 3) convert Fahrenheit to Kelvin
# composing ???? function
# perform nested ??? calculation: the argument of a function is the output another function output
c2k(f2c(32))
# nesting ???? functions: the function body contains existing functions 
# defining the function operations (no calculation occurs)
f2k <- function(temp_F){
    temp_C <- f2c(temp_F)
    temp_K <- c2k(temp_C)
    return(temp_K)
}
# perform calculation
f2k(32)

# NAMED VARIABLES (named arguments)
# assign and define variable
i1 <- 2  

# the second argument is 'named', has a default value and become optional
# the name of the first variable introduces confusion by design 
# defining the function operations (no calculation occurs)
mysum <- function(i1, i2=10){
    output = i1 + i2
    return(output)
}
# show value of variable
i1
# perform calculations
mysum(1,2)  # expected 3
mysum(1)    # expected 11
mysum(i1)   # expected 12

# remedy to confusion
# the function arguments does not repeat names of existing variables
# both arguments are named, only for the fun of it
# defining the function operations (no calculation occurs)
mysum <- function(a=23, b=10){
    output = a + b
    return(output)
}
# perform calculations
mysum(1,2)          # two arguments given: 3
mysum(1)            # first argument given: 11
mysum(a=i1,b=i1)    # assignment is clearer with named variables: 4
mysum(b=23,a=10)    # order can change with named variables: 33
mysum()             # both arguments have defaults and are optional: 33

# PLOTTING
plot(avg_day_inflammation)
plot(min_day_inflammation)
plot(max_day_inflammation)

# COMBINE ACTIONS WITH FUNCTIONS
# read a generic file, make a data frame of it, compute 3 statistics of the data in each column, plot statistics
# defining the function operations (no calculation occurs)
analyze <- function(filename){
    dat <- read.csv(file = filename, header=FALSE)
    min_day_inflammation <- apply(dat, 2, min)
    plot(min_day_inflammation)
    max_day_inflammation <- apply(dat, 2, max)
    plot(max_day_inflammation)
    avg_day_inflammation <- apply(dat, 2, mean)
    plot(avg_day_inflammation)
}
# perform 'calculation' with one files at a time
analyze('data/inflammation-01.csv')
analyze('data/inflammation-02.csv')
analyze('data/inflammation-03.csv')


