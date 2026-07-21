#import "/lib.typ": *

#show: docs-chapter.with(
  title: "Second-order Differential Equations",
  route: "second-order",
  label: <sec:second>,
  children: [
    #include "linear-constant-coe/index.typ"
    #include "app/index.typ"
  ],
)

In this section, we focus on how to solve second-order differential equations, systems they model, and what to learn from the equation and solution, whose general standard form is $ y'' + p(x) y' + q(x) y = r(x). $ The focus would be second-order linear equation.
