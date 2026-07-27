#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Homogeneous Linear ODE's",
  route: "homo",
  label: <sec:homo-lin>,
)
This section aims to solve homogeneous linear ODE's of arbitrary order, those in the form of $ y^((n)) + a_(n-1) y^((n-1)) + dots.c + a_2 y'' + a_1 y' + a_0 y = 0 $ where $a_i$ are functions of $t$.

The fundamental theorem of this section is @thm:lin-comb-sol.

#thm-state.thm-restate("thm:lin-comb-sol", final: true)

In order to show this theorem, the following definition may be introduced.
#lbl(<def:normalized-sol>, definition[
  The normalized solution $y_m$ to the given equation is the solution that satisfy $ y^((i))(0)= cases(1 &"if" i = m, 0 &"if" i !=m). $
])

The benefit of normalized solutions is that given arbitrary initial values $ y(0) = a, quad y'(0) = b, dots, $the solution is $ y = a y_0 + b y_1 + dots.c. $

#example[
  Find the normalized solutions to $ y'' + y = 0. $
]
#solution[
  Notice that $y_0 = cos t$ and $y_1 = sin t$ would make $ cases(y_0 (0) = 1, y_0'(0) = 0), quad cases(y_1(0) = 0, y_1'(0) = 1).#qedhere $
]
#example[
  Find the normalized solutions to $ y'' - y = 0. $
]
#solution[
  The roots of the characteristic equation are $plus.minus 1$, making $e^t$ and $e^(-t)$ independent solutions. However, these solutions are not normalized. Assume, for certain $C_1$ and $C_2$, $ cases(y(0) = C_1 e^t + C_2 e^(-t) = C_1 + C_2, y'(0) = C_1 e^(t) - C_2 e^(-t) = C_1 - C_2.). $ Let the $i$-th coefficient of y_m be $C_(m i)$ satisfy $ mat(1, 1; 1, -1) mat(C_(1 0), C_(1 1); C_(2 0), C_(2 1)) = mat(1, 0; 0, 1). $ $ mat(C_(1 0), C_(1 1); C_(2 0), C_(2 1)) = mat(1/2, 1/2; 1/2, -1/2). $ Therefore, the normalized solutions are $ cases(y_0 = (e^x + e^(-x))/2, y_1 = (e^x - e^(-x))/2).#qedhere $
]
#remark[
  Notice that the solutions are indeed hyperbolic cosine and hyperbolic sine. With differential equations, hyperbolic trigonometry is perhaps introduced most naturally and explains why they are pivotal in many engineering studies.
]

#lbl(<lem:lin-comb>, lemma[
  For a linear homogeneous ODE, a linear combination of solutions is a solution.
])
#proof[
  Notice that the equation could be written as $ (a_n D^n + a_(n-1) D^(n-1) + dots.c + a_1 D^2 + a_1 D + a_0) y = 0, quad D = dv(, x). $ Let $L$ be an operator defined as $ L := (a_n D^n + a_(n-1) D^(n-1) + dots.c + a_1 D^2 + a_1 D + a_0). $ Since with the derivative rule, $D$ is linear, assume $D_k$ is also linear and $y_1$ and $y_2$ are $k+1$ differentiable, then $ D^(k+1) (a y_1 + b y_2) & = D(D^k(a y_1 + b y_2)) \
                          & = D(a y^((k))_1 + b y^((k))_2) \
                          & = a y^((k+1))_1 + b y^((k+1))_2, $ so $L$ is linear. Thus, assume $y_1$ and $y_2$ are solutions to the homogeneous equation, $ L(C_1 y_1 + C_2 y_2) & = C_1 L(y_1) + C_2 L(y_2) = 0.#qedhere $
]

#lbl(<thm:existence-uniqueness>, theorem[Existence and Uniqueness][
  Fix a homogeneous linear ODE with all coefficients of $y^((i))$ continuous, given a set of initial conditions $y^((i)) (x_0) = k_i$, there exists exactly one solution satisfying the initial conditions.
])
Per Prof. Mattuck, the proof of this theorem is presented at the end of a first-semester real analysis course, hence omitted.

The definition of Wronskian is introduced to facilitate the @prf:big of @thm:lin-comb-sol.
#lbl(<def:wronskian>, definition[
  Suppose $y_1, dots, y_n$ are solutions of the same $n$-th order linear homogeneous ODE whose coefficients are continuous. the _Wronskian_ is defined as $ vb(W) = mat(y_1, y_2, y_3, dots.c, y_n; y'_1, y'_2, y'_3, dots.c, y'_n; y''_1, y''_2, y''_3, dots.c, y''_n; dots.v, dots.v, dots.v, dots.down, dots.v; y^((n-1))_1, y^((n-1))_2, y^((n-1))_3, dots.c, y^((n-1))_n). $
])
#lbl(<lem:wronskian>, lemma[
  Given all functions,  $y_1, dots, y_n$ in a Wronskian matrix are solutions to a linear homogeneous ODE with continuous coefficients. The determinant of the Wronskian is either always zero or never zero. Formally, $ (det vb(W) equiv 0) or (forall x, quad det vb(W) !=0). $
])
Here, $det vb(W) equiv 0$ means $forall x, quad det vb(W) = 0$.
#proof[
  Assume there exists $x_0$ such that $det vb(W) = 0$, then $vb(W)(x_0)$ is singular. Thus, $N(vb(W) (x_0))$ contains a non-zero vector, let it be $vb(c) := mat(C_1, C_2, C_3, dots.c, C_n)^top$. Then, $ sum_(i=1)^n C_i y^((k))_i (x_0) = 0, quad k = 0, 1, 2, dots, n-1. $ Let $ h := sum_(i=1)^n C_i y_i, $ then #lbl(<eqn:ivp>, $ h^((k) ) (x_0) = 0, quad k = 0, 1, 2, dots, n-1. $) By @lem:lin-comb, $h$ solves the given ODE. Since the zero function also solves the ODE with the initial condition that of $h$, @eqn:ivp, by @thm:existence-uniqueness, $h$ is the zero function. So, $ forall x, quad sum_(i=1)^n C_i y^((k))_i (x) = 0, quad k =0, 1, 2, dots, n-1, $ meaning that $ vb(W)(x) vb(c) = 0 $ for $vb(c) !=0$. Therefore, $vb(W)$ is always singular, $forall x, quad det(vb(W)(x)) = 0.$

  The other case is where there does not exist $x_0$ such that $det vb(W) (x_0) = 0$, matching the second possibility.
]
#remark[
  It should be noted that the lemma does not hold for functions that are not solutions to a linear homogeneous ODE. Consider the counterexample, $f(x) = x^2$ and $g(x) = x^3$. $ det vb(W) & = det mat(x^2, x^3; 2x, 3x^2) \
            & = x^4, $ which is $0$ at $x=0$ and only $x=0$.
]

Moreover, two more theorems are needed. The following theorem assumes the first part of @prf:big of @thm:lin-comb-sol.
#lbl(<thm:ivp>, theorem[
  Given $y_0, dots, y_(n-1)$ are independent solutions to a homogeneous linear ODE with continuous coefficients, then for any initial values, there exists exactly one solution that satisfies it.
])
#proof[
  Let the initial conditions be $ y(x_0) =a, quad y'(x_0) = b, dots. $
  Let the initial values vector $vb(v) := mat(a, b, dots.c)^top$ and coefficient vector $vb(c) := mat(C_0, C_1, dots.c)$.
  $ cases(y(x_0) = C_0 y_0(x_0) + C_1 y_1(x_0) + dots.c = a, y'(x_0) = C_0 y'_0(x_0) + C_1 y'_1 (x_0) + dots.c, dots.v). $ Let $vb(W)$ be the Wronskian matrix with functions $y_0, dots, y_(n-1)$. The equation becomes $vb(W c = v)$.

  Since $y_0, dots, y_(n-1)$ are independent, $ forall x, quad det vb(W)(x) !=0, $ meaning $vb(W)(x)$ invertible for all $x$, so $vb(c)$ exists for all x.

  By @lem:lin-comb, $ c_0 y_0 + c_1 y_1 + dots.c + c_(n-1) y_(n-1) $ is a solution, and as shown above, it also satisfies the initial condition.
]

#lbl(<thm:lin-comb-sol>, theorem(
  restate: true,
  restate-keys: (
    "thm:lin-comb-sol",
  ),
)[
  The solution space of a homogeneous $n$-th order linear ODE is exactly the linear combination of $n$ independent solutions, assuming all coefficients are continuous.
])
#lbl(<prf:big>, proof[ of @thm:lin-comb-sol][
  First, with @lem:lin-comb, any linear combinations of the $n$ independent solutions are still solutions. Thus, it remains to show that all solutions to the given equation must be a linear combination of $n$ independent solutions.


  Let $y_1, dots, y_n$ be $n$ independent solution.
  Take an arbitrary solution $y$ with $ y^((i))(0) = k_i. $  By @thm:ivp, there is exactly one solution that is a linear combination of $y_1, dots, y_n$ with initial values $k_i$, let it be $y_s$. By @thm:existence-uniqueness,  $y = y_s$. Therefore, a function is a solution to the given ODE iff it is a linear combination of $n$ independent solutions.
])
