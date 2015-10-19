#OPTIMISE

y <- function(x) {(x-3)^2+2*(x-3)^2+3*(x-15)^2+sin(100*x)}

optimise(y, c(0,100))
optimise(y, c(0,15))
optimise(y, c(9,12))
optimise(y, c(10,11))
plot(y,0,30)

# we do not get the same optimum each time
# we get local optimums (not global optimum)

#INTEGRATE

function(x) {x*sin(x)}
integrate(function(x) {x*sin(x)}, lower = -7e5, upper = 7e5, subdivisions=1e7)
system.time(integrate(function(x) {x*sin(x)}, lower = -7e5, upper = 7e5, subdivisions=1e7))

#PARALLEL

#make subintervals of the given interval (-7e5,7e5)

library(parallel)
cl <- makePSOCKcluster(16)  #1.56
system.time(parLapply(cl,(-7:7)*1e5,(function(x) { integrate(function (x) { x*sin(x) }, x, x+1e5, subdivisions = 1e7)})))
stopCluster(cl)







