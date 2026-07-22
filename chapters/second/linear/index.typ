#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "General Linear Second-order Differential Equations",
  route: "linear",
  label: <sec:linear-second>,
)

Now the homogeneous case is solved with knowing how to find two specific solutions, we aim to solve the inhomogeneous case.
The standard form of this case is $ y'' + p(x) y' + q(x) y = f(x). $ The $f(x)$ term is the input term.

By convention, we make the following definition. #lbl(<def:ahe>, definition[The _associated homogeneous equation_ is one that may be written in the form of $ y'' + p(x) y' + q(x) y = 0. $])
Its solution is usually denoted with $y_c$.

In order to solve such a linear second-order ODE, finding one particular solution and the solution to its homogeneous case $f(x) = 0$ is enough, by the following theorem.
#lbl(<thm:particular>, theorem[
  Fix linear operator $L$ such that $ L (y) = f(x). $ Then, given $f(x)$, the general solution of $y$ is $y_p + y_c$ where $y_p$ is a particular solution and $y_c$ is a homogeneous solution (one that solves $L(y) = 0$).
])
#proof[
  It suffices to show that $y_p + y_c$ is a solution and that any solution could be written in the form of $y_p + y_c$ for a fixed $y_p$ and a homogeneous solution $y_c$.

  To show that $ L(y_p + y_c) = f(x), $ use the fact that $L$ is a linear operator, $ L(y_p + y_c) = L(y_p) + L_(y_c) = f(x) + 0 = f(x). $

  Fix solution $r$, then by definition $ cases(L(r) = f(x), L(y_p) = f(x)). $ Subtracting gives $ L(r) - L(y_p) = L(r - y_p) = 0, $ meaning $r - y_p$ is a homogeneous solution. So, $ r = y_p + (r - y_p) $ is a sum of the particular solution and a homogeneous solution.
]

As a quick verification of this theorem, consider the first-order linear system with constant coefficient, @def:linear-const-coe-first. Its solution, $ y(t) = e^(-k t) (integral q(t) e^(k t) dif t + C) $ has the homogeneous term $C e^(-k t)$ and the particular solution $ e^(-k t) integral q(t) e^(k t) dif t. $

Now return to the second-order linear equation.
It is of interest to determine whether the solution $ y = y_p + c_1 y_1 + c_2 y_2 $ has a steady-state. Since $y_p$ is not known, assume it does not vanish, then $y$ reaches a steady-state only if the homogeneous solution, $c_1 y_1 + c_2 y_2$ vanishes. Through case by case analysis, this occurs, without constraining the initial value, exactly when the real part of all the critical solutions is negative.
