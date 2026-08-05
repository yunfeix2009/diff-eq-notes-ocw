#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Exam One",
  route: "exam-one",
  label: <sec:exam-one>,
)
The following problems are taken from the Exam One from the courseware. Problem 2 is omitted as it is centered on graphing.

#set enum(numbering: "1.a.")
+ Pest Crisis
  + In a perfect environment, the population of Norway rat that breeds on the MIT campus increases by a factor of $e approx 2.718281828459045 dots$ each year. Model this natural growth by a differential equation. What is the growth rate $k$?
    #solution[
      By the perfect environment assumption, the growth is exponential, modeled by $ p' = a p $ for certain $c$. The general solution is $ p = C e^(a t). $ Taking the ratio of $ p(t+1)/p(t) = e^a $ implies that $a = 1$. Thus, the equation is $ p' = p. qedhere $
    ]

  + MIT is a limited environment, with a maximal sustainable Norway rat population of $R = 1000$ rats. Write down the logistic equation modeling this. (You may use “$k$” for the natural growth rate here if you failed to find it in (a).
    #solution[
      In the limiting case of low $p$, the equation is $p' = p$. The correction term is a quadratic. Let the equation be $ p' = p - b p^2. $ Since maximum capacity is a critical point of the differential equation, $ p - b p^2 = 0, quad p = 1000. $ Thus, $b = 1/1000$, giving the logistic equation $ p' = p(1 - p/1000).qedhere $
    ]

  + The MIT pest control service intends to control these rats by killing them at a constant rate of $a$ rats per year. If it wants to limit the rat population to 75% of the maximal sustainable population, what rate $a$ it should aim for (in rats per year)?
    #solution[
      The resulting equation $ p' = p(1 - p/1000) - a $ must have the steady state $p = 750$. Thus, $0 = 750(1 - 750/1000) - a$, giving $a = 750(1 - 3/4) = 750(1/4) = 187.5$.
    ]


+ Euler

  + Use Euler’s method with stepsize $h = 1/2$ to estimate the value at $x = 3/2$ of the solution to $y' = x + y$ such that $y(0) = 1$. #solution[
      We have $y' = x + y$. Using Euler's method with $h = 1/2$, we compute:
      - At $x = 0$, $y(0) = 1$.
      - At $x = 1/2$, $y(1/2) approx y(0) + h (0 + y(0)) = 1 + 1/2(0 + 1) = 1 + 1/2 = 3/2$.
      - At $x = 1$, $y(1) approx y(1/2) + h (1/2 + y(1/2)) = 3/2 + 1/2(1/2 + 3/2) = 3/2 + 1/2(2) = 3/2 + 1 = 5/2$.
      - At $x = 3/2$, $y(3/2) approx y(1) + h (1 + y(1)) = 5/2 + 1/2(1 + 5/2) = 5/2 + 1/2(7/2) = 5/2 + 7/4 = 10/4 + 7/4 = 17/4$.
      Thus, the estimate is $y(3/2) approx 17/4$.
    ]
  + Find the solution of $t dot(x) + x = cos t$ such that $x(pi) = 1$. #solution[
      In the case where $t = 0$, the given equation becomes $x = 1$, a constant function. When $t != 0$, standardizing the equation gives $ dot(x) + x/t = (cos t)/t. $ The integrating factor is $u = t$, giving $ (x t)' = cos t. $ Hence, $ x t = sin t + C $, or $ x = (sin t + C)/t. $ Substituting the initial value $x(pi) = 1$ gives $ 1 = (sin pi + C)/pi, $ or $C = pi$. So, the final equation is $ x = (sin t + pi)/t.qedhere $
    ]

+ Complex
  + Find real $a, b$ such that $1/(3 + 2i) = a + b i$. #solution[
      $ (a, b) = (3/13, -2/13). qedhere $
    ]
  + Find real $r, theta$ such that $1 - i = r e^(i theta)$. #solution[
      $ sqrt(2) e^(i(-pi/4)), quad (r, theta) = (sqrt(2), -pi/4). $
    ]

  + Find real $a, b$ such that $(1 - i)^8 = a + b i$. #solution[
      $ "ori" = (sqrt(2))^8 op("cis") (8 dot (-pi/4)) = 16 \ ==> (a, b) = (16, 0). qedhere $
    ]

  + Find real $a, b$ such that $b > 0$ and $a + b i$ is a cube root of $-1$. #solution[
      The answer is the first $6$-th roots of unity, so $ (a, b) = (1/2, sqrt(3)/2). qedhere $
    ]
  + Find real $a, b$ such that $e^(ln 2 + i pi) = a + b i$. #solution[
      $ "ori" = 2 e^(i pi) = 2(-1) = -2 \ ==> (a, b) = (-2, 0).qedhere $
    ]

  + Write $f(t) = 2 cos(4t) - 2 sin(4t)$ in the form $A cos(omega t - phi)$. #solution[
      The amplitude is $A = sqrt(2^2 + (-2)^2) = sqrt(8) = 2 sqrt(2)$, and the phase is $phi = arctan(-1) = -pi/4$. Thus, $f(t) = A cos(omega t - phi)$ with $A = 2 sqrt(2), omega = 4, phi = -pi/4. qedhere$
    ]


+ First-order
  + Find a particular solution to the equation $dot(x) + 3x = e^(2t)$. #solution[
      With @thm:exp-input, $ x_p = (1/5)e^(2t) + c e^(3 t).qedhere $
    ]
  + Find the solution to the same equation such that $x(0) = 1$. #solution[
      Applying the initial condition $x(0) = 1$ gives $1 = (1/5) + c$, or $c = 4/5$. So, the final solution is $x = (1/5)e^(2t) + (4/5)e^(3t).$
    ]
  + Write down a linear equation with exponential right hand side of which $dot(x) + 3x = cos(2t)$ is the real part. #solution[
      The equation is $dot(x) + 3x = e^(2i t) .qedhere$
    ]
  + Find a particular solution to the equation $dot(x) + 3x = cos(2t)$. #solution[
      With @thm:exp-input, the particular solution to the complexified equation is $ x_p & = e^(i 2 t)/(3 + 2 i) & = e^(i(2 t - phi))/sqrt(2^2 + 3^2), quad phi:= arctan(2/3). $ Therefore, the solution to the given equation is $ x_p = cos(2 t - phi)/sqrt(13), quad phi:= arctan(2/3).qedhere $
    ]
