#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Linear ODE's",
  route: "linear-ode",
  label: <sec:linear-ode>,
  children: [
    #include "laplace/index.typ"
    #include "const-coe/index.typ"
  ],
)

One type of ODE fortunately solvable is those that are linear, with the form of $ a_n y^((n)) + a_(n-1) y^((n-1)) + dots.c + a_2 y'' + a_1 y' + a_0 y = f(t), $ where $a_i$ are functions of $t$.
