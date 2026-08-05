#import "/lib.typ": *

#show: docs-chapter.with(
  title: "Systems of Differential Equations",
  route: "system-ode",
  label: <sec:system>,
  children: [
    #include "linear-constant-coe/index.typ"
    #include "non-linear/index.typ"
    #include "geo/index.typ"
    #include "app/index.typ"
    #include "final-exam.typ"
  ],
)

In this section, we focus on how to solve systems of differential equations, rather than one.
Since the discussion on differential equations is largely limited to ODE's, a system means numerous dependent variables and exactly one independent variable.

Mostly, due to difficulty in finding a general solution to them, linear systems are the primary focus of this chapter.

Formally, linear systems are those in the form of $ cases(x_1' = f_1(t, x_1, x_2, dots), x_2' = f_2(t, x_1, x_2, dots), quad quad quad quad dots.v). $

A heuristic argument grounded on number of times of integration may show that the total number of constants a system has is equal to the sum of the highest orders in each system.

#lbl(<def:node>, definition[
  For a system, define a fixed point where $vb(x)' = f(vb(x))$. Those that are stable are termed sink node while those that are unstable are termed source node.
])
