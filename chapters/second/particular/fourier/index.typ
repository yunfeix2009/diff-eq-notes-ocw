#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Fourier Series",
  route: "fourier",
  label: <sec:fourier>,
)

It is possible, with complexifying and @thm:exp-input and @thm:special-exp-input to find the response ($y$) given sinusoidal input ($f(t) = sin (n t)$ or $f(t) = cos(n t)$).

In this section, the aim is to learn how to represent certain functions as a linear combination of sinusoids $sin(n t)$ and $cos(n t)$ where $n in NN$, thereby using linearity and the response with input as a sinusoid to solve the problem.

Borrowing ideas from linear algebra, specifically @saint_even_linear_algebra_notes_2026 Section 9.6, "Fourier Series," the functional space formed by the orthogonal bases as all the sinusoids is covers all functions with period $2pi$, although with transformations this may be generalized to functions of other periods.

Recall the definition of functional inner product and orthogonality.
#definition[
  The _inner product_ of $f : RR-> RR$ and $g: RR-> RR$ is $ braket(f, g) := integral_(-oo)^oo f(x) g(x) dif x. $
]
#definition[
  Functions $f$ and $g$ are _orthogonal_ iff $ braket(f, g) = 0. $
]
#theorem[
  The Fourier bases, $a_n = cos(n t), quad n in NN$, $b_n = sin(n t), quad n in NN^+$ are orthogonal
]


#proof[
  Since functions of period $2pi$ is of the concern here, $ integral_(-pi)^pi f(x) g(x) dif x = 0 <==> integral_(-oo)^oo f(x) g(x) dif x = 0 <==> f perp g. $


  Notice that any two functions $u_n$ and $v_m$ satisfy the differential equation $ cases(u_n '' + n^2 u_n = 0, v_m '' + m^2 v_m = 0). $

  Case 1: $n!= m$.

  $ u_n '' + n^2 u_n = 0 ==> u_n '' v_m + n^2 u_n v_m = 0. $ Thus, $ integral u_n '' v_m dif t = - n^2 integral u_n v_m. $

  However, with integration by parts, $ integral u_n '' v_m dif t & = u' v + integral u_n ' v_m ' dif t. $

  Due to the functions being sinusoids, $u' v = 0$. So, $ integral u_n ' v_m ' dif t & = integral u_n '' v_m dif t \
                             & = -n^2 integral u_n v_m \
                             & = integral v_m '' u_n dif t #tag[(by symmetry)] \
                             & = -m^2 integral u_n v_m. $ Thus, $ -n^2 integral u_n v_m dif t = -m^2 integral u_n v_m dif t. $ Since $n != m$, $ integral u_n v_m dif t = 0 ==> u_n perp v_m. $

  Case 2: $n = m$.

  The only pairs where $n = m$ without $u_n = v_m$ is $sin(n t)$ and $cos(n t)$. $ integral_(-pi)^pi sin(n t) cos(n t) dif t & = 1/n integral u dif u #tag[($u:= sin (n t)$)] \
                                            & = 1/n 1/2 u^2 \
                                            & = 1/(2n ) lr(sin^2(n t) |)_(-pi)^pi \
                                            & = 0. $

  Hence, the bases are orthogonal.
]

To find the exact coefficients of each term, or the component of a given function $f(x)$ in the direction of each bases, project the function onto that basis, then, since the bases are orthogonal but not orthonormal, divide by the magnitude of the basis. So, $ a_n & = 1/(integral cos^2(n t) dif t) integral_(-pi)^pi f(t) cos (n t) dif t \
& = cases(1/pi integral_(-pi)^pi f(t) cos (n t) dif t &"if" n> 0, 1/(2pi) integral_(-pi)^pi f(t) cos(n t) dif t &"if" n = 0). $ And, $ b_n & = 1/(integral_(-pi)^pi sin^2 (n t) dif t) integral_(-pi)^pi f(t) cos (n t) dif t \
    & = 1/pi integral_(-pi)^pi f(t) cos (n t) dif t. $ To make the formula for the coefficients more general, redefine the bases by changing the constant term to $a_0/2$.


Altogether, we have the following theorem.
#lbl(<thm:fourier-exp>, theorem[
  The Fourier expansion of a periodic function $f(t)$ with period $2pi$ is $ f(x) = a_0/2 +sum_(i=1)^oo a_i cos(i t) + sum_(i=1)^oo b_i sin(i t), $ where $ a_n= 1/pi integral_(-pi)^pi f(t) cos(n t) dif t, quad b_n = 1/pi integral_(-pi)^pi f(t) sin (n t) dif t. $
])
With this theorem, it is apparent that a periodic function with $2pi$ as a period has exactly one Fourier expansion.

#example[
  Find the Fourier series of the square wave function, $ f(x) = cases(1 &"if" x in [2k pi, (2k + 1) pi), -1 & "if" x in [(2k + 1) pi, 2k pi)), quad k in ZZ $
]
#solution[
  Due to periodicity, it suffices to consider only the interval $[-pi, pi)$. Due to discontinuity at $x = 0$, with integration, with symmetry $a_n =0$ and $ integral_(-pi)^0 sin(n t) dif t + integral_0^pi sin(n t) dif t&= 2/n ( 1- cos(n pi)) \ &= cases(4/n &"if" n equiv 1 (mod 2), 0 &"if" n equiv 0 (mod 2)). #qedhere $
]


The following are some handy properties regarding Fourier series.
#theorem[
  If a function $f(x)$ is even, then $ cases(b_n = 0, a_n = 2/pi integral_0^pi f(t) cos(n t) dif t) $
]
#proof[
  First, to show that $b_n = 0$, since the Fourier expansion of $f(t)$ and $f(-t)$ are identical (as $f$ is even), each term must be equal. $ 1/pi integral f(t) sin(n (-t)) dif t & = - 1/pi integral f(t) sin (n t) dif t \
                                       & = 1/pi integral f(t) sin (n t) dif t. $ Thus, $b_n = 0$.

  Since the product of two even functions are also even $ a_n = 1/pi integral_(-pi)^pi f(t) cos(n t) dif t = 2/pi integral_0^pi f(t) cos (n t) dif t. #qedhere $
]
#theorem[
  If a function $f(x)$ is odd, then $ cases(a_n = 0, b_n = 2/pi integral_0^pi f(t) sin(n t) dif t). $
]
Proof is pedantic to show completely here, note that the product of two odd functions is even.

An important not is that, unlike the Taylor series which approximates to the best at a certain point, the Fourier series approximates the function _on an interval_ instead.

#example[
  Find the Fourier expansion of the function $f(t) = t$ on the interval $(-pi, pi)$.
]
#solution[
  Notice $f(t)$ is odd. Hence, $a_n = 0$ and $ b_n & = 2/pi integral_0^pi f(t) sin(n t) dif t \
      & = 2/pi integral_0^pi t sin(n t) dif t \
      & = 2/pi ( lr(- (t cos(n t))/n |)_0^pi - integral_0^pi -cos(n t)/n dif t) \
      & = 2/pi (- (pi cos(n pi))/n - lr(sin(n t)/n^2 |)_0^pi ) \
      & = 2/pi (-pi/n (-1)^n) \
      & = 2/n (-1)^(n+1). $

  Thus, $ f(t) = 2 sum_(i=1)^oo (-1)^(n+1) sin(n t) /n. #qedhere $
]

To realize when the Fourier series converges to a given function, we have the following theorem.
#theorem[Dirichlet's Convergence Theorem for Fourier Series][
  If $f$ is continuous at $t_0$, its Fourier series is $f(t_0)$ at $t_0$.
  If $f$ has a jump discontinuity at $t_0$, its Fourier series evaluates to the average of the limits of the two sides.
]
The proof is
#let abstract(render-mode) = [
  #let _quote = quote[among all the proofs not presented in this course, this one is the most beyond the scope of this class]
  #let _credit = [
    — Prof. Arthur Mattuck
  ]
  #if render-mode == "pdf" {
    align(center)[#_quote]
    align(right)[#_credit]
  } else {
    html.elem("div", attrs: (style: "text-align: center;"), _quote)
    html.elem("div", attrs: (style: "text-align: right;padding-bottom: 0.5rem"), _credit)
  }
]

According to AI, it uses something as a dirichlet kernel. Proof omitted.

Since many functions are not periodic, even more rarely with the period $2pi$, generalizations shall be made to the current form of Fourier series. Firstly, it suffices to consider only the interval interest, thereby extending the function periodically. In fact, in finding the Fourier coefficients, values of $f$ outside of the periodic interval is not even used.

For a function of $u$ with period $2L$, assume that it has period $2pi$ with variable $t$, then $ t = L/pi u. $ For convenient recalls, think of $t$ and $u$ as units. Then, $ u = pi/L t. $ This means that the functions become $ cos (n pi/L t), quad sin (n pi/L t). $

The formulas for the Fourier coefficients become $ cases(a_n = 1/L integral_(-L)^L f(t) cos(n pi/L t) dif t, b_n = 1/L integral_(-L)^L f(t) sin(n pi/L t) dif t). $

#example[


  Find the Fourier series for

  $
    f(t) = cos(2t - pi/4).
  $

]

#solution[
  Recall $ cos(A - B) = cos A cos B + sin A sin B. $
  $ f(t) & = 1/sqrt(2) cos(2t) + 1/sqrt(2) sin(2t). #qedhere $
]

#example[
  Given the square wave

  $
    op("sq") (t) =
    cases(
      -1 & "if" -pi < t < 0,
      1 & "if" 0 < t < pi
    )
    = (4/pi) sum_(n = 1\ n "odd") (sin(n t))/n.
  $

  Find the Fourier series for the following functions.

  (i)
  $
    f(t) =
    cases(
      0 & "if" -pi < t < 0,
      4 & "if" 0 < t < pi
    )
  $

  with period $2pi$.

  (ii)
  $
    f(t) =
    cases(
      -1 & "if" -1 < t < 0,
      1 & "if" 0 < t < 1
    )
  $

  with period $2$.

  (iii)

  $
    f(t) = abs(t),
    \qquad -pi < t < pi,
  $

  extended periodically with period $2pi$.
]

#solution[
  (i) $ f(t) & = 2(op("sq") (t)) + 2 \
       & = 2 + 8/pi sum_(n=1 \ n "odd") sin(n t)/n. $
  (ii) $ f(t) & = op("sq")(pi t) \
       & = 4/pi sum_(n=1 \ n "odd") sin(pi n t)/n $
  (iii) $f(t)$ is even, so $b_n = 0$ and $ a_n & = 1/pi integral_0^pi f(t) cos(n t) dif t \
      & = 1/pi integral_0^pi t cos(n t) dif t \
      & = dots.c $

  However, this problem may also be solved by noticing  that $f'(t) = op("sq")(t)$, so $ f(t) & = integral op("sq")(t) dif t \
       & = C + 4/pi sum_(n "odd") -1/n^2 sin(n t) $ and $ C = 1/(2pi) integral_(-pi)^pi abs(t) dif t = pi/2. #qedhere $
]
