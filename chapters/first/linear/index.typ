#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Linear First-order Differential Equations",
  route: "linear",
  label: <sec:linear-first>,
)

The linear first-order differential equation is one type of first-order DE that is solvable.
#definition[
  The standard form of a linear first-order differential equation is $ y' + p(x) y = q(x). $
]

In order to solve this equation, the primary motivation is to rewrite $y' + p(x) y$ as $(u(x) y)'$ by multiplying both sides by $u(x)$ for certain $u(x)$. Hence, the following equation $ u(x) y'+ u(x)p(x) y = (u(x) y)' $ gives $ u(x) p(x) = u'(x) & ==> p(x) = u'/u \
                  & ==> integral p(x) dif x = ln u #tag[(ignore $C$ here as\ any $u(x)$ suffice)] \
                  & ==> u(x) = e^(integral p(x) dif x). $

Thus, the differential equation could be solved as $ u(x) y = integral (u(x) q(x)) dif x ==> y = (integral (u(x) q(x)) dif x)/u(x). $

#example[
  Solve the differential equation $ x y' - y = x^3. $
]
#solution[
  Rewriting in standard form gives $ y' - 1/x y = x^2 $ (Notice that this step is justified as $x = 0$ only provides the trivial solution). $ u(x) = e^(integral -1/x dif x) = 1/x. $ Thus, $ 1/x y' - 1/x^2 y = (1/x y)' = x \ ==> 1/x y = 1/2 x^2 + C \ ==> 1/2 x^3 + C x. #qedhere $
]

#example[
  Solve the differential equation $ (1+(cos x) y ) y' - (sin x )y = 2x. $
]
#solution[
  $
    & quad thin thin thin thin (1+(cos x))y' - (sin x )y = 2x \
    & ==> y' - (sin x)/(1+cos x) y = (2x)/(1+cos x).
  $
  $ u(x) = e^(integral - (sin x)/(1+cos x) dif x) = 1+ cos x #tag[second equality \ with "u sub"] $

  However, multiplying back gives the initial equation. Thus, $ & quad thin thin thin thin (1+(cos x) y ) y' - (sin x )y = (u(x) y)' = 2x \
  & ==> y = (integral 2x dif x)/u(x) = (x^2 +C)/(1+cos x). #qedhere $
]


Despite being simple and special as in a form of differential equation, linear first-order differential equations could be used to model many systems.

+ Heat conduction / concentration diffusion

  The model is as following. An object of temperature (/concentration) is placed in an environment of different, fixed temperature (/concentration). Both the environment and the object have a uniform temperature (/concentration) at all times. The rate at which the temperature (/concentration) change is proportional to the difference in temperature (/concentration) between the object and the environment, with positive ratio $k$, conductivity. $ dv(T, t) = k (T_e - T). $ Notice that to keep $k$ positive, the right side must be $T_e - T$ rather than $T-T_e$.

  This equation could be re-written in standard form as $ T' + k T = k T_e, $ where $k$ and $T_e$ may also be treated as functions of $t$, to better model the system. In order to solve this system, $ u(t) := e^(integral k(t) dif t). $

  Then, $ e^(integral k(t) dif t) T = integral_t (k T_e e^(k(t) dif t)) dif t + C \ ==> T(t) = e^(- integral k(t) dif t) integral_t (k T_e e^(k(t) dif t)) dif t + C e^(- integral k(t) dif t). $

  Notice that as $t-> oo$, $C e^(- integral k(t) dif t) -> 0$, the system approaches a fixed state that does not depend on its initial condition that determines $C$.
+ Mixing
+ Decay (including some banking)
+ Certain Kinematics
