#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Damped Spring-mass Oscillator",
  route: "damped=oscillator",
  label: <sec:damped-osc>,
)
The first example to be considered is the classic spring-mass-dashpot system in physics.


#figure-wrapper(figure(potential-frame(image("/assets/image.png"))))

Refer to the diagram @poonen2025_1803notes above. An example of a damped spring-mass oscillator is when a cart with mass $m$ is constraint to one-dimensional movement along the $x$-axis. It is subjected to three forces, to its left a spring following Hooke's law proportional to displacement from equilibrium $vb(F) = - k vb(x)$, its right a dashpot, which is a damping device with force proportional to speed and reverse to velocity with $abs(F_d) =c dot(x)$, and external force.

Consider not the external force first, with Newton's second law, $ m dot.double(x) = - c dot(x) - k x \ ==> dot.double(x) + c/m dot(x) + k/m x = 0. $

This model may describe the mechanism that automatically closes the door while preventing it from slamming shut. To reach the state of the closed door as fast as possible, the $c/m$ and $k/m$ may be chosen based on this model, with $x$ describing the angle of the door from being closed. When the characteristic equation has two complex roots, the trigonometric term makes the door oscillate while the two real roots case have $k/m$ to be too high that the door closes slowly. However, the repeating roots case closest the door as fast as possible without overshoot, hence optimal.

#example[
  Show that an a damped oscillator started with $dot(x) = 0$ and characteristic equation with two distinct real roots never cross equilibrium for $t>0$.
]
#solution[
  Let the equation that models the damped oscillator be $ dot.double(x) + p dot(x) + q x = 0. $ Let the solution be $ x = c_1 e^(r_1 t) + c_2 e^(r_2 t). $ Since $dot(x) = 0$, $ c_1 r_1 + c_2 r_2 = 0==> c_1/c_2 = - r_2/r_1. $
  Assume for contradiction, that $x(t_0) = 0, quad t_0 > 0$. Then, $ c_1 e^(r_1 t_0) + c_2 e^(r_2 t) = 0, $ giving $ e^((r_1 - r_2) t_0) = - c_2/c_1 ==> t_0 = ln(- c_2/c_1)/(r_1 - r_2) = ln(r_1/r_2)/(r_1 - r_2) . $

  Since both $r_1$ and $r_2$ are negative, as the oscillator is damped (or $p, q > 0$), assume WLOG that $ r_1 < r_2 < 0. $ Then, $r_1/r_2 > 1$. Thus, the numerator is positive while the denominator is negative, $t< 0$.
]

#example[
  When its characteristic equation has two distinct real solutions, the damped oscillator crosses the equilibrium at most once.
]
#solution[
  Setting $dot(x) = 0$, $ c_1 r_1 e^(r_1 t) + c_2 r_2 e^( r_2 t) = 0. $ Reasonably, assume the system approaches equilibrium as time goes to $oo$, depending on coefficients, the there is at most one solution to the equation above.

  However, if there are more than one root, for $lim_(t-> oo) y = oo$, there must be at least two critical points, which is not satisfied.
]

The case where there is no external force is now rather completely analyzed. Thus, now consider an external force term, with the new equation $ m x'' + b x' + k x = f(x). $
In the door example, this represents the case when a person is pushing the door with force $f(t)$.
