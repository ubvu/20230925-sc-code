# list of words
best_practice <- c("Let", "the", "computer", "do", "the", "work")
list_numbers <- c(1, 2, 5, 6, 7, 8)


# function to print the list
print_words <- function(sentence) {
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}

print_words(best_practice)
print_words(list_numbers)

## basic loop
for (i in best_practice) {
  print(i)
}

## loop with printing and counting
len <- 0
for (word in best_practice) {
  len <- len + 1
  print(word)
  print(len)
}


## function for counting with printing
loop_funtion <- function(sentence){
  len <- 0
  for (word in sentence) {
    len <- len + 1
    print(word)
    print(len)
  }
  return(len)
  }

print(loop_funtion(best_practice))
