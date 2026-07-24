#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Constant Coefficient ODE's",
  route: "const-coe-ode",
  label: <sec:const-coe-ode>,
)

Higher-order linear equations with constant coefficients could be solved with Laplace transform, @sec:laplace. Consider the general form of such equation $ a_n y^((n)) + a_(n-1) y^((n-1)) + dots.c + a_2 y'' + a_1 y' + a_0 y = f(t) $ with arbitrary initial conditions $ y(0) = y_0, quad y'(0) = y_1. $

As an overview, generally to solve such equations, take Laplace transform of both sides. Let $y(t) -> Y(s)$, this step results in an algebraic equation of $Y$ with a solution as a rational function. Hence, it may be decomposed as simple fractions with partial fractional decomposition, then be applied inverse Laplace transformation for $y$.

#example[
  Given $f(0) = 1, quad f'(0) = 0$, solve the differential equation $ y'' - y = e^(-t). $
]
Of course, this equation may be solved by methods in @sec:com-exp; however, we use Laplace transform here.
#solution[
  Applying Laplace transform on both sides gives $ cal(L)(y'' - y ) & = (s^2 F(s) - s f(0) - f'(0)) - F(s), $ $ cal(L)(e^(-t)) = 1/(s+1), quad s > 0. $ Hence, $ (s^2 - 1) F(s) - s = 1/(s+1). $ So, $ F(s) & = (s^2 + s + 1)/((s+1)^2 (s - 1)) \
       & = (-1/2)/(s+1)^2 + (3/4)/(s+1) + (1/4)/(s-1). $ Applying inverse Laplace transform, $ y(t) = -1/2 t e^(-t) + 3/4 e^(- t) + 1/4 e^(t). $
]

Although it seems like solving linear differential equations with Laplace transform introduces the limitation of the input being exponential type, practically it is highly unlikely for the input to be growing faster than exponentials. Differential equations are often used to model real world phenomenons, often physical systems. In nature, however, faster than exponentials are incredibly rare. Moreover, the fact that this method requires the initial values is not a fundamental constraint as any method would introduce $n$ constants anyway, often by integration. The requirement of $y(0)$ and $y^((n))(0)$ is simply Laplace transform's way of introducing degrees of freedom.
