#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Exam Two",
  route: "exam-two",
  label: <sec:exam-two>,
)
The following problems are taken from Exam Two from the courseware.

#set enum(numbering: "1.a.")
+ Damping
  + For what value of $k$ is the system represented by $dot.double(x) + dot(x) + k x = 0$ critically damped?
    #solution[
      The characteristic equation is $r^2 + r + k = 0$. For critical damping, the discriminant must be zero: $1 - 4k = 0$, giving $k = 1/4$.
    ]

  + For $k$ greater than that value, is the system overdamped or underdamped?
    #solution[
      For $k > 1/4$, the discriminant is negative, indicating the system is underdamped.
    ]

  + Suppose a solution of $dot.double(x) + dot(x) + k x = 0$ vanishes at $t = 1$, and then again at $t = 2$ (but not in between). What is $k$?
    #solution[
      The solution has the form $x(t) = e^(-t/2)(A cos(omega t) + B sin(omega t))$ where $omega = sqrt(k - 1/4)$. The zeros occur at $t = 1$ and $t = 2$, so we have $omega = pi$. Thus, $k = omega^2 + 1/4 = pi^2 + 1/4$.
    ]

+ Superposition
  + Find a solution of $dot.double(x) + x = 5t e^(2t)$.
    #solution[
      Suppose the particular solution $x_p$ is in form of $u (e^(2 t))$ where $u = a t + b$. Hence, $ dot.double(x_p) + x_p & = (dot.double(u) e^(2 t) + 4 dot(u) e^(2 t) + u b^2 e^(2 t)) + u e^(2 t) = 5 t e^(2 t). $ Therefore, $ 4 a + (a t + b) 5 = 5 t, quad (a, b) = (1, -4/5). $ So, $ x_p = (t - 4/5) e^(2 t).qedhere $
    ]

  + Suppose that $y(t)$ is a solution of the same equation, $dot.double(y) + y = 5t e^(2t)$, such that $y(0) = 1$ and $dot(y)(0) = 2$. (This is probably not the solution you found in (a).) Use $y(t)$ and other functions to write down a solution $x(t)$ such that $x(0) = 3$ and $dot(x)(0) = 5$.
    #solution[
      The general solution is in form of $x_p + x_h$ where $x_h$ is a homogeneous equation. Notice that $ x_h = a sin(t) + b cos(t), $ as in normalized form $ x(t) = y(t) + 3 sin(t) +2 cos(t).qedhere $
    ]

+ Resonance
  + Consider the equation $dot.double(x) + b dot(x) + k x = cos(omega t)$. We will vary the spring constant but keep $b$ fixed. For what value of $k$ is the amplitude of the sinusoidal solution maximal? (Your answer will be a function of $omega$ and may depend upon $b$ as well.)
    #solution[
      The amplitude is maximal when the system is in resonance, which occurs when the natural frequency $sqrt(k)$ matches the driving frequency $omega$. Thus, the condition for maximal amplitude is $k = omega^2$. Alternatively, this ma be found through finding the particular solution, then the amplitude and taking its derivative.
    ]

  + (Unrelated to the above.) Find the general solution of $d^3 x / d t^3 - d x / d t = 0$.
    #solution[
      The characteristic equation is $r^3 - r = 0$, which factors as $r(r - 1)(r + 1) = 0$. Thus, the roots are $r = 0, 1, -1$. Therefore, the general solution is $x(t) = C_1 + C_2 e^t + C_3 e^(-t)$.
    ]

+ System Response
  A certain system has input signal $y$ and system response $x$ related by the differential equation $dot.double(x) + dot(x) + 6x = 6y$. It is subjected to a sinusoidal input signal.

  + Calculate the complex gain $H(omega)$.
    #solution[
      The complex gain of the particular solution is the coefficient of the complex exponential term. In this case, $ x_p = (6 e^(omega t i))/((6 - omega^2)^2 + omega i). $ Therefore, $ H(omega) = 6/((6-omega^2)^2 + omega i). qedhere $
    ]

  + Compute the gain at $omega = 2$.
    #solution[
      $ H(2) = 6/(2 + 2 i) = 3/(1 + i).qedhere $
    ]

  + Compute the phase lag at $omega = 2$.
    #solution[
      $ phi = arctan(omega/(6 - omega^2)) = pi/4. qedhere $
    ]

+ Scaling and Phase
  Suppose that $1/2t sin(2t)$ is a solution to a certain equation $m dot.double(x) + b dot(x) + k x = 4 cos(2t)$.

  + Write down a solution to $m dot.double(x) + b dot(x) + k x = 4 cos(2t - 1)$.
    #solution[
      The shift is equivalent to shifting $t$ to $t-1/2$. So, the new solution is $1/2 (t-1/2) sin(2t-1). qedhere$
    ]

  + Write down a solution to $m dot.double(x) + b dot(x) + k x = 8 cos(2t)$.
    #solution[
      By linearity, $t sin(2 t)$ solves the equation.
    ]

  + Determine $m$, $b$, and $k$.
    #solution[
      Since $1/2 t sin (2t)$ solves the given equation, the characteristic equation has a repeated root, but the solution is of $sin$, so the roots are imaginary, namely $plus.minus 2i$. Hence, $ m s^2 + b s + k = m(s^2 + 4), $ impling $ b = 0, quad k = 4 m. $ From @thm:exp-input, the particular solution to the complexified equation is $ x_p = (4 t e^(2t i))/(p'(2i)) = (4t e^(2 t i))/(4 m i) = (t e^(2 t i))/(m i). $ The real part is $ (t sin(2 t))/m, $ which should match $1/2 t sin(2t)$, thus $m = 2$. Therefore, $ (m, b, k) = (2, 0, 8).qedhere $

    ]
    #remark[
      Although directly substituting the solution into the equation and find $m$, $b$, and $k$ with undetermined coefficient is possible, it is not fully exploit the structure of the equation and the special form of the given solution.
    ]
