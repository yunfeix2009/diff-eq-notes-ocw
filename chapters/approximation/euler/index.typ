#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Euler Method",
  route: "euler",
  description: "approximating the solution of a differential equation with euler's method. ",
)
The Euler method of approximating numerically the solution to a differential equation was one of the earliest of such attempts. Interesting to note that Euler did not use this method to compute the solutions directly, but used it to show the existence of a solution. However, this method is used for approximation in today's computational aids.

First, we present its application in solving first order ODE's, $ cases(y' = f(y, x), f(x_0) = y_0). $

It may be easily shown that if $x_(n+1) = x_n + h$, $ cases(y_(n+1) = y_n + A, A= f(x_0, y_0)). $

With this recursive equation and relatively small $h$, an approximation to the solution of $ cases(y' = f(y, x), f(x_0) = y_0) $ could be obtained.
