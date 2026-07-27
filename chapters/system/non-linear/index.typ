#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Non-linear Systems of ODE's",
  route: "non-linear",
  label: <sec:non-linear-system>,
)

This section is devoted to solving systems of ODE's that are non-linear, albeit generally impossible, and extracting with all techniques acquired so far about insights on the described system. Specifically, autonomous systems are the focus.

Consider the general case for two variables, $ cases(dv(x, t) = f(x, y), dv(y, t) = g(x, y)). $
Taking the ratio gives the velocity field from @sec:geo. Although information is lost, the difficulty in solving is general much lowered as there is one less equation.

#lbl(<emp:yumfish>, example[
  Solve and analyze the following system of differential equations $ cases(x' = -a x + b x y, y' = c y - d x y), quad a, b, c, d, > 0. $
])
#solution[
  First, notice that the critical points are $ (x, y) = (0, 0), (c/d, a/b). $
  Take the linearization at the origin, the quadratic terms then vanish, leaving the relation $ mat(x'; y') = mat(-a, 0; 0, c) mat(x; y). $ The coefficient matrix has eigenvalues $ lambda = -a, c. $ So, the origin is a saddle as it shrinks along the direction of the eigenvector of $-a$ and explodes along the direction of the eigenvector of $c$.

  Notice that the Jacobian is $ vb(J) = mat(-a + b y, b x; -d y, c - d x). $ Evaluating at the critical point $(c/d, a/b)$, $ vb(J)_((c/d, a/b)) = mat(0, b c/d; - d a /b, 0), $ giving the linearized system at $(c/d, a/b)$ $ cases(x' = (b c)/d y, y' = -(a d)/b x). $ Thus, this critical point is a center.

  To solve the equations, taking the ratio gives $ dv(y, x) = (y(c - d x))/(x (b y - a)), $ a separable equation. So, $               (b y - a)/y dif y & = (c - d x)/x dif x \
                ==> b - a/y dif y & = c/x - d \
                ==> b y - a ln(y) & = c ln(x) - d x + C \
              ==> e^(b y) dot a/y & = C(c x dot e^(- d x)) \
  ==> c/a y/e^(b y) dot x/e^(d x) & = C. $
  To realize the geometric properties of this equation, notice that it is the contour curve of the function $ h(x, y) = x e^(-d x) y e^(- b y). $ Also, the (easy to verify, global maximum of $u e^(- u)$ is at $(1, 1)$ so the maximum of $h$ is $(1/b, 1/d)$. Moreover, fixing $u e^(-u)$, there are $0$, $1$, or $2$ values for $u$, so if $y$ is fixed, there are that many $x$ values and vice versa. Hence, the graph must be mutually not intersecting cycles rather than spirals.

  Easy to verify that the direction of the cycles is clockwise, making biological sense @sec:bio.
]
#remark[
  As a change that makes biological sense, suppose the equation is slightly altered into $ cases(x' = -a x + b x y - k x, y' = c y - d x y - k y), $ equivalently $ a := a + k, quad c := c - k. $ The new critical point is $ ((c - k)/d, (a +k)/b). $
]
