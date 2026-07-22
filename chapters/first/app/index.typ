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

  This model describes a tank of volume $V$ with salt solution inside. Salt solution is flowing in through one hole and flowing out through another hole. Assume instant mixing within the tank. Let the amount of salt in the tank at time $t$ be $x(t)$, the inflow rate (which is the outflow rate, assume incompressibility of liquid) to be $r$ (volume per time). Also, at time $t$, the liquid flowing in has concentration of $C_e (t)$.

  To model the amount of salt in the tank, $ dv(x, t) = C_e dot r - x(t) dot r/V. $ Define $C(t) := x(t)/V$, representing concentration of the tank. The equation becomes $ dv(x, t) = V dv(C, t) = r (C_e - C(t)), $ or $ dv(C, t) + r/V C = r C_e. $

  To extract physical properties from this mathematical model, consider the fractional flow, $k := r/V$. Suppose, for instance, that the tank models a lake while chemicals of a certain concentration enters. Suppose further that the source of pollution is a factory, whose amount of pollution wrt time may be modeled as a sinusoid, then the concentration in the lake is an amplified sinusoid that approaches the concentration of the input. A large $k$ would mean smaller phase lag and larger amplitude, vice versa.
+ Decay (including some banking)

  consider the scenario where one element $A$, with initial amount $A_0$ decays into $B$ which decays further into other elements. Given $dv(A, t) = -k_1 A$ and $B$ decays with a constant $k_2$. Then, $ dv(B, t) = k_1 A - k_2 B. $ So, $ dv(B, t) + k_2 B = A_0 e^(-k_1 t). $
+ Circuits

  Fix a resistor-capacitor circuit with all ideal components. The resistance of the resistor is $R$ while the capacitance of the capacitor is $C$ and the electromotor force of the batter is $epsilon(t)$. By Kirchhoff's loop rule, the voltage change across the entire circuit must be $0$. Therefore, let $q$ be the amount of charge on the capacitor, $ R dv(q, t) + q/C = epsilon(t). $
