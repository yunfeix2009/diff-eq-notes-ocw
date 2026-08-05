#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Linear ODE's",
  route: "linear-ode",
  label: <sec:linear-ode>,
  children: [
    #include "homo/index.typ"
    #include "const-coe/index.typ"
  ],
)

One type of ODE fortunately solvable is those that are linear, with the form of #lbl(<eqn:linear-ode>, $ a_n y^((n)) + a_(n-1) y^((n-1)) + dots.c + a_2 y'' + a_1 y' + a_0 y = f(t), $) where $a_i$ are functions of $t$.
Per @thm:particular, finding the general homogeneous solution and a particular solution would suffice for finding the general solution to a general linear ODE.
