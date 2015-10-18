y <- function(x) {(x-3)^2+2*(x-3)^2+3*(x-15)^2+sin(100*x)}

optimise(y, c(0,100))
optimise(y, c(0,15))
optimise(y, c(9,12))
optimise(y, c(10,11))

plot(y,0,30)

# we do not get the same optimum each time
# we get local optimums (not global optimum)