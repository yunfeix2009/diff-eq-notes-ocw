#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Linear First-order Differential Equations",
  route: "linear",
  label: <sec:linear-first>,
)

The linear first-order differential equation @def:linear is one type of first-order DE that is solvable. This section discusses the technique used to solve it.
#lbl(<def:linear-eqn>, definition[
  The standard form of a linear first-order differential equation is $ y' + p(x) y = q(x). $
])

In order to solve this equation, the primary motivation is to rewrite $y' + p(x) y$ as $(u(x) y)'$ by multiplying both sides by $u(x)$ for certain $u(x)$. Hence, the following equation $ u(x) y'+ u(x)p(x) y = (u(x) y)' $ gives $ u(x) p(x) = u'(x) & ==> p(x) = u'/u \
                  & ==> integral p(x) dif x = ln u #tag[(ignore $C$ here as\ any $u(x)$ suffice)] \
                  & ==> u(x) = e^(integral p(x) dif x). $

Thus, the differential equation could be solved as $ & quad quad u(x) y = integral (u(x) q(x)) dif x \
& ==> y = (integral (u(x) q(x)) dif x)/u(x). $ This method is known as _integrating factor_, where $u(x)$ is specifically the integrating factor.

Although the formula is almost never used in practice, for completeness, it is included here.
#lbl(
  <thm:linear-ode>,
  theorem[ For the equation in @def:linear-eqn, the general solution is $ y(t) = e^(-integral p(t) dif t) integral(q(t) e^(integral p(t) dif t) dif t) + C e^(- integral p(t) dif t). $],
)

#example[
  Solve the differential equation $ x y' - y = x^3. $
]
#solution[
  Rewriting in standard form gives $ y' - 1/x y = x^2 $ (Notice that this step is justified as $x = 0$ only provides the trivial solution). $ u(x) = e^(integral -1/x dif x) = 1/x. $ Thus, $ & quad quad 1/x y' - 1/x^2 y = (1/x y)' = x \
  & ==> 1/x y = 1/2 x^2 + C \
  & ==> 1/2 x^3 + C x. #qedhere $
]

#example[
  Solve the differential equation $ (1+(cos x) y ) y' - (sin x )y = 2x. $
]
#solution[
  $
    & quad thin thin thin thin (1+(cos x))y' - (sin x )y = 2x \
    & ==> y' - (sin x)/(1+cos x) y = (2x)/(1+cos x).
  $
  $
    u(x) & = e^(integral - (sin x)/(1+cos x) dif x) \
         & = 1+ cos x #tag[("u sub")]
  $

  However, multiplying back gives the initial equation. Thus, $ (1+(cos x) y ) y' - (sin x )y = (u(x) y)' = 2x \
  ==> y = (integral 2x dif x)/u(x) = (x^2 +C)/(1+cos x). #qedhere $
]


The special thing about linear equations is that they satisfy the superposition principle, or from linear algebra's point of view, fix the coefficient of $y$, the map from $q(t)$ to the steady-state solution is linear.
