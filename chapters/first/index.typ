#import "/lib.typ": *

#show: docs-chapter.with(
  title: "First-order Differential Equations",
  route: "first-order",
  label: <sec:first>,
  children: [
    #include "linear/index.typ"
    #include "constant-coe/index.typ"
    #include "autonamous/index.typ"
    #include "change-var/index.typ"
    #include "app/index.typ"
  ],
)

In this section, we focus on how to solve first-order differential equations, systems they model, and what to learn from the equation and solution. From Overview, we categorized first-order differential equations by the equation @eqn:linear-diff-eq1.

First-order differential equations could be further categorized by linearity and homogeneity.
#lbl(<def:linear>, definition[
  A first-oder DE is linear iff it could be written in the standard form of linear ODE's, @def:linear-eqn.

])
#lbl(<def:homo>, definition[
  A first-order ODE is homogeneous iff it could be written in the form of $ y' = f(y/x). $
])

Recall that homogeneous equations are invariants under zoom, when $x$ and $y$ are scaled by the same factor.
