#import "../../lib.typ":*

#show: docs-chapter.with(
  title: "Numerical Approximations",
  route: "approx",
  description: "approximating the solution of a differential equation numerically. ",

  children: [
    #include "euler/index.typ"
  ],
)