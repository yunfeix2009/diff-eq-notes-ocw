#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Change of Variables",
  route: "change-var",
  label: <sec:change-var>,
)

Separation of variables and integration factor are the two fundamental ways of solving differential equations. Hence, when it is possible to algebraically manipulate an equation into a linear first-order equation, or one that is separable, the equation is then immediately solved.

The first important technology is scaling. Scaling could rid units and simplify the constants.
#example[
  The heat equation for high $T$ is $ dv(T, t) = k(M^4 - T^4) $ where $M$ is the environment temperature and $T$ is the temperature of the object at examination.

  Let $r:= T/M$, a dimensionless number, then $ M dv(r, t) = k M^4 (1 - r^4) ==> dv(r, t) = k M^4 (1 - r^4). $ Let $K:= k M^3$, (lumping constants, as known in engineering and physics), $ dv(r, t) = K (1-r^4). $
]

Then, we have substitutions, which could be categorized as _direct_, which defines the new variable as a combination of existing ones, and _inverse_, which defines an existing variable as a combination of new ones and existing ones. For example, "u-sub" is direct while "trig-sub" is inverse. Notice that $r = T/M$ is a direct substitution while $T = r M$ is an inverse substitution.

We first consider direct substitution.

#example[
  Solve the differential equation $ x^2 y y' + 4x = x^3. $
]
#solution[
  Let $u := y^2$, $u' = 2 y y'$. Thus, $ x^2/2 u' = x^3 - 4x, $ which may be solved directly via separation of variables.
]

#example[
  Solve the Bernoulli equation: $ y' = p(x) y + q(x) y^n, quad n != 0. $
]
#solution[
  Divide both sides by $y^n$ and let $ k := 1/y^(n-1). $
  Then, $ k' = (1-n) 1/y^n y' => y'/y^n = k'/(1-n). $ Thus, $ y'/y^n = p(x) /y^(n-1) + q(x) \ ==> k' = (1-n) p(x) k + (1-n) q(x) . $ From here, the equation could be solved with integration factor.
]

#example[
  Solve the Bernoulli equation $ y' = y/x - y^2. $
]
#solution[
  $
    y' = y/x - y^2\ ==> y'/y^2 - 1/x 1/y = -1 \ ==> k' + 1/x k = 1 #tag[k:= 1/y] \ ==> x k' + k = x = (x k)' \ ==> x k = 1/2 x^2 + C \ ==> k = 1/2 x + C/x. #qedhere
  $
]

With inverse substitution, homogeneous first-order ODE's @def:homo could be solved.
#example[
  Solve the homogeneous ODE $ y' = f(y/x). $
]
#solution[
  Let $z := y/x$, $ y = z x ==> y' = z' x + z. $ Thus, $ z' x + z = f(z) \ ==> dv(z, x) = f(z)-z \ ==> (dif z)/(f(z) - z) = dif x. $ From here, it is solvable with separation of variables.
]

#example[
  Consider a starship traveling away from a star in planar motion. Given that the starship always makes a $45^degree$ angle with the incident light from the star, find its trajectory.
]
#solution[
  Although this problem is easier solved with polar coordinates, for the sake of practicing, we use rectilinear coordinates. Let the star be at the origin. Assume the starship is at $(x_0, y_0)$ in an instant, the slope at which it travels if $ tan(arctan(y_0/x_0) + 45^degree) = (y_0/x_0 + 1)/(1 - y_0/x_0). $ Let $z := y_0/x_0$, the slope becomes $ y' = x z ' + z = (z +1)/(1-z) \ ==> (dif z)/((z+1)/(1-z) - z) = (dif x)/x \ ==> (1-z)/(1+z^2) dif z =( dif x)x \ ==> arctan(z) - 1/2 ln(1+z^2) = ln x +C\ ==> arctan (y/x) = ln(sqrt(1+(y/x)^2)) + ln x + C \ ==> arctan (y/x) = ln(sqrt(x^2 + y^2)) + C \ ==> theta = ln(r) + C #tag[change of coordinates] \ ==> r = C e^theta, $ known as exponential spiral.
]
