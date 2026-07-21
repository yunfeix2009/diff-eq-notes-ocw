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


#example[
  Solve the following differential equation: $ y' + k y = 4 + 7 e^(-5 t). $
]
#solution[
  By the superposition principle (linearity), let $ cases(y_1' + k y_1 = 1, y_2' + k y_2 = e^(-5 t)), $ then the solution to the given ODE is $ y = 4 y_1 + 7 y_2. $

  The integrating factor of both equations is $ u = e^(integral k dif t) = e^(k t). $ Multiplying each equation by the integrating factor and simplifying gives, $ cases((e^(k t) y_1)' = e^(k t), (e^(k t) y_2)' = e^((k-5)t)) quad. $

  Thus, $ cases(y_1 = 1/k + C dot e^(- k t), y_2 = 1/(k-5) dot e^(- 5 t) + C dot e^(- k t)) \ ==> y = 4/k + 7/(k-5 ) e^(-5 t)+ C dot e^(- k t). $

  However, the exceptional cases of $k = 0, 5$ must be treated differently. If $k = 0$, $ y_1 = t + C, quad y_2 = - e^(-5 t)/5 + C $ giving $ y = 4t - 7/5 e^(-5 t) + C. $

  If $k = 5$, $ y_1 = 1/k + C dot e^(-k t), quad y_2 = t dot e^(-k t) + C dot e^(-k t). $ Thus, $ y = 4/k + 7 t dot e^(-k t) + C dot e^(-k t), quad k = 5. $

  Combining all cases, $ y = cases(4/k + 7/(k-5 ) e^(-5 t) + C dot e^(- k t) &"if" k in.not{0, 5}, 4t - 7/5 e^(-5 t) + C &"if" k = 0, 4/k + 7 t dot e^(-k t) + C dot e^(-k t) &"if" k = 5). $
]
