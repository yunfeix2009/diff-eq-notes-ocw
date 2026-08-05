#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Final Exam",
  route: "final-exam",
  label: <sec:final-exam>,
)
The following problems are taken from the Final Exam from the courseware. The source skips part 1(b); the remaining prompts are numbered continuously here.

#set enum(numbering: "1.a.")
+ Direction Fields and Euler’s Method
  This problem concerns the differential equation
  $ d y / d x = x^2 - y^2. $
  Let $y = f(x)$ be the solution with $f(-2) = 0$.

  + Sketch the isoclines for slopes $-2$, $0$, and $2$, and sketch the direction field along them.  
    #solution[
      
    ]

  + On the same diagram, sketch the graph of the solution $f(x)$. What is its slope at $x = -2$?  
    #solution[
      
    ]

  + Estimate $f(100)$.  
    #solution[
      
    ]

  + Suppose that the function $f(x)$ reaches a maximum at $x = a$. What is $f(a)$?  
    #solution[
      
    ]

  + Use two steps of Euler’s method to estimate $f(-1)$.  
    #solution[
      
    ]

+ Autonomous Equations and First-order Models
  In (a)–(c), consider the autonomous equation $dot(x) = 2x - 3x^2 + x^3$.

  + Sketch the phase line of this equation.  
    #solution[
      
    ]

  + Sketch the graphs of some solutions. Be sure to include at least one solution with values in each interval above, below, and between the critical points.  
    #solution[
      
    ]

  + Some solutions have points of inflection. What are the possible values of $x(a)$ if a nonconstant solution $x(t)$ has a point of inflection at $t = a$?  
    #solution[
      
    ]

  + A radioactive isotope of the element Cantabrigium, Ct, decays with half-life two years. The MIT reactor runs on Cantabrigium. At $t = 0$ there is no Ct in it, but starting at $t = 0$, Ct is added in such a way that the cumulative total amount inserted by time $t$ years is $t$ kg. Write down a differential equation for the number of moles of Ct in the reactor as a function of time. What is the initial condition?  
    #solution[
      
    ]

  + Solve the initial value problem $x (d y)/(d x) + 3y = x^2$, $y(1) = 1$.  
    #solution[
      
    ]

+ Complex Numbers
  + Find nonnegative real numbers $A$, $omega$, and $phi$ such that $upright("Re")(i e^(2i t)/(1 + i)) = A cos(omega t - phi)$.  
    #solution[
      
    ]

  + Sketch the trajectory of $e^((1 - pi i)t)$.  
    #solution[
      
    ]

  + Express the cube roots of $8i$ in the form $a + b i$ (with $a$ and $b$ real).  
    #solution[
      
    ]

+ Second-order Equations
  In (a)–(c), find one solution to $dot.double(x) + 2 dot(x) + 2x = q(t)$ for the following inputs.

  + $q(t) = t^2 + 1$.  
    #solution[
      
    ]

  + $q(t) = e^(-2t) + 1$.  
    #solution[
      
    ]

  + $q(t) = sin t$. What is the amplitude of the sinusoidal solution?  
    #solution[
      
    ]

  In (d) and (e), suppose that $t^3$ is a solution to $dot.double(x) + 2 dot(x) + 2x = q(t)$.

  + What is $q(t)$?  
    #solution[
      
    ]

  + What is the general solution to $dot.double(x) + 2 dot(x) + 2x = q(t)$?  
    #solution[
      
    ]

+ Square Waves and Fourier Series
  In (a) and (b), let $f(t) = upright("sq")(t + pi/2)$.

  + Graph $f(t)$.  
    #solution[
      
    ]

  + What is its Fourier series? (Simplify the trigonometric functions.)  
    #solution[
      
    ]

  + Find a solution to $dot.double(x) + x = upright("sq")(t)$.  
    #solution[
      
    ]

+ Generalized Derivatives and Convolution
  In (a)–(d), a student’s position in a game of Capture the Flag is given by the following graph, whose hashmarks are at unit spacing.

  #align(center, image("assets/final-exam-problem-6.png", width: 78%))

  + Graph the generalized derivative $v(t)$.  
    #solution[
      
    ]

  + Write a formula for $v(t)$ in terms of the unit step and, if necessary, the delta function.  
    #solution[
      
    ]

  + Still with the same function as in (a), graph the generalized derivative $v'(t)$.  
    #solution[
      
    ]

  + Write a formula for the acceleration $v'(t)$ in terms of the unit step and, if necessary, the delta function.  
    #solution[
      
    ]

  + Suppose that the unit impulse response of a certain operator $p(D)$ is $w(t)$. Let $q(t) = 0$ for $t < 0$ and $t > 1$, and $q(t) = 1$ for $0 < t < 1$. Find functions $a(t)$ and $b(t)$ so that the solution $x(t)$ to $p(D)x = q(t)$, with rest initial conditions, is given by
    $ x(t) = integral_(a(t))^(b(t)) w(tau) dif tau. $  
    #solution[
      
    ]

+ Transfer Functions
  This problem concerns the operator $p(D) = 2D^2 + 8D + 16I$.

  + What is the transfer function of the operator $p(D)$?  
    #solution[
      
    ]

  + What is the unit impulse response of this operator?  
    #solution[
      
    ]

  + What is the Laplace transform of the solution to $p(D)x = sin(t)$ with rest initial conditions?  
    #solution[
      
    ]

+ Eigenvalues and Matrix Exponentials
  In (a) and (b), let $A = mat(2, 12; 3, 2)$.

  + What are the eigenvalues of $A$?  
    #solution[
      
    ]

  + For each eigenvalue, find a nonzero eigenvector.  
    #solution[
      
    ]

  + Suppose that the matrix $B$ has eigenvalues $1$ and $2$, with eigenvectors $vec(1, 1)$ and $vec(-1, 1)$, respectively. Calculate $e^(B t)$.  
    #solution[
      
    ]

  + What is the solution to $dot(u) = B u$ with $u(0) = vec(2, 1)$?  
    #solution[
      
    ]

+ Linear Systems
  + Suppose again that the matrix $B$ has eigenvalues $1$ and $2$, with eigenvectors $vec(1, 1)$ and $vec(-1, 1)$, respectively. Sketch the phase portrait.  
    #solution[
      
    ]

  + Let $A = mat(a, -2; 2, 1)$, and consider the homogeneous linear system $dot(u) = A u$. For each of the following conditions, determine all values of $a$ (if any) for which the system satisfies the condition:

    - saddle;
    - star;
    - stable node;
    - stable spiral (also give the direction of rotation);
    - unstable spiral;
    - unstable defective node.  
    #solution[
      
    ]

+ Nonlinear Systems
  In (a)–(c), consider the nonlinear autonomous system
  $ cases(dot(x) &= x^2 - y^2, dot(y) &= x^2 + y^2 - 8). $

  + Find the equilibria of this system.  
    #solution[
      
    ]

  + There is one equilibrium in the southwest quadrant. Find the Jacobian at this equilibrium.  
    #solution[
      
    ]

  + The equilibrium you found in (b) is a stable spiral. For large $t$, the solutions that converge to this equilibrium have an $x$-coordinate well approximated by $A e^(a t) cos(omega t - phi)$ for some constants $A$, $phi$, $a$, and $omega$. Some of these constants depend upon the particular solution, and some are common to all solutions of this type. Find the values of those common to all such solutions.  
    #solution[
      
    ]

  + Finally, return to the autonomous equation $dot(x) = 2x - 3x^2 + x^3$ that you studied in Problem 2. Write down a formula approximating the solutions converging to the stable equilibrium when $t$ is large.  
    #solution[
      
    ]
