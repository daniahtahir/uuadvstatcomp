#OPTIMISE

y1 <- function(x) {(x-3)^2+2*(x-3)^2+3*(x-15)^2+sin(100*x)}

optimise(y1, c(0,100))
optimise(y1, c(0,15))
optimise(y1, c(9,12))
optimise(y1, c(10,11))
plot(y1,0,30)

# we do not get the same optimum each time
# we get local optimums (not global optimum)

#INTEGRATE

y2 <- function(x) {x*sin(x)}
integrate(y2, lower = -7e5, upper = 7e5, subdivisions=1e7)
system.time(integrate(y2, lower = -7e5, upper = 7e5, subdivisions=1e7))
