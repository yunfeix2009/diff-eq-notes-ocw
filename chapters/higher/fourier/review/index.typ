#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Fourier Series Review Problems",
  route: "fourier-review",
  label: <sec:fourier>,
)

This section presents a few problems aimed to be a quick review of basics related to Fourier series (as in topics in @sec:fourier-fundamental and @sec:vibration).
The following problems are taken from Practice Problems 21 from the courseware.

#set enum(numbering: "1.a.")
+ What is the general solution to $dot.double(x) + omega_n^2 x = 0$? Try to remember it rather than deriving it again.
  #solution[
    $ a sin(omega_n t) + b cos(omega_n t) = A cos(omega_n t - phi).qedhere $

  ]

+ Verify that, as long as $omega != plus.minus omega_n$,
  $ x_p = a cos(omega t)/(omega_n^2 - omega^2) $
  is a solution to
  $ dot.double(x) + omega_n^2 x = a cos(omega t), $
  and that
  $ y_p = b sin(omega t)/(omega_n^2 - omega^2) $
  is a solution to
  $ dot.double(y) + omega_n^2 y = b sin(omega t). $
  #solution[
    $ dot.double(x)_p + x_p = (- a omega^2 cos(omega t))/(omega_n^2 - omega^2) + (a omega_n^2 cos(omega t))/(omega_n^2 - omega^2) = a cos (omega t). $ Similar argument applies to $y_p$.
  ]

+ What about $dot.double(x) + omega_n^2 x = cos(omega_n t)$? What is a particular solution? What is the general solution? Are there any solutions $x(t)$ such that $abs(x(t)) < 10^6$ for all $t$? Are there any periodic solutions?
  #solution[
    $ x_p & = Re((t e^(i omega_n t))/(p'(omega_n i))) \
        & = (t sin(omega_n t))/(2 omega_n). $ Hence, the general solution is $ x = x_p + x_c = (t sin(omega_n t))/(2 omega_n) + a sin(omega_n t) + b cos(omega_n t). $ Since the particular solution term is unbounded while the homogeneous term is bounded, the general solution is unbounded. Hence, there is _no_ solution $x(t)$ such that $abs(x(t)) < 10^6$ for all $t$. Similarly, since the homogeneous term is periodic but the particular solution is not, there are _no_ periodic solutions.
  ]

  A function is periodic if there is a number $P > 0$ such that $f(t + P) = f(t)$ for all $t$. Such a number $P$ is then a “period” of $f(t)$. If $f(t)$ is a periodic function that is continuous and not constant, then there is a smallest period, often called _the period_.

+ On the same set of axes, sketch the graphs of $sin(t)$ and $sin(2t)$. Then sketch the graph of $f(t) = sin(t) + sin(2t)$.

  Some pointers: $f(t)$ is easy to evaluate when one of the terms is zero. What is the derivative at points where both terms are zero? This information should be enough to let you make a rough sketch.

  What are the periods of these three functions?
  #solution[
    Graphs omitted, period is $2pi$.
  ]

+ For what values of $omega_n$ is there a periodic solution to the equation
  $ dot.double(x) + omega_n^2 x = b_1 sin(t) + b_2 sin(2t) $
  (where $b_1$ and $b_2$ are nonzero)? Name one if it exists.
  #solution[
    There is a periodic solution as long as the the driving frequency does not match the natural frequency. Hence, for all $omega_n != 1, 2$, there is a periodic solution.
  ]
