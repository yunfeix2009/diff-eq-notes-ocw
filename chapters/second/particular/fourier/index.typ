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
