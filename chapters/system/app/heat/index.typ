#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Heat with Numerous Systems",
  route: "heat-systems",
  label: <sec:heat-systems>,
)

Previously, in @sec:first-app, heat transfer between two mediums, each assumed to have instant heat stabilization, was modeled with Newton's law of heat, @eqn:newton-heat.

For example, consider putting an egg, with yoke and white considered separately due to different heat characteristics, into a water bath. Assume instant heat diffusion within each component and let the temperature of the water to be $T_e$, the input, temperature of the yoke to be $T_1$ and temperature of the white to be $T_2$.

Then, the temperature may be modeled as $ cases(dv(T_1, t) = a(T_2 - T_1), dv(T_2, t) = a(T_1 - T_2) + b(T_e - T_2)) thin thin . $

In standard form, $ cases(T'_1 = -a T_1 + a T_2, T'_2 = a T_1 - (b +a) T_2 - b T_e). $

With constants $a = 2$ and $b = 3$ and $T_e = 0$ (ice bathing the egg is entirely meant to give a homogeneous equation), find the evolution of the temperature of the yoke and white of the egg, @emp:heat-system describes the situation.
