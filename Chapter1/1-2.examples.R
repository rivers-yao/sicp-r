# Tree recursion

# Fibonacci numbers recursive process
fib_recur <- function(n) {
  if ( n == 0 ){
    return(0)
  } else if( n == 1) {
    return(1)
  } else {
    return(fib(n-1) + fib(n-2))
  }
}

# Fibonacci numbers iterative process

fib_iter <- function(n) {
  iter(1, 0 , n)  
}

iter <- function(a, b, count) {
  if ( count == 0 ) {
    b
  } else {
    iter(a+b, a, count-1)
  }
}


#--- A very not expressive for loop
fib_for_iter <- function(n) {
  a <- 0
  b <- 1
  if( n == 0) {
    return(0)
  } else if( n == 1) {
    return(1)
  } else { 
    for ( i in 1:(n-1)) {
      res <- a + b
      a <- b
      b <- res
    }
    return(res)
  }
}