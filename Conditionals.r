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
