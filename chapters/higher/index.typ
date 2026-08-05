#import "/lib.typ": *

#show: docs-chapter.with(
  title: "Higher-order Differential Equations",
  route: "high-order",
  label: <sec:high>,
  children: [
    #include "fourier/index.typ"
    #include "laplace/index.typ"
    #include "linear/index.typ"
    #include "app/index.typ"
    #include "exam-three.typ"
  ],
)

Differential equations are difficult to solve in general, especially in higher orders. In this section, we examine elementary techniques to solve higher-order ($>2$) ODE's. Specifically, this chapter concentrates on two general methods known as Fourier series and Laplace transform. Of course, there would be strong constraints to the kinds of ODE's to be solved here, namely linear.
