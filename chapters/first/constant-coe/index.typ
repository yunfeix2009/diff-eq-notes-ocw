#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "First-order Constant Coefficient Linear ODE",
  route: "constant-coefficient",
  label: <sec:const-coe>,
)

#definition[
  Let first-order linear ODE with "constant coefficient" be those with constant coefficient before $y$. Hence, $y' + k y = k q(t).$
]
The the steady-state solution (assume $k>0$) is $ y(t) = e^(-k t) (integral q(t) e^(k t) dif t) $

This equation plays an important role in modeling systems. The model takes $q(t)$ as the input and the system then becomes $y(t)$.

One particularly important case of such equation is when $q(t) = cos (omega t)$, $ y' + k y = k cos(omega t). $ To solve, or better understand this equation, is the "complexify" the equation, motivated by the $cos (omega t)$ term. Due to the superposition principle, if $ y_1' + k y_1 = k cos (omega t) $ and $ y_2' + k y_2 = k sin (omega t), $ then with $tilde(y):= y_1 + i y_2$, $ tilde(y) + k tilde(y)' = k e^(i omega t). $

With integration factor, $ (tilde(t) e^(k t))' = k e^(k + i omega t) \ ==> tilde(y) = 1/(1 + omega/k i) e^(i omega t). $

Since $y_1 = Re(tilde(y))$, we aim to find $ Re(1/(1 + omega/k i) e^(i omega t)). $

With polar form $r^2 = z overline(z)$ and $arg(z) + arg(1/z) = 0$, $ 1/(1 + omega/k i) = 1/sqrt(1 + (omega/k)^2) e^(- i phi) $ where $phi := arctan(omega/k)$. Let $A := 1/sqrt(1 + omega/k i)$, $ tilde(y) = A e^(i (omega t - phi)). $
Thus, $ y_1 = Re(tilde(y)) = A cos(omega t - phi) $ where $phi = arctan(omega / k)$ and $A = 1/sqrt(1 + (omega/k)^2)$.

Define the _phase lag_ of the solution to be $phi$ and the _amplitude_ of the solution to be $A$. Thus, it is simple to find the relation between change in $k$ with the amplitude or phase lag of the solution.
