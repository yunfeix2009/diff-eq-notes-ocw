#import "/lib.typ": *

#show: docs-chapter.with(
  title: "Higher-order Differential Equations",
  route: "high-order",
  label: <sec:high>,
  children: [
    #include "linear/index.typ"
  ],
)

Differential equations are difficult to solve in general, especially in higher orders. In this section, we examine elementary techniques to solve higher-order ($>2$) ODE's. Of course, there would be strong constraints to the kinds of ODE's to be solved here.
