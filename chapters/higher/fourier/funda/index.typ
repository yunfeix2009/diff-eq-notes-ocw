#import "/lib.typ": *
// test
#show: docs-subsubchapter.with(
  title: "Fourier Series Fundamental",
  route: "fourier-fundamental",
  label: <sec:fourier-fundamental>,
)

This section reviews the basics regarding Fourier series that is meant to provide a mostly self-contained foundation before using these powerful tools in solving and analyzing differential equations. By design, this section may also be used as a stand alone material for a brief introduction to the subject of Fourier series.

Borrowing ideas from linear algebra, specifically Section 9.6 of @saint_even_linear_algebra_notes_2026, "Fourier Series," the functional space formed by the orthogonal bases as all the sinusoids is covers all functions with period $2pi$, although with transformations this may be generalized to functions of other periods.

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

#lbl(<emp:fourier-square>, example[
  Find the Fourier series of the square wave function, $ f(x) = cases(1 &"if" x in [2k pi, (2k + 1) pi), -1 & "if" x in [(2k + 1) pi, 2k pi)), quad k in ZZ $
])
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

An important note is that, unlike the Taylor series which approximates to the best at a certain point, the Fourier series approximates the function _on an interval_ instead.

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

To realize when the Fourier series converges to a given function, we provide a criterion given in @thm:fourier-convergence-criterion. In preparation of the proof, we first derive the Riemann--Lebesgue Lemma:
// todo: riemann lebesgue
#lbl(
  theorem[
    Let $f$ be an integrable $2pi$-periodic function, and let $S_n (x)$ denote the $m$-th partial sum of its Fourier series. Fix $x in RR$. If there exists a number $S = S(x)$ such that
    $ lim_(u -> 0^+) (f(x + u) + f(x-u) - 2S(x))/u $ exists and is finite, then $ lim_(n -> oo) S_n (x) = S(x), $
    and moreover,
    $
      S(x) = lim_(u -> 0^+) (f(x + u) + f(x-u))/2.
    $
  ],
  <thm:fourier-convergence-criterion>,
)

// #let _quote = quote[among all the proofs not presented in this course, this one is the most beyond the scope of this class]
// #let _credit = [
//   — Prof. Arthur Mattuck
// ]

#proof[
  Writing $S_n (x)$ explicitly, we have
  $
    S_n (x) & = 1 / (2 pi) integral_(-pi)^pi f(t) dt \
            & quad""+ sum_(k=1)^n (1 / pi integral_(-pi)^pi f(t) cos(k t) dt) cos(k x) \
            & wide""+ sum_(k=1)^n (1 / pi integral_(-pi)^pi f(t) sin(k t) dt) sin(k x) \
            & = 1 / pi integral_(-pi)^pi f(t) [1 / 2 + sum_(k=1)^n [cos(k t) cos(k x) + sin(k t) sin(k x)]] dt \
            & = 1 / pi integral_(-pi)^pi f(t) [1 / 2 + sum_(k=1)^n cos(k (t-x))] dt. \
  $
  From the analyticity of the exponential, one derives Euler's formula, giving that $ cos w = (e^(i w) + e^(-i w)) / 2. $
  Therefore,
  $
    1 / 2 + sum_(k=1)^n cos(k (t-x)) & = 1 / 2 + sum_(k=1)^n (e^(i k (t-x)) + e^(-i k (t-x))) / 2 \
    & = 1 / 2 sum_(k=-n)^n e^(i k (t-x)) = 1 / 2 e^(-i n (t-x)) sum_(k=0)^(2n) e^(i k (t-x)) \
    &= 1 / 2 e^(-i n (t-x)) (1 - e^(i (2n+1) (t-x))) / (1 - e^(i (t-x))) \
    &= 1 / 2 (e^(-i n (t-x)) - e^(i (n+1) (t-x))) / (1 - e^(i (t-x))) \
    &= 1 / 2 ((e^(-i (n + 1 / 2) (t-x)) - e^(i (n + 1 / 2) (t-x))) / (2 i)) / ((e^(-i / 2 (t-x)) - e^(i / 2 (t-x))) / (2 i)) \
    &= (sin [(n+1/2)(t-x)]) / (2 sin[1 / 2 (t-x)]).
  $
  Then letting $u = t- x$, we have
  $ S_n (x) = 1 / pi integral_(-pi - x)^(pi - x) (sin [(n+1/2)u]) / (2 sin(u / 2)) f(x + u) dif u. $
  By the $2pi$-periodicity of the integrand, we have
  #lbl(
    $
      S_n (x) &= 1 / pi integral_(-pi)^pi (sin [(n+1/2)u]) / (2 sin(u / 2)) f(x + u) dif u \
      &=1 / pi integral_(-pi)^0 (sin [(n+1/2)u]) / (2 sin(u / 2)) f(x + u) dif u + 1 / pi integral_0^pi (sin [(n+1/2)u]) / (2 sin(u / 2)) f(x + u) dif u \
      &=1 / pi integral_0^pi (sin [(n+1/2)u]) / (2 sin(u / 2)) f(x - u) dif u + 1 / pi integral_0^pi (sin [(n+1/2)u]) / (2 sin(u / 2)) f(x + u) dif u \
      &=1 / pi integral_0^pi (sin [(n+1/2)u]) / (2 sin(u / 2)) [f(x - u) + f(x + u)] dif u
    $,
    <eq:fourier-convergence-criterion-dirichlet-formula-intermediate>,
  )
  Now assume $S$ exists. We aim to derive conditions on it such that $S_n - S -> 0$. Then
  $ S_n (x) - S(x) = 1 / pi integral_0^pi (sin [(n+1/2)u]) / (2 sin(u / 2)) [f(x - u) + f(x + u)] dif u - S(x) $
  Now consider the special case of $f equiv 1$ on $RR$. Then $S_0 equiv 1$ and for each $n in NN$, $S_n equiv 1$. Then @eq:fourier-convergence-criterion-dirichlet-formula-intermediate gives
  $ 1 = 1 / pi integral_0^(pi) (sin [(n+1/2)u]) / (2 sin(u / 2)) 2 dif u. $
  Returning to the general case, we now have
  $
    S_n (x) - S(x) & = 1 / pi integral_(-pi)^pi (sin [(n+1/2)u]) / (2 sin(u / 2)) f(x + u) dif u \
    & quad""- 1 / pi integral_0^(pi) (sin [(n+1/2)u]) / (2 sin(u / 2)) 2S(x) dif u \
    & = 1 / pi integral_0^(pi) (sin [(n+1/2)u]) / (2 sin(u / 2)) [f(x - u) + f(x + u) - 2S(x)] dif u\
    & = Re 1 / pi integral_0^(pi) (exp[i(n+1/2)u]) (f(x - u) + f(x + u) - 2S(x)) / (2 sin(u / 2)) dif u.
  $
  To make this expression vanish, we note that if we are able to show that $ [f(x - u) + f(x + u) - 2S(x)] / (2 sin(u / 2)) $ is continuous on $[0, pi]$, then by the Riemann--Lebesgue Lemma, the integral vanishes as $n -> oo$. Since $f$ is continuous on $RR$, it suffices to show that the limit of the expression exists as $u -> 0^+$. Observe that this is equivalent to
  $
    lim_(u -> 0^+) (f(x - u) + f(x + u) - 2S(x)) / (2 sin(u / 2)) = lim_(u -> 0^+) (f(x - u) + f(x + u) - 2S(x)) / u < oo
  $
  by the theorem hypotheses. Hence, the limit exists and is finite, giving that $ f(x - u) + f(x + u) - 2S(x) = Order(u) ==> S(x) = lim_(u -> 0^+) (f(x - u) + f(x + u) - 2S(x)) / u. qedhere $
]
// insert piecewise c1 case.

// #context {
//   let render-mode = state("render-mode").get()
//   if render-mode == "pdf" {
//     align(center)[#_quote]
//     align(right)[#_credit]
//   } else {
//     html.elem("div", attrs: (style: "text-align: center;"), _quote)
//     html.elem("div", attrs: (style: "text-align: right;padding-bottom: 0.5rem"), _credit)
//   }
// }

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

To demonstrate the power of Fourier series, consider the famous Basel problem solved by Euler, but approached with Fourier series.
#example[
  Prove $ sum_(i=1)^oo 1/i^2 = pi^2/6. $
]
The following proof requires no advanced knowledge regarding infinite series and calculus but basic integration and Fourier series. As am implicit tradeoff, however, the proof requires significant observations.
#solution[
  Let $f(t) := t(pi - t/2), quad t in [0, 2pi]$ with period $2pi$. Notice $f(t)$ is even, so the $b_n$ terms of its Fourier coefficients are $0$. Moreover, assume $n>0$, $ a_n & = 1/pi integral_0^(2pi) cos(n t) t (pi - t/2) dif t \
      & = (sin (2pi n) - pi n cos(2pi n) - pi n)/(pi n^3) #tag[(via integration by parts)] \
      & = -2/n^2. $ For $n=0$, $ a_0 =1/pi integral_0^(2pi) t(pi-t/2) dif t = 2 pi^2/3 $ Since $f(t)$ is continuous on $RR$, its Fourier series converges to it. $ f(t) & = sum_(n=0)^oo a_n cos(n t)               & = (2 pi^2/3)/2 + sum_(n=1)^oo -2/n^2 cos(n t) \
       & = pi^2/3 + sum_(n=1)^oo - 2/n^2 cos(n t). $ Hence, $ f(0) & = 0 (pi-0/2) = 0 \
       & = pi^2/3 + sum_(n=1)^oo -2/n^2. $ Therefore, $ sum_(n=1)^oo 1/n^2 = pi^2/6. qedhere $
]
