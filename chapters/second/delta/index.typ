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
Hence, the shifting property of $delta$ becomes apparent. #lbl(<thm:delta>, theorem[
  For a function $f$ continuous at $0$, $ integral_(-oo)^oo delta(t) f(t) dif t = f(0). $
])
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

#example[
  Compute $ integral_(-oo)^oo delta(t) e^(t^2) dif t. $
]
#solution[
  By @thm:delta, $ "ori" = e^0 = 1. #qedhere $
]
#example[
  Compute $ integral_(-oo)^oo delta(t-2) e^(t^2 sin t cos (2t)) dif t. $
]
#solution[
  By @thm:delta, $ "ori" = e^(4 sin 2 cos 4) dif t. $
]
#example[
  Compute $ integral_(0^+)^oo delta(t) e^(t^2) dif t. $
]
#solution[
  $delta(t) = 0, quad t in (0, oo) ==> "ori" = 0 #qedhere$
]

#example[
  Find the generalized derivatives of $ f(t) = 3 u(t) - 2 u(t - 1) $ and $ g(t) = cases(t^2 &t<0, e^t &t>0), $ where $u$ is the step function.
]
#solution[
  $ f'(t) & = 3 delta(t) - 2 delta(t - 1) $ and $ g'(t) = cases(2t &t<0, delta(t) &t = 0, - e^(-t) & t> 0). #qedhere $
]


To study the responses to an impulse that is modeled by the delta function, it's best to apply Fourier decomposition. First consider the step function, make $H(t)$ a periodic function, $u(t)$ with period $2$ and $u(t) = H(t), quad -1<t<1$.

Notice that $ u(t) = 1/2 f(pi t) + 1/2 $ where $f(t)$ is defined in @emp:fourier-square. So, $ u(t) & = 1/2(sum_(i=0)^oo 4/((2k+1)pi) sin((2k+1) pi t)) + 1/2 \
     & = 2/pi sum_(i=0)^oo sin((2k+1) pi t)/((2k+1) pi) + 1/2 $

Recall that the undamped oscillator $ x'' + omega_0^2 x = sin(omega t) $ has solutions $ cos(omega t)/(omega_0^2 - omega^2 ) $ and $ x'' + omega_0^2 x = cos(omega t) $ has solutions $ sin(omega t)/(omega_0^2 - omega^2). $ Thus, more generally, if the forcing is $ f(t) = a_0/2 + sum_(i=1)^oo (a_n cos(omega_n t)) + sum_(i=1)^oo (b_n sin(omega_n t)), quad omega_n = (n pi)/L, $ the particular solution is $ x_p = a_0/(2 omega_0^2) + sum_(i=1)^oo (cos(a_n omega_n t)/(omega_0^2 - omega_n^2)) + sum_(i=1)^oo (sin(b_n omega_n t)/(omega_0^2 - omega_n^2)). $

So, the particular solution to $ dot.double(x) + omega_0^2 x = u(t) $ is $ x_p = 1/(2 omega_0^2) + 2/pi sum_(n "odd") ((sin(n pi t))/(n(omega_0^2 - (n pi)^2))). $

Alternatively, this particular solution may be obtained via substituting $x$ in the ODE with the Fourier expansion expression, then use undetermined coefficients.

The denominator means that the term is amplified when $omega_0$ is close to $n pi$ for odd integers $n$. So, the system naturally "picks out" the terms with frequencies close to its natural frequency.

This fact implies the principle behind the mechanism behind biological auditory systems. Inside the ear, after the fluid meant to amplify the vibration, their are small hair-like cells each of a different length, thus different natural frequency. A sound wave triggers the "hairs" that are similar to its dominant frequencies. As a result, the ear naturally does this Fourier decomposition when subjected to a sound wave.

#example[
  Find the periodic solution to the forced oscillator equation $ dot.double(x) + 2 dot(x) + 4x =op("sq") (t) $ where $ op("sq")(t) & = 4/pi sum_(n "odd") sin(n t)/n \
              & = cases(-1 &"if" -pi<t<0, 1 &"if" 0<t<pi). $
]
#solution[
  Since the right side may be decomposed into linear combinations of $sin(n t)$, so it suffices to solve the equation $ dot.double(x) + 2 dot(x) + 4 x = sin(n t). $
  Complexify gives $ dot.double(tilde(x)) + 2 dot(tilde(x)) + 4 tilde(x) = e^(i n t). $ $ x_p & = Im(tilde(x)_p) \
      & = Im(e^(i n t)/((i n )^2 + 2 (i n ) + 4)) \
      & = Im(e^(i n t)/((4-n^2) + i (2 n ))) \
      & = Im((e^(i(n t - phi)))/sqrt((4-n^2)^2 + 4n^2)), quad phi:= arctan(2n/(4-n^2)) \
      & = sin(n t - phi)/(sqrt((4-n^2)^2 + 4n^2)). $

  Hence, the particular solution to the given equation is, by superposition principle, $ x = 4/pi sum_(n "odd") sin(n t - phi)/(n sqrt((4-n^2)^2 + 4n^2)). $
]
