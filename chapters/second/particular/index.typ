#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Particular Solutions to Linear Second-order Differential Equations",
  route: "particular",
  label: <sec:particular-second>,
  children: [
    #include "com-exp/index.typ"
    #include "fourier/index.typ"
  ],
)

Knowing the general solution to homogeneous linear second-order ODE's and @thm:particular, a linear second-order ODE may be solved as long as a particular solution of it could be found, which is the aim of this section.

For different inputs, there are different applications and different ways to solve them, therefore discussed separately.

#definition[
  Define the characteristic polynomial of $ y'' + A y' + B y = f(x) $ as $ p(x) = x^2 + A x + B. $
]
Hence, let $D := dv(, x)$, the given equation is equivalent to $ (D^2 + A D + B) y = f(x). $

