#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Fourier Series",
  route: "fourier",
  label: <sec:fourier>,
  children: [
    #include "funda/index.typ"
    #include "review/index.typ"
  ],
)

It is possible, with complexifying and @thm:exp-input and @thm:special-exp-input to find the response ($y$) given sinusoidal input ($f(t) = sin (n t)$ or $f(t) = cos(n t)$).
Hence, if the input may be represented by a linear combination of (sinusoids $sin(n t)$ and $cos(n t)$ where $n in NN$), combining all the responses (assume linearity) with decomposed inputs solves the differential equation.
