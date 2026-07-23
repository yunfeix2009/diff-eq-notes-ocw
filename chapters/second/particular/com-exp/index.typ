#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Input as Complex Exponentials",
  route: "complex-exp",
  label: <sec:com-exp>,
)

In this subsection, we examine the case where $ f(x) := e^(alpha x), quad alpha in CC. $

Observe that #lbl(<eqn:exp-input>, $ p(D) e^(alpha x) = p(alpha) e^(alpha x). $)

#lbl(<thm:exp-input>, theorem[
  A particular solution to $ y'' + A y' + B y = e^(alpha x) $ is $ y_p = e^(alpha x)/p(alpha) $ where $p(x)$ is the characteristic polynomial of the given equation. Assume $p(alpha) != 0$.
])

#proof[
  $
    p(D) y_p & = p(D) ((e^(alpha x))/p(alpha)) \
             & = (p(D) e^(alpha x))/p(alpha) #tag[($p(D)$ is a linear operator)] \
             & = (p(alpha) e^(alpha x))/p(alpha) #tag[(@eqn:exp-input)] \
             & = e^(alpha x). #qedhere
  $
]

#example[
  Find the particular solution to $ y'' -y' + 2y = 10 e^(-x) sin x. $
]
#solution[
  Complexify the equation into $ tilde(y)'' - tilde(y)' + 2y = 10 e^((-1 + i)x) $ where $y = Im(tilde(y))$. From @thm:exp-input, $ tilde(y) & = (10 e^((-1 + i) x))/(p(-1 + i)) #tag[(p is the characteristic polynomial)] \
           & = (10 e^((-1 + i)x))/((-1 + i)^2 - (-1 + i) + 2) \
           & = (10 e^((-1 + i) x))/(3 - 3i) \
           & = 10/3 (1 + i)/2 e^(-x) (cos x + i sin x). $ We want $ y & = Im(tilde(y)) \
    & = 5/3 e^(-x) (cos x + sin theta) \
    & = (5 sqrt(2))/(3 ) (cos (x - pi/4)) e^(-x). #qedhere $
]

Now, consider the case where $p(alpha) = 0$

#lbl(<thm:special-exp-input>, theorem[
  If $alpha$ is a simple root of the characteristic polynomial $p(D)$, meaning that it does not repeat, $ y_p := (x e^(alpha x))/(p'(alpha)) $ solves $ (D^2 + A D + B ) y = e^(alpha x), quad alpha in CC. $

  Furthermore, in the case where $alpha$ is a root repeated $n$ times, meaning $p^(n-1) (alpha) = 0$, a solution is $ y_p := (x^n e^(alpha x))/(p^((n)) (alpha)). $
])
In order to show this theorem, the following lemma becomes useful.
#lbl(<lem:exp>, lemma[
  Let $p(D)$ be a polynomial of the differential operator wrt $x$, $D$. Then, $ p(D) (e^(alpha x) u(x)) = e^(alpha x) p(D + alpha) u(x), quad alpha in CC. $
])
#proof[
  In the case where $ p(D) = D, $ $ p(D) (e^(alpha x) u(x)) & = D(e^(alpha x) u(x)) \
                          & = alpha e^(alpha x) u(x) + e^(alpha x) D(u(x)) \
                          & = e^(alpha x) (D + alpha) (u(x)). $
  Assume the lemma holds for $p(D) = D^(k)$, $ D^(k+1) (e^(alpha x) u(x)) & = D(D^(k) e^(alpha x) u(x)) \
                             & = D(e^(alpha x) (D + alpha)^k u(x)) #tag[(inductive assumption)] \
                             & = alpha e^(alpha x) (D + alpha)^k u(x) + e^(alpha x) D((D + alpha)^k u(x)) \
                             & = e^(alpha x) (D + alpha)^(k+1) u(x). $ Hence, with induction, the lemma holds for $p(D) = D^n, quad n in NN$. Moreover, since differentiation is a linear operator, the lemma applies to all polynomials of $D$.
]

#proof[of @thm:special-exp-input][
  In the case where $alpha$ is a simple root, $p(D) = (D - alpha) q(D)$. Then, $ p'(D) = q(D) + (D - alpha) q'(D), $ giving $ p'(alpha) = q(alpha) + (alpha - a) q'(alpha) = q(alpha). $ Hence, $ p(D) y_p & = p(D) (x e^(alpha x))/(p'(alpha)) \
           & = p(D) (x e^(alpha x))/q(alpha) \
           & = e^(alpha x) p(D + alpha) x/q(alpha) #tag[(@lem:exp)] \
           & = e^(alpha x)/q(alpha) (D + alpha - alpha) q(D +alpha) (x) \
           & = e^(alpha x)/q(alpha) (q(D +alpha) D(x)) \
           & = e^(alpha x)/q(alpha) (q(D + alpha) (1)) \
           & = e^(alpha x) /q(alpha) q(alpha) \
           & = e^(alpha x). $
  In general, assume $ p(D) = (D - alpha)^n q(D), quad q(alpha) != 0. $ Verifying the solution claimed in the theorem, $ p(D) y_p & = p(D) (x^n e^(alpha x))/(p^((n)) (alpha)) \
           & = e^(alpha x)/(p^((n)) (alpha)) p(D + alpha) (x^n) \
           & = e^(alpha x)/(n! q(alpha)) q(D + alpha) [(D + alpha - alpha)^n (x^n)] \
           & = e^(alpha x)/(n! q(alpha)) q(D + alpha) (n!) \
           & = e^(alpha x)/(n! q(alpha)) (n! q(alpha)) \
           & = e^(alpha x). #qedhere $
]


#example[
  Find the general solutions of $ y'' - 3y' + 2 y = e^x. $
]
#solution[
  Notice that the "$alpha$" here is $1$, which is a simple root of the characteristic equation. Hence, a particular solution is $ y_p = (x e^(x))/(p'(1)) = - x e^(x). $

  The homogeneous solution is $ y_c = c_1 e^x + c_2 e^(2x). $ Thus, the general solution is $ y= c_1 e^x + c_2 e^(2x) - x e^x. #qedhere $
]
