## funtion to plot data from an inflammation file

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

## run the function on inflammation_01.csv
analyze("data/inflammation-1.csv")


## create list of target files
## using regular expression to specify a subset of files
file_list <- list.files(path = "data", pattern = "inflammation-[0-9]{2}.csv", full.names = TRUE)

for (f in file_list) {
  analyze(f)
  print(f)
}



## plots to pdf
pdf("results/inflammation-01.pdf")
analyze("data/inflammation-01.csv")
dev.off()


output_list <- gsub("csv", "pdf", file_list)
output_fullnames <- gsub("data", "results", output_list)

for (f in file_list) {
  f2 <- gsub("csv", "pdf", f)
  f3 <- gsub("data", "results", f2)
  print(f3)
  pdf(f3)
  analyze(f)
  print("this is a plot")
  dev.off()
  }

num <- 37

if (num < 100) {
  print("smaller than 100")
} else {
  print("great")
}


sign <- function(num) {
  if (num > 0) {
    return(1)
  } else if (num == 0) {
    return(0)
  } else if (num < 0) {
    return(-1)
  }
}

sign(0)


###   >= greater than or equal
###   <= smaller than or equal

num <- 37

if (num > 0 && num > 50) {
  print("both are true")
} else {
  print("At least one of the two is not true")
}
  
if (num > 0 || num > 50) {
  print("at least one is true")
}  else {
  print("neither part is true")
}

