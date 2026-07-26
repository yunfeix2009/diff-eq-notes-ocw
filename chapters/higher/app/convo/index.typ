#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Convolution",
  route: "convo",
  label: <sec:convo>,
)

This section discusses convolutions and their applications. There are incredibly many ways of introducing this concept naturally and I have seen it done in number theory, computer graphics, etc. Here, we first introduce how it comes from Laplace transform, then its applications.

Although $ cal(L)(f + g) = cal(L)(f) + cal(L)(g), $ there are no useful ways of expressing $cal(L)( f g)$. Stepping back, a natural question that rise is what can be said about $cal(L)(g) cal(L)(f)$

#definition[
  The convolution between functions $f$ and $g$ is $ f* g = integral_0^u f(t) g(u - t) dif t. $
]

#theorem[
  Given $ f(t) arrow.squiggly F(s), quad g(t) arrow.squiggly G(s), $ $ F(s) G(s) = integral_0^oo e^(-s t) (f * g) dif t $
]
