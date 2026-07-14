#import "../../lib.typ":* 
#show: docs-chapter.with(
  title: "Geometric Interpretation",
  route: "geo",
  description: "geometric interpretation of differential equations",
)

For the fundamental single variable first order differential equation, the solution could be realized or verified graphically. 

#definition[
  Fix $g(x) : RR -> RR $, define the _direction field_ of $g(x)$ to be the vector field with the vector at $(x_0, y_0)$ points in the direction with slope of $g(x)$.  
]
#definition[
  A curve is an _integral curve_ of a given directional field iff it is tangent to all vectors it intersects. 
]
Observe that for the direction field to be well-defined, no two integral curves intersect wrt the same direction field. Even more, two integral curves cannot be tangent, as if they do share a point, their extension is fixed and is given by that point and the direction field. Thus, they cannot diverge. 

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