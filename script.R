display <- function(a=1, b=2, c=3){
    result <- c(a, b, c)
    names(result) <- c("a","b","c")
    return(result)
}

display
display()
display(22,33,44)
display(c=2,33)
display(b=2,c=7,a=3)