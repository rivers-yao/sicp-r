#1.1.2 prefix expression
`<-`(size, 2)
`*`(5, size)
`<-`(pi, 3.14159)
`<-`(radius, 10)

#1.1.2 prefix expression for multiple input 
`<-`(circumference , Reduce(`*`, c(2, pi, radius)))

#1.1.4 Complex process (define (square x) (* x x))
`<-`(square, function(x) `*`(x,x))
`<-`(square, function(x) x * x)
square <- function(x) x * x

# sum of square
`<-`(sum_of_squares, function(x, y) `+`(square(x), square(y)))
sum_of_squares(3, 4)

# Constructing further procedures by using sum_of_squares as a building block
`<-`(f, function(a) sum_of_squares( `+`(a, 1), `*`(a, 2)))
f(5)
