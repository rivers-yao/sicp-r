# Square Roots by Newton's method
sqrt_iter <- function(guess, x) {
  if( is.good_enough(guess, x) ) {
    guess
  } else {
    sqrt_iter(improve(guess, x), x)
  }
}
  
improve <- function(guess, x) {
  average(guess, (`/` (x, guess) ))
}

average <- function(x, y) {
  (x + y)/2
}

is.good_enough <- function(guess, x) {
  `<`( abs( (guess^2 - x) ) , 0.001 )
}

#--- Main call
sqrt <- function(x) {
  sqrt_iter(1, x)
}

sqrt(9)


#==========================================================================
# Now the existing program consists of separate procedures, but functions like
# improve(), average(), average() clutter up our minds. Thus, we would like
# to localize these subprocedures, hiding them inside sqrt() so that sqrt()
# could coexist with other succesive approximations, each having its own private
# is.good_enough() procedures
#============================================================================

average <- function(x, y) {
  (x + y)/2
}

# The lexical scoping works is because the x we input is a fixed number 
sqrt <- function(x) {
  is.good_enough <- function(guess) {
    `<`( abs( (guess^2 - x) ) , 0.001 )
  }
  improve <- function(guess) {
    average(guess, (`/`(x, guess)))
  }
  
  sqrt_iter <- function(guess) {
    if( is.good_enough(guess) ) {
      guess
    } else {
      sqrt_iter(improve(guess))
    }
  }
  #--- Main Call
  sqrt_iter(1)
}


sqrt(9)
