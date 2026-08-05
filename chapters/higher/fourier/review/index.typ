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

Given the square wave, $op("sq")(t)$: the odd function of period $2 pi$ such that $op("sq")(t) = 1$ for $0 < t < pi$ has Fourier series
$ op("sq")(t) = 4/pi (sin(t) + sin(3t)/3 + sin(5t)/5 + dots.c). $ Graph the function $f(t)$ that is even, periodic with period $2 pi$, and such that $f(t) = 2$ for $0 < t < pi/2$ and $f(t) = 0$ for $pi/2 < t < pi$. Find its Fourier series in two ways:

+ Use the integral expressions for the Fourier coefficients. (Is the function even or odd? What can you say immediately about the coefficients?)
  #solution[
    By parity, $b_n = 0$. $ a_n & = 4/pi integral_0^(pi/2) cos(n t) dif t & = cases(4/(pi n) sin((n pi)/2) &"if" n>0, 2 &"if" n=0). $
    So, $ f(t) & = 1 + 4/pi sum_(n=1)^oo sin((n pi)/2)/n cos(n t) \
         & = 1 + 4/pi sum_(n=0)^oo (-1)^n cos((2 n + 1) t)/(2n+1) .qedhere $
  ]

+ Express $f(t)$ in terms of $op("sq")(t)$, substitute the Fourier series for $op("sq")(t)$, and use some trigonometric identities.
  #solution[
    Notice that $ f(t) & = op("sq") (t + pi/2) + 1 \
         & = 1 + 4/pi sum_(n=1)^oo sin((2n+1) (t + pi/2))/(2 n + 1) \
         & = 1 + 4/pi sum_(n=0)^oo (-1)^n cos((2n+1) t)/(2 n + 1).qedhere $
  ]

+ Now find the Fourier series for $f(t) - 1$.
  #solution[
    $ f(t) -1 = 4/pi sum_(n=0)^oo (-1)^n cos((2n+1) t)/(2 n + 1).qedhere $
  ]

+ What is the Fourier series for $sin^2 t$?
  #solution[
    $ sin^2 t = (1 - cos(2t))/2.qedhere $
  ]
  #remark[
    Don't get trolled.
  ]


+ Graph the odd function $g(x)$ that is periodic with period $pi$ and such that $g(x) = 1$ for $0 < x < pi/2$. Since $2 pi$ is also a period of $g(x)$, it has a Fourier series of period $2 pi$ as above. Find it by expressing $g(x)$ in terms of the standard square wave.
  #solution[
    $
      g(x) & = op("sq")(2x) \
           & = 4/pi (sum_(n=0)^oo sin(2(2 n + 1) x)/(2 n + 1)).
    $
  ]

+ Graph the function $h(t)$ that is odd and periodic with period $2 pi$ and such that $h(t) = t$ for $0 < t < pi/2$ and $h(t) = pi - t$ for $pi/2 < t < pi$. Find its Fourier series.
  #solution[
    Notice $ h(t) & = pi integral_0^t op("sq")(t + pi/2) dt \
         & = pi integral_0^t 4/pi sum_(n=0)^oo (-1)^n cos((2n+1) t)/(2 n + 1) dt \
         & = 4 sum_(n=0)^oo (-1)^n sin((2n+1) t)/(2 n + 1)^2 . $
  ]
