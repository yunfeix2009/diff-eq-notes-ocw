#import "/lib.typ": *

#show: docs-chapter.with(
  title: "Overview",
  route: "overview",
  description: "categorize diff eqs",
)
In this section, we present the categories of differential equations, the general approach to them, and what is (and is not) covered here.

Differential equations are equations that include a function's derivative. Therefore, based on whether partial derivatives are present, differential equations could be categorized as _Ordinary Differential Equations_ (ODE) and _Partial Differential Equations_ (PDE).

Examples of partial differential equations include the heat equation: $ pdv(u, t) = k laplacian_vb(x) u, $ which are shown as diffusion equations in Section 4.5.3 of _Notes on Multivariable Calculus_ @saint_multivariable_calculus_notes, wave equation: $ pdv(u, t, 2) = pdv(u, vb(x), 2), $ and Laplace equation: $ pdv(u, x, 2) + pdv(u, y, 2) = 0, $ all with significant mathematical and physical consequences.  The very end of this set of notes will briefly discuss them.
Due to the rich content of this subject in comparison with the intention of this set of notes, PDE's are not not going to be discussed further than these equations. However, great resources on learning them could be found at OpenCourseWare, such as Introduction to Partial Differential Equations @mitocw_18_152_fall2005, Linear Partial Differential Equations, @mitocw18303, Advanced Partial Differential Equations with Applications, @mit_ocw_18_306_2009.

ODE's are going to be the main objects of study here. They could be further classified by the highest order of differentiation included. The first order ODE's could be written in the form of $ dv(y, t) = f(y, t). $ For example, $ dv(y, t) = a y + q(t) $ is a first order ODE that would be solved later. Then, we would discuss second order ODE's such as $ dv(y, t, 2) =-k y, quad "and" m y'' + b y' + k y = f(t). $

Moreover, in solving a system of differential equations, methods in linear algebra such as eigenvalues and eigenvectors are useful. More on eigenvalues and eigenvectors in Chapter 8 of _Notes on Linear Algebra_ @saint_even_linear_algebra_notes_2026, examples of solving differential equations with them are included in Section 10.4 Differential Equations, though there would be plentiful of examples included here.


Besides presenting how to solve differential equations, how to model systems and behaviors with differential equations are also presented in this set of notes.
