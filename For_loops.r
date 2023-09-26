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


## exsersize Summing values

ex_vec <- c(4,8,15,16,23,42)

total <- function(vec) {
  vec_sum <- 0
  for (num in vec){
    vec_sum <- vec_sum + num
  }
  return(vec_sum)
}

total(ex_vec)




## exsersize Exponentiation


expo <- function(base, power){
  result <- 1
  for (i in seq(power)) {
    result <- result * base
  }
  return(result)
}

expo(2,4)

