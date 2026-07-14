#import "/lib.typ": *

#show: docs-chapter.with(
  title: "Preliminaries",
  route: "preliminaries",
  description: "review calculus concepts",
)
Although differential equations is one major application of calculus, not all of it is needed. Here, we review fundamental concepts of calculus that shall be kept sharp before diving into differential equations.

First, the derivatives of the following elementary functions must be known. $ dv(, x) c = 0\ dv(, x) x^n = n x^(n-1)\ dv(, x) sin x = cos x \ dv(, x) cos x = - sin x \ dv(, x) ln(x) = 1/x \ dv(, x) e^x = e^x. $

Along with the following rules for differentiation, the derivative of many functions could be found. Let $f(x)$ and $g(x)$ be differentiable functions on the interval of study. Then, $ dv(, x) (f(x) + g(x)) = dv(, x) f(x) + dv(, x) g(x)\ dv(, x) (f(x) dot g(x)) = f(x) dot dv(, x) g(x) + g(x) dot dv(, x) f(x) \ dv(, x) ( (f compose g) (x) ) = dv(f, g) (x) dot dv(g, x) (x). $

The Fundamental Theorem of Calculus, #lbl($ dv(, x) integral_0^x y(t) dif t = y(x), $, <eqn:ftc>) would also be useful.

Directly from @eqn:ftc, few differential equations could already be solved.
#example[
  Find a solution to the differential equation $ dv(y, t) = y + q(t). $
]
#solution[
  Observe that $ y(t) = integral_0^(t) e^(t - s) q(s) dif s $ satisfies $ dv(y, t) & = dv(, t) (e^t integral_0^x e^(-s) q(s) dif s) \
           & = e^t integral_0^x e^(-s) q(s) dif s + e^t dv(, t) (integral_0^t e^(-s) q(s) dif s) \
           & = y + e^t (e^(-t) q(t) ) \
           & = y + q(t). #qedhere $
]

Additionally, the expansion of a smooth function with Taylor's Series is significant.
#lbl(<thm:taylor>, theorem(
  [Taylor's Theorem],
  restate: true,
  restate-keys: (
    "def:underactuated-and-fully-actuated",
  ),
)[
  Given smooth function $f(x)$ and fix $a in RR$, $ f(x) = sum_(k=0)^oo (f^((k)) (a))/(k!) (x-a)^k. $
])


Moreover, the technique of separating variables is used to solve some elementary differential equations. 
#example[
  Find the general solution to the differential equation $ dv(y, x) = y^2. $
]
#solution[
  With abuse of notation, the equation could be manipulated into $ (dif y)/y^2 = dif x &==> integral (dif y)/(y^2) = integral dif x \ &==> -1/y = x + C \ &==> y = 1/(C-x). #qedhere $ 
]