#A
x1 <- rnorm(100000, 252, 3)
sum(x1 > 250) / length(x1)

1 - pnorm(250, 252, 3)

#B 
sim.task <- function(params...) {
  cups <- rnorm(5, 252, 3)
  sum(cups > 250) <= 2
}

prob.task <- function(n, params...) {
  res <- replicate(n, sim.task())
  sum(res) / n
}

prob.task(100000)

prob.one = 1 - pnorm(250, 252, 3)
pbinom(2, 5, prob.one)