#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Laplace Transform",
  route: "laplace",
  label: <sec:laplace>,
)

A transform, like the Laplace transform and Fourier transform is different from an operator, such as differentiation and integration, by that it outputs a function of a different variable.

The Laplace transform may be seen as an extension from the Taylor series, $ f(x) = sum_(i=0)^oo a_n x^n. $ Rather than discretized coefficients and powers, they are taken as real numbers from $[0, oo)$. Hence, the function becomes $ f(x) = integral_0^oo a(t) x^t dif t. $ Since exponentials with base as $e$ are much easier to deal with, and $x = e^(ln x)$, we have $ integral_0^oo a(t) x^t dif t & = integral_0^oo a(t) e^(ln x t) dif t. $

However, this form is still very immature, and the following changes are made. First, since $x$ is the base of the exponentials, it makes sense to have $x in (0, 1)$, so $ln(x) <0$. Substitute $s := -ln x$, the term becomes positive and easier to work with. Since we are interested in the Laplace transform of a functional input, by convention $f(t)$ is used, instead of $a(t)$. Hence, the result of the Laplace transform of $f(x)$ is  $ F(s) = integral_0^oo f(t) e^(-s t) dif t, quad x in (0, 1). $

From this definition, assume the integrand is integralalbe. The only thing keeping it from being illegal is when the integral diverges since an improper integral.
#definition[
  A function $f(t)$ is _exponential type_ iff there exist $C, k in RR$, $ forall t in RR^+ union {0}, quad abs(f(t)) <= C e^(k t). $
]

#theorem[
  A function has a Laplace transform iff it is exponential type.
]

Easy to show that sinusoidal and powers are exponential type. However, $f(t) = 1/t$ fails to be exponential type as the integral diverges at $x = 0$. Moreover, functions such as $e^t^2$ or $t! (Gamma(t))$ also do not have Laplace transform.

Notation wise, to convey that $F(s)$ is the result of the Laplace transform of $f(t)$, $ cal(L) (f(t)) = F(s). $ Alternatively to avoid extraneous parentheses occasionally, $ f(t) arrow.r.squiggly F(s). $

Importantly, notice that since integration is a linear operator, so is Laplace transform.



The following is a list of handy results of Laplace transform.

#lemma[$ 1 arrow.squiggly 1/s, quad s > 0. $]
#proof[
  $
    integral_0^oo e^(-s t) dif t & = lim_(R-> oo) integral_0^R e^(-s t) dif t \
                                 & = lim_(R -> oo) lr(e^(-s t)/(-s) |)_0^R \
                                 & = (0 - 1)/(-s), quad s > 0 \
                                 & = 1/s, quad s >0.#qedhere
  $]

Equivalent to the exponential shift rule, the following lemma is true.
#lbl(<lem:esf>, lemma[
  Let $f(t) arrow.squiggly F(s)$, $ e^(a t) f(t) arrow.squiggly F(s), quad a in CC. $
])
#proof[
  From the definition, $ cal(L)(e^(a t) f(t)) & = integral_0^oo e^(a t) f(t) e^(-s t) dif t \
                       & = integral_0^oo f^(t) e^(-(s-a) t) \
                       & = F(s- a). #qedhere $
]

With the above lemma @lem:esf, the Laplace transform of exponentials could be found.
#lbl(<lem:lap-exp>, lemma[
  $ e^(a t) arrow.squiggly 1/(s-a), quad s> 0. $
])
#proof[
  $
    cal(L) (e^(a t)) & = cal(L) (e^(a t) dot 1) \
                     & = 1/(s-a), quad s> 0. #qedhere
  $
]

#lemma[
  $ cos(a t) arrow.squiggly s/(s^2 a^2),quad s > 0. $
]
#proof[
  With Euler's formula $e^(i theta )= cos theta + i sin theta$, $ cos(a t) = (e^(i a t) + e^(- i a t))/2. $
  Thus, $ cal(L)(cos(a t)) & = 1/2 (cal(L)(e^(i a t)) + cal(L)(e^(-i a t))) #tag[(linearity of $cal(L)$)] \
                   & = 1/2(1/(s - a i) + 1/(s + a i )), quad s> 0 #tag[(@lem:lap-exp)] \
                   & = 1/2 (2s)/(s^2 + a^2), quad s> 0 \
                   & = s/(s^2+ a^2), quad s > 0. #qedhere $
]
Similarly, the transform of $sin$ could be obtained.
#lemma[
  $ sin(a t) arrow.squiggly a/(s^2 + a^2), quad s> 0. $
]
Proof omitted.

#lemma[
  $ t^n arrow.squiggly (n!)/s^(n-1), quad s> 0 $
]
#proof[
  $ cal(L)(t^n) & = integral_0^oo t^n e^(-s t) dif t \
              & = lr((t^n e^(-s t)/(-s)) |)_0^oo - integral_0^oo n t^(n-1) e^(-s t)/(-s) dif t \
              & = 0 + n/s integral_0^oo t^(n-1) e^(-s t) dif t #tag[(with L'Hopital's rule)] \
              & = n/s cal(L)(t^(n-1)). $Thus, $ cal(L)(t^n) = (n!)/s^n cal(L)(1)= (n!)/s^(n-1), quad s> 0.#qedhere $
]

Recall that the Laplace transform is linear, the image of polynomials could be found with the lemma above.

#lbl(<lem:lap-diff>, lemma[
  If $f(t) arrow.squiggly F(s)$, $ f'(t) arrow.squiggly s F(s) - f(0). $
])
#proof[
  $
    cal(L)(f'(t)) & = integral_0^oo f'(t) e^(-s t) dif t \
                  & = lr(f(t) e^(-s t)|)_0^oo - integral_0^oo - s e^(-s t) f'(t) dif t #tag[(integration by parts)] \
                  & = 0 - f(0) +s F(s) #tag[($f(t)/e^(-s t)$ vanishes as $f$ is exponential type)] \
                  & = s F(s) - f(0). #qedhere
  $
]

#lbl(<cor:lap-difff>, corollary[
  If $f(t) arrow.squiggly F(s)$, $ f'(t) arrow.squiggly s^2 F(s) - s f(0) - f'(0). $
])
#proof[
  $
    cal(L)(f''(t)) & = s cal(L)(f'(t)) - f'(0) #tag[(@lem:lap-diff)] \
                   & = s (s F(s) - f(0)) - f'(0) \
                   & = s^2 F(s) - s f(0) - f'(0). #qedhere
  $
]

After the problem is solved with the transformed function, one still need to convert back, thus inverse transformation is needed.
With partial fraction decomposition, transformations of sum of exponentials may be deciphered.
#example[
  Find $ cal(L)^(-1) (1/(s(s+3))). $
]
#solution[
  $
    cal(L)^(-1 ) (1/(s(s+3))) & = cal(L)^(-1) ((1/3)/s + (-1/3)/(s + 3)) \
                              & = 1/3 dot 1 + (-1/3) e^(s-3), quad s> 0 \
                              & = 1/3 - 1/3 e^(s - 3), quad s > 0. #qedhere
  $
]
