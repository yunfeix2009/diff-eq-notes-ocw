#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Modeling Physical Systems with Second-order ODE",
  route: "application",
  label: <sec:second-app>,
  children: [
    #include "oscillator/index.typ"
    #include "circuit/index.typ"
    #include "resonance/index.typ"
  ],
)

Here, we model (generally physical) systems with second order differential equation and based on the differential equation, their solution, and their properties, insights will be drawn on the system. Since Newton's second law relates force to the second-order derivative of displacement, if the force depends on the second-order or less of displacement, then the resulting differential equation would be second-order. Hence, most Newtonian mechanics scenarios may be modeled with second-order differential equation(s).
