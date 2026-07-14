#import "../../lib.typ":*

#show: docs-chapter.with(
  title: "Numerical Approximations",
  route: "approx",
  description: "approximating the solution of a differential equation numerically. ",

  children: [
    #include "euler/index.typ"
  ],
)

Often, the solution to a given differential equation would be difficult to find, and sometimes impossible in the sense that the solution cannot be represented as a combination of the elementary functions. Thus, a numerical approximation is necessary occasionally. In this section, we present methods on numerical approximations. 