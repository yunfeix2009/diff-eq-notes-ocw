#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Modeling Physical Systems with First-order ODE",
  route: "application",
  label: <sec:first-app>,
)


Despite being simple and special as in a form of differential equation, linear first-order differential equations could be used to model many systems.

+ Heat conduction / concentration diffusion

  The model is as following. An object of temperature (/concentration) is placed in an environment of different, fixed temperature (/concentration). Both the environment and the object have a uniform temperature (/concentration) at all times. The rate at which the temperature (/concentration) change is proportional to the difference in temperature (/concentration) between the object and the environment, with positive ratio $k$, conductivity. $ dv(T, t) = k (T_e - T). $ Notice that to keep $k$ positive, the right side must be $T_e - T$ rather than $T-T_e$.

  This equation could be re-written in standard form as $ T' + k T = k T_e, $ where $k$ and $T_e$ may also be treated as functions of $t$, to better model the system. In order to solve this system, $ u(t) := e^(integral k(t) dif t). $

  Then, $ e^(integral k(t) dif t) T = integral_t (k T_e e^(k(t) dif t)) dif t + C \ ==> T(t) = e^(- integral k(t) dif t) integral_t (k T_e e^(k(t) dif t)) dif t + C e^(- integral k(t) dif t). $

+ Mixing
+ Decay (including some banking)
+ Certain Kinematics
