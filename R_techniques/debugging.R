#====================================================
#Debugging on an 'lapply' call on anonymous function
#SOLUTION:insert a browers() in it
#====================================================

lapply( 1:3, function( x ){
  browser() # This is the key
  x + 1
  }
)


# Here is the output from the console after "sourcing" in the statements above:
# > source('clipboard')
# Called from: FUN(1:3[[1L]], ...)
# Browse[1]> ls()
# [1] "x"
# Browse[1]> x
# [1] 1
# Browse[1]> n
# debug at clipboard#3: x + 1
# Browse[2]> x
# [1] 1
# Browse[2]> n
# Called from: FUN(1:3[[2L]], ...)
# Browse[1]> x
# [1] 2
# Browse[1]> n
# debug at clipboard#3: x + 1
# Browse[2]>
#   Called from: FUN(1:3[[3L]], ...)
# Browse[1]> n
# debug at clipboard#3: x + 1
# Browse[2]> x
# [1] 3
# Browse[2]> n
# >


