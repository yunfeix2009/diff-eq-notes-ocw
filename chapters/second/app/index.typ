#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Modeling Physical Systems with Second-order ODE",
  route: "application",
  label: <sec:second-app>,
)

The first example to be considered is the classic spring-mass-dashpot system in physics.

#figure-wrapper(figure(potential-frame(image("/assets/image.png"))))

Refer to the diagram @poonen2025_1803notes above. The cart with mass $m$ is constraint to one-dimensional movement along the $x$-axis. It is subjected to three forces, to its left a spring following Hooke's law proportional to displacement from equilibrium $vb(F) = - k vb(x)$, its right a dashpot, which is a damping device with force proportional to speed and reverse to velocity with $abs(F_d) =c dot(x)$, and external force.

Consider not the external force first, with Newton's second law, $ m dot.double(x) = - c dot(x) - k x \ ==> dot.double(x) + c/m dot(x) + k/m x = 0. $

This model may describe the mechanism that automatically closes the door while preventing it from slamming shut. To reach the state of the closed door as fast as possible, the $c/m$ and $k/m$ may be chosen based on this model, with $x$ describing the angle of the door from being closed. When the characteristic equation has two complex roots, the trigonometric term makes the door oscillate while the two real roots case have $k/m$ to be too high that the door closes slowly. However, the repeating roots case closest the door as fast as possible without overshoot, hence optimal.
