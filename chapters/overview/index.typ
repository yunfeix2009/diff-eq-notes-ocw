#import "/lib.typ": *

#show: docs-chapter.with(
  title: "Overview",
  route: "overview",
  description: "categorize diff eqs",
)
This section presents the frequently used categorizations of differential equations, general approaches to them, and the focus of this set of notes.

A differential equation is an equation expressing a relation between
functions and their derivatives. Typically, solving a differential equation (or a system of differential equations) means finding the functions that satisfy the equation, rather than values of the independent variables in the case of algebraic equations.
When the equation consists of only one independent variable, it is an
_ordinary differential equations_ (ODE); when the equation consists of more than one independent variable, it is a _partial differential equations_ (PDE).

Examples of ODEs include the simple harmonic oscillator: $ dv(y, t, 2) + k y = 0, quad #tag[(discussed in @sec:damped-osc)] $ and the logistic equation: $ dv(y, t) = r y (1 - y/K), quad #tag[(discussed in @sec:auto)]. $

Examples of partial differential equations include the heat equation: $ pdv(u, t) = k laplacian_vb(x) u, $ which is shown to model diffusion in Section 4.5.3 of _Notes on Multivariable Calculus_ @saint_multivariable_calculus_notes, the wave equation: $ pdv(u, t, 2) = pdv(u, vb(x), 2), $ and the Laplace equation: $ pdv(u, x, 2) + pdv(u, y, 2) = 0, $ all with significant mathematical and physical consequences.
Because PDEs contain substantial material beyond the scope of these introductory notes, they are not a primary focus. However, great resources on learning them could be found at OpenCourseWare, such as Introduction to Partial Differential Equations @mitocw_18_152_fall2005, Linear Partial Differential Equations, @mitocw18303, Advanced Partial Differential Equations with Applications, @mit_ocw_18_306_2009.

ODEs are the main objects of study here, especially linear ODEs, those in the form of @eqn:linear-ode as they are solvable analytically for common inputs.
#definition[
  The _order_ of an ordinary differential equation (ODE) is the highest derivative present in the equation.
]
ODEs could be further classified by their order. For example, first-order ODEs could be written in the form of #lbl(<eqn:linear-diff-eq>, $ dv(y, t) = f(y, t). $) An example of first order ODE is $ dv(y, t) = a y + q(t), $ which is solved in @sec:const-coe. Then, we would discuss second order ODEs, mostly linear $ m y'' + b y' + k y = f(t). $
The discussion of properties, physical models, and techniques for solving first and second order linear ODEs constitutes the first half of this set of notes. The second half of the notes will focus on higher order linear ODEs, systems of linear ODEs, and nonlinear ODEs.

Two methods of finding particular solutions to higher-order linear ODEs, namely Fourier series and Laplace transforms are discussed in detail.

Methods in linear algebra such as eigenvalues and eigenvectors are applied in solving systems of linear ODEs. An introduction of eigenvalues and eigenvectors could be found in Chapter 8 of _Notes on Linear Algebra_ @saint_even_linear_algebra_notes_2026.

Modeling physical systems with differential equations and extrapolating properties of them in this way is at least as important in this set of notes. The physical systems include mechanical systems, electrical circuits, and population dynamics. The properties include stability, oscillation, and resonance.

Notation-wise, derivatives are denoted by $ dv(y, t) = dot(y) = y' = D y $ for the first derivative of $y$ with respect to $t$, unless otherwise stated. For higher-order derivatives, $ dv(y, t, n) =y^((n)) = D^n y $ is used.
