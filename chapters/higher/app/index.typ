#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Applications of Higher-order ODE's and Techniques of Solving Them",
  route: "application",
  label: <sec:high-app>,
  children: [
    #include "convo/index.typ"
  ],
)

// Here, we model (generally physical) systems with second order differential equation and based on the differential equation, their solution, and their properties, insights will be drawn on the system. Since Newton's second law relates force to the second-order derivative of displacement, if the force depends on the second-order or less of displacement, then the resulting differential equation would be second-order. Hence, most Newtonian mechanics scenarios may be modeled with second-order differential equation(s).

Typically, most physical systems could be modeled with either first or second order ODE's, in comparison to higher-order. Techniques used in solving higher-order $(>2)$ ODE's are more or less the same. Hence, they are combined into one section.
