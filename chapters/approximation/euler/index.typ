#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Euler's Method",
  route: "euler",
  description: "approximating the solution of a differential equation with euler's method. ",
)
The Euler method of approximating numerically the solution to a differential equation was one of the earliest of such attempts. Interesting to note that Euler did not use this method to compute the solutions directly, but used it to show the existence of a solution. However, this method is used for approximation in today's computational aids.

First, we present its application in solving first order ODE's, $ cases(y' = f(y, x), f(x_0) = y_0). $

It may be easily shown that if $x_(n+1) = x_n + h$, $ cases(y_(n+1) = y_n + A, A= f(x_0, y_0)). $

With this recursive equation and relatively small $h$, an approximation to the solution of $ cases(y' = f(y, x), f(x_0) = y_0) $ could be obtained.

As for any numerical methods, knowing the method itself does not suffice. Hence, we analyze the error bound.

Similar to the direct tangent line approximation, the result of the approximation with Euler's method is smaller than desired when the function concaves up and greater than the desired value when the function concaves down. To find whether the second derivative is positive or negative, we take the derivative of $y' = f(y, x)$ again. Usually, this step is very doable as taking derivatives is usually systematic.

Hence, depending on whether the curve is concave or convex, (in the case where its second order derivative is $0$, the estimation from Euler's method becomes exact), Euler's method introduces a systematic error that is suboptimal for an estimation method.

Increasing the approximation accuracy at the expense of the computational cost, decreasing the step size reduces the error in proportion, $e asymp c h$. Thus, we categorize Euler's method is a first-order method. Note that the first-order here has nothing to do with the first order differential equation, discussed in @sec:first.

Alternatively, to reduce the systematic error of this method, the Heun's method (/improved Euler's method/modified Euler's method/RK (Runge Kutta) 2) may be used.

The key idea is to use the slope given by the average of the slope at the current point and the slope of the next point as given by Euler's method.

Let the slope at the current point given by Euler's method be $A_n$ and the slope at the next point (the one given by Euler's method) be $B_n$. Then, the iteration is $ cases(x_(n+1) = x_n + h, y_(n+1) = y_n + (A_n + B_n)/2 h). $ $ A_n = f(y_n, x_n), quad B_n = f(tilde(y)_(n+1), x_(n+1)) = f(y_n + h A_n, x_(n+1)) $ where $tilde(y)$ represent the $y$ given by Euler's method.
The error term of of approximations obtained via this method becomes second order, $e asymp c h^2$.

This method could be further generalized to, for instance, RK4, commonly used in approximations in computers, where the slope is $ (A_n + 2 B_n + 2 C_n + D_n)/6. $ However, in terms of computations, to obtain the same accuracy, the same amount of compute (in terms of evaluation of $y' = f$) is used for Euler's method and RK.
