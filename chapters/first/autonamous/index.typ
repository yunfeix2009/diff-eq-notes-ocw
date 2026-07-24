#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Autonomous ODE",
  route: "autonomous",
  label: <sec:auto>,
)


#let _quote = quote[Draw pictures instead. Draw pictures.]
#let _credit = [
  Prof. Arthur Mattuck
]
#context {
  let render-mode = state("render-mode").get()
  if render-mode == "pdf" {
    align(center)[#_quote]
    align(right)[#_credit]
  } else {
    html.elem("div", attrs: (style: "text-align: center;"), _quote)
    html.elem("div", attrs: (style: "text-align: right;padding-bottom: 0.5rem"), _credit)
  }
}

#definition[
  A first-order ODE is _autonomous_ iff it could be written in the form of $ dv(y, t) = f(y), $ specifically independent of $t$.
]

Of course, with separation of variables, this equation may be solved analytically. It is still useful to extract qualitative inferences about its solution without going through the integration.

One particularly useful tool for drawing qualitative conclusions from a differential equation is Direction field, @def:direction-field.

Firstly, since $dv(y, t)$ is independent of $t$, the slopes on the isocline $dv(y, t)$, which is a horizontal line $y = y_0$ are equal. Thus, all the integral curves, @def:integral-curve, are parallel.

Moreover, the critical points of the solution, $dv(y, t) = 0$ are zeros of $f(y)$. Since all integral curves are parallel, if there is a critical point, then it is the asymptote of all integral curves. In the case that there are two critical points $y_1> y_0$, solutions above both may either approach or leave the top line $y = y_1$, solutions below both either approach or leave the bottom line $y= y_0$, and solutions in the middle stay in the middle, approaching $y = y_0$ on the left and $y = y_1$ on the right.

Each horizontal line at the height of a critical point form a solution. In the case that solutions approach it from both top and bottom, it is termed a _stable solution_; when solutions leave it from both top and bottom, it is _unstable_; when one side is leaving while the other is approaching, it is _semi-stable_.

A bank account with compounded interest but fixed management fee could be modeled as $ y' = r y - w. $ Describe its directional field.

$y' > 0$ when $r y - w> 0$, or when the line $r x - w$ is above the $x$-axis. At its only zero, $y = w/r$, with a slight perturbation to the right, it keeps moving right as $dv(y, t)>0$. Similarly, with a slight perturbation to the left of the zero, it keeps moving left. Hence, the zero is unstable. The directional field is formed by curves above $y = w/r$ which keeps increasing and curves below $y = w/r$, which keeps decreasing.


Population models, such as the logistics curve, are also autonomous. Also extending from the exponential growth model, $ dv(y, t) = k y, $ when $k$ is evolving linearly as $b - a y$, the differential equation becomes logistic.
#definition[
  The logistic differential equation may be written in the form of
  $ dv(y, t) = (b - a y) y, $ or $ dv(y, t) = -a y^2 + b y. $
]

In the plane of $dv(y, t)$ versus $y$, the differential equation is a downward parabola with zeros at $0$ and $b/a$. At $b/a$, going left pushes it right while going to right also pushes it right, making it semi-stable. At $0$, going right pushes it right and going left pushes it left, making it unstable.

Hence, Above $y = b/a$, integral curves move towards $y = b/a$; between $y=b/a$ and $y = 0$, integral curves move from $y = 0$ to $y = b/a$; below $y =0$, integral curves move away from $y = 0$.

The two extensions from $dv(y, t) = k y$ could be merged to $ dv(y, t) = b y - a y^2 - h, $ which could be treated as a model of artificially raised salmon with fixed harvesting.

This inclusion of $h$ is equivalent to shifting the parabola in the plane of $dv(y, t)$ versus $y$ from the population modeling down. With enough shifting, the vertex of the parabola would be under the $x$-axis, leaving no real roots. Thus, the integral curves will just be decreasing from $-oo$ to $oo$. Before that happens, the two asymptotes move in sync towards each other, compressing (this is a qualitative section and therefore focuses more on intuition) the integral curves in the middle. In the special occasion when the parabola is tangent to $x$-axis, we have a semi-stable solution where top curves move towards it while bottom curves move away from it.
