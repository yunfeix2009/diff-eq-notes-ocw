#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Step and Delta Function",
  route: "delta",
  label: <sec:delta>,
)

As much as mathematics, especially analysis, hates discontinuity, they are constantly present in engineering practically. For example, to the measurable extent, many quantities vary per the step function. #lbl(<def:step>, definition[$ H(t) = cases(1 &t< 0, -1 x > 0). $]) The value at $t =0$ is rather debated, hence not specified. As a move that would undermine the mathematical credibility of the writing, say a function $delta(t)$ is defined as $H'(t)$. #lbl(<def:delta>, definition[
  Define $ delta(t) := H'(t). $
])
The behavior of $delta$ is freaky in analysis, but nonetheless a "nice" function per Gilbert Strang @strang2015learn. For example, striking a golf ball would make the velocity function of it suddenly increase, to the workable accuracy, its acceleration at the instant skyrockets. In mathematical words, shoots to infinity.

First, by definition, $ integral_(-oo)^oo delta(t) dif t = 1. $
Hence, the shifting property of $delta$ becomes apparent. #theorem[
  For a function $f$ continuous at $0$, $ integral_(-oo)^oo delta(t) f(t) dif t = f(0). $
]
#proof[
  Since $lim_(t -> 0) f(t) = f(0)$, $ integral_(-oo)^oo delta f(t) dif t = f(0) integral_(-oo)^oo delta(t) dif t = f(0). #qedhere $
]
A more rigorous proof may be established on $epsilon-delta$ though does not necessarily offer more insights.

In terms of differential equations, examine the following example.
#example[
  Solve the differential equation $ y' = a y +delta(t - T), quad y(0) = 0, quad T> 0. $
]
#solution[
  For $0< t< T$, since $y' = a y$, $y(t) = 0$. When $t>=T$, the equation could be rewritten into $ y' - a y = delta(t - T). $ Multiplying both the integrating factor, $ (e^(-a t) y)' = e^(-a t) delta(t - T). $ Integrating gives $ e^(-a t) y & = integral e^(- a t) delta ( t- T) dif t \
             & = e^(- a T). $ Thus, $ y(t) = e^(a (t- T)), quad t >= T. $ Combining gives $ y(t) = cases(0 &"if" t <T, e^(a (t - T)) &"if" t>= T).#qedhere $
]
