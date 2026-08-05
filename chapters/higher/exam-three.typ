#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Exam Three",
  route: "exam-three",
  label: <sec:exam-three>,
)
The following problems are taken from Exam Three from the courseware.

#set enum(numbering: "1.a.")
+ A certain periodic function has Fourier series
  $ f(t) = 1 + cos(pi t)/2 + cos(2 pi t)/4 + cos(3 pi t)/8 + cos(4 pi t)/16 + dots.c $

  + What is the minimal period of $f(t)$?
    #solution[

    ]

  + Is $f(t)$ even, odd, neither, or both?
    #solution[

    ]

  + Give the Fourier series of a periodic solution (if one exists) of $dot.double(x) + omega_n^2 x = f(t)$.
    #solution[

    ]

  + For what values of $omega_n$ is there no periodic solution?
    #solution[

    ]

+ Let $f(t) = (u(t + 1) - u(t - 1))t$.

  + Sketch a graph of $f(t)$.
    #solution[

    ]

  + Sketch a graph of the generalized derivative $f'(t)$.
    #solution[

    ]

  + Write a formula for the generalized derivative $f'(t)$.
    #solution[

    ]

+ Let $p(D)$ be the operator whose unit impulse response is given by $w(t) = e^(-t) - e^(-3t)$.

  + Using convolution, find the unit step response of this operator: the solution to $p(D)v = u(t)$ with rest initial conditions.
    #solution[

    ]

  + What is the transfer function $W(s)$ of the operator $p(D)$?
    #solution[

    ]

  + What is the characteristic polynomial $p(s)$?
    #solution[

    ]

+ Inverse Laplace Transforms
  + Find a generalized function $f(t)$ with Laplace transform $F(s) = (e^(-s) (s - 1))/s$.
    #solution[

    ]

  + Find a function $f(t)$ with Laplace transform $F(s) = (s + 10)/(s^3 + 2s^2 + 10s)$.
    #solution[

    ]

+ Let $W(s) = (s + 10)/(s^3 + 2s^2 + 10s)$.

  + Sketch the pole diagram of $W(s)$.
    #solution[

    ]

  + If $W(s)$ is the transfer function of an LTI system, what is the Laplace transform of the response from rest initial conditions to the input $sin(2t)$?
    #solution[

    ]
