#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Circuits with Inductors",
  route: "circuit-inductor",
  label: <sec:circuit-inductor>,
)

This section extends from the resistor-capacitor circuit discussed in @sec:first-app, and introduces the inductor.

Recall from electricity and magnetism that the voltage drop across an induct of inductance $L$ is $L I'$, where $I'$ is the change in current.

Thus adding an inductor of inductance $L$ in to the resistor-capacitor circuit we had, with Kirchhoff's loop rule again, $ L I' + R I + q/C = epsilon(t). $ Differentiating both sides gives $ L I'' + R I' + I/C = epsilon(t), $ a linear second-order differential equation (discussed in @sec:linear-second).
