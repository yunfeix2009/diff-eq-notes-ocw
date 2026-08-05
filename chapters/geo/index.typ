#import "../../lib.typ": *
#show: docs-chapter.with(
  title: "Geometric Interpretation",
  route: "geo",
  description: "geometric interpretation of differential equations",
  label: <sec:geo>,
)

For the fundamental single variable first order differential equation, the solution could be realized or verified graphically.

#lbl(<def:direction-field>, definition[
  Fix $g(x) : RR -> RR$, define the _direction field_ of $g(x)$ to be the vector field with the vector at $(x_0, y_0)$ points in the direction with slope of $g(x)$.
])
#lbl(<def:integral-curve>, definition[
  A curve is an _integral curve_ of a given directional field iff it is tangent to all vectors it intersects.
])
Observe that for the direction field to be well-defined, no two integral curves intersect wrt the same direction field (which is a result of @thm:existence-uniqueness). Even more, two integral curves cannot be tangent, as if they do share a point, their extension is fixed and is given by that point and the direction field (also by @thm:existence-uniqueness). Thus, they cannot diverge.

Given $y' = f(x, y)$, the integral curve exists at $(x_0, y_0)$ if $f(x, y)$ is continuous in the neighborhood of $(x_0, y_0)$ and the curve is unique if $f_y (x, y)$ is continuous in the neighborhood of $(x_0, y_0)$ .

#theorem[
  Function $y_1 (x)$ is a solution of the differential equation $y' = f(x, y)$ iff the graph of $y_1 (x)$ is an integral curve of the direction field formed by the slope of $f(x, y)$.
]

This theorem translates that the slope is the geometric representation of the derivative.

Although the direction field could be drawn by finding the slope ($dv(y, x)$) of $f(x, y)$ at each given point. It may also be done with isoclines.

#definition[
  Given $f(x, y): RR^2 -> RR$, the _isocline_ of $f$ wrt $c$ is the curve described by $f(x, y) = c$.
]
In multivariable calculus @saint_multivariable_calculus_notes, this is exactly the level curve.

To plot all points with slope $c$, first solve $ y' = f(x, y) = c. $ Then, plot points on the isocline with slope $c$.

Let the isocline where $f(x, y) = m$ be the $m$-isocline. #lbl(<def:null-cline>, definition[
  The _null-cline_ of $f$ is the curve described by $f(x, y) = 0$, where the $0$-isocline.
])
Notice that the points on the null-cline are constant solutions to the differential equation.

#definition[
  The _separatrix_ of a directional field is a curve that separates the plane into regions of solutions that exhibits qualitatively different behaviors.
]

#definition[
  A _funnel_ is a region in the phase plane bounded by curves through which trajectories are forced to move in one direction.
]

The following really goes after @sec:system, though included here for completeness of the discussion on the geometric interpretations of differential equations.

Systems of first order autonomous (see @def:auto) systems describe a velocity field.

Take the example of the two dimensional case. $ cases(x' = f(x, y), y' = g(x, y)) $ gives the $y'/x'$, the slope, for each point in the plane. Hence, integral curves may be drawn knowing that information. This only the ratio is taken here, the lost information in the $RR^2$ representation is how "fast" the curve is moving that the point, or $sqrt((x')^2 + (y')^2)$ at $t = t_0$. Nonetheless, the velocity field describes the direction of the velocity accurately, providing a means of numerically approximating the solution curve for linear autonomous systems.
