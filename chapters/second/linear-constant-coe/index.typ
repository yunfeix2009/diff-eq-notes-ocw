#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Linear Second-order Differential Equations with Constant Coefficient",
  route: "linear",
  label: <sec:linear-second>,
)

As usual, we begin with the simplest example of second-order ODE, one with constant coefficients and is homogeneous. The standard form of such is $ y'' + p y' + q y = 0. $ Here, consider only the real differential equation, where the independent variable $t in RR$ and all coefficients, $p$ and $q$ are also real.

To solve this equation in general, it suffices to to find two independent solutions as any solution will be a linear combinations of the two. In other words, the solution space is a two dimensional vector space.

To intuitively see why this is true, consider the following argument. With abuse of notations, let $D := dv(, x)$, $ (D^2 + p D + q) y = 0. $ For this equation to be true for a general $y$, $ D^2 + p D + q = 0, $ which is a quadratic equation with two (that may be complex or repeating) roots. The fact that the solution space forms a vector space may be verified by checking the linear combination of two independent solutions also form a solution.

Thus, the goal of finding the general solution to this equation becomes finding two independent particular solutions. This may be done by guessing the solution of form $e^(r t)$, then pin down the valid values of $r$.

$ r^2 e^(r t) + p r e^(r t) + q e^(r t) = e^(r t) (r^2 + p r + q) = 0 \ ==> r^2 + p r + q = 0. $ Define the _characteristic equation_ of the given differential equation to be $ r^2 + p r + q = 0. $ In fact, several key properties of the solution to the given differential equation may be inferred from roots of its characteristic equation.

However, there are three cases of the zeroes of the characteristic equation to be further considered.

The most straight forward case is when the characteristic equation has two distinct, real roots. Let then be $r_1$ and $r_2$. Since $e^(r_1 t)$ and $e^(r_2 t)$ are solutions to the differential equation, the general solution is $ y = c_1 e^(r_1 t) + c_2 e^(r_2 t). $ $c_1$ and $c_2$ may be decided given certain values of $y$ or $y'$. Specifically, two values must be given to pin down $y$, in comparison to one value required for the first-order case.

#example[
  Given $y(0) = 1, quad y'(0) = 0$, solve the differential equation $ y'' + 4 y' + 3y = 0. $
]
#solution[
  The characteristic equation is $ r^2 + 4r + 3 = 0. $ So, $r_1 = -3, r_2 = -1$, giving $ y = c_1 e^(-3 t) + c_2 e^(-1 t). $

  The initial conditions imply that $ cases(c_1 + c_2 = 1, -3 c_1 - c_2 = 0) ==> (c_1, c_2) = (-1/2, 3/2). $
  $ y= -1/2 e^(-3 t) + 3/2 e^(-t ). #qedhere $
]

Next, there may also be two distinct, complex roots. Since all coefficients of the characteristic equation $1, p, q in RR$, the two complex roots must be conjugates of each other. Let the two roots be $r_1, r_2 := a plus.minus b i$ and $u := Re(e^(r t)), quad v := Im(e^(r t))$, such that $e^(r t) = u + i v)$.

Hence, $ 0 & = (e^(r t))'' + p (e^(r t))' + q (e^(r t)) \
  & = (u + i v)'' + p (u + i v)' + q (u + i v)'' \
  & =(u'' + p u'' + q u) + i (v'' + p v' + q v). $ Since both the real and imaginary part is equal to $0$, both must be $0$, meaning $u$ and $v$ are solutions to the given equation. Moreover, they are independent. Thus, the general solution is $ y & = c_1 Re(e^((a + b i)t)) + c_2 Im(e^((a + b i)t)) \
  & = c_1 e^(a t) cos(b t) + c_2 e^(a t) sin(b t) \
  & = e^(a t) (c_1 cos(b t) + c_2 sin(b t)). $
With auxiliary angle method @thm:aam, $ y = e^(a t) C cos(theta - phi), $ for certain $C$ and $phi$.

#example[
  Given $y(0) = 1, quad y'(0) = 0$, solve the differential equation $ y'' + 4 y + 5 =0. $
]
#solution[
  The characteristic equation is $ r^2 + 4 r + 5 = 0, $ giving $ r = -2 plus.minus i. $
  The general solution is $ y= e^(-2 t) (c_1 cos(t) + c_2 sin(t)). $
  The initial condition gives $ cases(c_1 = 1, c_2 + -2 (c_1) = 0) ==> (c_1, c_2)= (1, 2). $
  So, $ y = e^(-2 t) (cos t + 2 sin t) = sqrt(5) e^(-2 t) cos (t - phi) $ where $phi =arctan(2)$.
]

Finally, there is the case where the characteristic equation has a double root, say $ (r + a)^2 = 0, quad r = -a. $ It may be verified that $t e^(-a t)$ is a solution and that it is independent of $e^(- a t)$. Hence, the general solution is $ y = c_1 e^(-a t) + c_2 t e^(-a t). $
