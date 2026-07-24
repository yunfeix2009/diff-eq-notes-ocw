#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Resonance",
  route: "resonance",
  label: <sec:resonance>,
)


The ultimate question this section tries to answer is when to push a friend on the swing to get them up as soon as possible.

To do this is more of an engineering approach has systematic problems of detection of max height, which introduces a systematic latency.

Use the small angle approximation where the restoring force is roughly proportional to (angular) displacement. Hence, the situation becomes a spring-mass oscillation.

The equation then becomes $ y'' + omega_0^2 y = 0, $ where $omega_0$ is the natural frequency of the spring-mass, or swing, etc. Since there is an external force pushing periodically, say $ f(t) = cos (omega_1) t = y'' + omega_0^2 y. $

This equation may be solved with @sec:com-exp. Take case one where $omega_1 = omega_0$, complexifying the given equation gives $ tilde(y)'' + omega_0^2 tilde(y) = e^(i omega_1 t), quad y = Re(tilde(y)). $

With @thm:exp-input, $ tilde(y) = e^(i omega_1 t)/((omega_1 i)^2 + omega_0^2) = e^(i omega_1 t)/(omega_0^2 - omega_1^2) $ So, #lbl(<eqn:approx>, $ y = cos(omega_1 t)/(omega_0^2 - omega_1^2). $)

This could be treated as an oscillation of $cos(omega_1 t)$ with amplitude of $1/(omega_0^2 - omega_1^2)$. As $omega_1 -> omega_0$, the amplitude approaches $oo$.

However, when $omega_1 = omega_0$, the equation becomes $ y'' + omega_0^2 y = cos(omega_0 t). $ Complexifying gives $ tilde(y)'' + omega_0^2 y = e^(i omega_0 t), quad y = Re(tilde(y)). $
Here, @thm:special-exp-input must be used as $p(i omega_0) = 0$, where $p(D)$ is the characteristic polynomial.

Hence,  $ tilde(y) = (t e^(i omega_0 t))/(p'(i omega_0)) = (t e^(i omega_0 t))/(2 i omega_0). $

Taking the real part gives #lbl(<eqn:exact>, $ y = Re(tilde(y)) = (t sin(omega_0 t))/(2 omega_0). $)

To see why @eqn:approx approaches @eqn:exact as $omega_1$ approaches $omega_0$, note that a solution is a sum of a particular solution and a homogeneous equation.

Since $y = cos(omega_0 t)$ is a homogeneous solution, so is $ y = - cos(omega_0 t)/(omega_0^2 - omega_1^2). $ Thus, $ y & = cos(omega_1 t)/(omega_0^2 -omega_1^2) - cos(omega_0 t)/(omega_0^2 - omega_1^2) \
& = (cos(omega_1 t) - cos (omega_0 t))/(omega_0^2 - omega_1^2) \
& = ( 2 sin((omega_0 - omega_1)/2) t sin((omega_1 + omega_0)/2)t)/(omega_0^2 - omega_1^2) #tag[(sum to product, @lem:stp)] \
& approx (2 sin((omega_1 - omega_0)/2 t))/(omega_0^2 - omega_1^2) sin(omega_0 t) #tag[($omega_1 approx omega_0$)], $ taking the limit as $omega_1$ approaches $omega_0$ gives $ lim_(omega_1 -> omega_0) (2 sin((omega_1 - omega_0)/2 t))/(omega_0^2 - omega_1^2) sin(omega_0 t) &=lim_(omega_1 -> omega_0) (t cos((omega_1 - omega_0)/2 t))/(2 omega_1) sin(omega_0 t) \ &= (t sin(omega_0 t))/(2 omega_1), $ mirroring @eqn:exact.

Geometrically, in terms of $y t$-plane, @eqn:exact is a sinusoidal oscillation with bounds two lines through the origin. On the other hand, @eqn:approx is a sinusoid bounded by a bigger sinusoid (similar to musical beats). In the limiting case, $omega_1 -> omega_0$, the sinusoidal bound becomes infinitely large, remaining as two lines.

Practically, it is unreasonable to assume the absence of any damping, including friction. Thus, the more accurate equation is $ y'' + 2p y' + omega_0^2 y = f(x). $

Similar to the undamped case, consider the homogeneous equation first. $ y'' + 2p y' + omega_0^2 y = 0 $ has characteristic equation $ r^2 + 2 p r + omega_0^2 = 0, $ with roots $ r = (-2p plus.minus sqrt(4p^2 - 4 omega_0^2))/2 = -p plus.minus sqrt(p^2 - omega_0^2). $

Therefore, $ y = e^(-p) (A cos(sqrt(p^2 - omega_0^2)t) + B sin(sqrt(p^2 - omega_0^2) t)). $ Hence, without external force, the new natural frequency is $omega_2 := sqrt(p^2 - omega_0^2)$, leaving a neat geometric picture.

To find the particular solution of the equation with forcing term $C cos(omega t)$, complexify, $ tilde(y)'' + 2p tilde(y)' + omega_0^2 tilde(y) = C e^(i omega t). $ By @thm:exp-input, $ tilde(y)_p = (C e^(i omega t))/((i omega)^2 + 2 p (i omega) + omega_0^2). $ Maximizing the amplitude of $y_p$ is equivalent to maximize $tilde(y)_p$, or to minimize $ norm((i omega)^2 + 2p(i omega) + omega_0^2) = (omega_0^2 - omega^2)^2 + 4 p^2 omega^2. $ Differentiating wrt $omega$,  $ 2 (omega_0^2 - omega^2) (2 omega) + 8 p^2 omega & = -4 omega^3 + (8p^2 + 4 omega_0^2) omega = 0. $ So, $ omega = sqrt(2p^2 + omega_0^2) $ maximizes the amplitude of the resonance.

Interestingly, the frequency that maximizes the amplitude term is not frequency of the natural damped oscillation $omega_2$, but $sqrt(omega_0^2 - 2p^2)$.

#lbl(<lem:stp>, lemma[
  $ cos A - cos B = 2 sin((B - A)/2) sin((A + B)/2). $
])
#proof[
  Although this theorem may be verified with brutal expansion of the right side with $ sin(alpha + beta) = sin alpha cos beta + sin beta cos alpha, $ it remains as the high school (or comp math) way. The grown-ups way involves complex numbers. $ e^(i theta) = cos theta + i sin theta & ==> sin theta = (e^(i theta) - e^(-i theta))/(2i). $ Let $alpha:= (A + B)/2, quad beta := (A - B)/2$,
  Then
  $
    "rhs" & = 2 sin alpha sin beta \
          & = 2 (e^(i alpha)-e^(-i alpha))/(2i)
            (e^(i beta)-e^(-i beta))/(2i) \
          & = -1/2
            (e^(i alpha)-e^(-i alpha))
            (e^(i beta)-e^(-i beta)) \
          & = -1/2(
              e^(i(alpha+beta))
              - e^(i(alpha-beta))
              - e^(-i(alpha-beta))
              + e^(-i(alpha+beta))
            ) \
          & = 1/2(
              e^(i(alpha-beta))
              + e^(-i(alpha-beta))
            )
            -
            1/2(
              e^(i(alpha+beta))
              + e^(-i(alpha+beta))
            ) \
          & = cos(alpha-beta)-cos(alpha+beta) \
          & = cos B-cos A.
  $
]


Still, it must be noted that in the case of the swing, the amplitude quickly increases such that the small angle approximation no longer suffice. Unfortunately, there are no analytical solutions to $ dot.double(theta)(t) + mu dot(theta)(t) +g/L sin(theta(t)) = 0 . $  Even if damping is negligible, the solution to $ dot.double(theta)(t) + g/L sin(theta(t)) = 0 $ is unfortunately $ theta(t) = 2 op("am") ((sqrt(2g + L c_1) (t + c_2))/(2sqrt(L)), (4g)/(2g + L c_1) ) $ where $          c_1, c_2 & = "constants depending on initial conditions" \
  op("am") (u, k) & = integral_0^u op("dn")(v, k) dif v #tag[(Jacobi amplitude function)] \
= op("dn") (u, k) & = sqrt(1- k^2 sin^2 (phi)) #tag[(Jacobi elliptic function)] $ and $phi$ satisfies $ u = integral_)^phi (dif t)/sqrt(1 - k^2 sin^2 (t)). $

Perhaps, don't think about too much math the next time you are playing with your friends on swings.
