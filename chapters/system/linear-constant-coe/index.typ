#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Linear Systems of ODE's with Constant Coefficients",
  route: "linear-const-coe",
  label: <sec:linear-system-coe>,
)

Like solving linear algebraic equations, elimination and systematic linear algebra ways are the two major approaches.

#lbl(<emp:heat-system>, example[
  Solve the following system of differential equations $ cases(T'_1 = -2 T_1 + 2 T_2, T'_2 = 2T_1 -5 T_2). $
])
#solution[
  From the first equation, $ T_2 = (T'_1 + 2 T_1)/2. $ Substituting $T_2$ to the second equation, $ & quad quad ((T'_1 + 2 T_1)/2)' = 2 T_1 - 5 (T'_1 + 2 T_1)/2 \
  & ==> T''_1 + 2T'_1 = 4 T_1 - 5 T'_1 - 10 T_1 \
  & ==> T''_1 + 7 T'_1 + 6 T = 0. $ The roots of the characteristics equation are $r = -1, -6$, so the general solution is $ T_1 = C_1 e^(-t) + C_2 e^(-6t). $ So, $ T_2 & = (T'_1 + 2 T_1)/2 \
      & = 1/2 (-C_1 e^(-t) - 6C_2 e^(-t) + 2C_1 e^(-t) + 2C_2 e^(-6t)) \
      & = 1/2 C_1 e^(-t) - 2 C_2 e^(-6t). $

  Combining, the answer is $ cases(C_1 e^(-t) + C_2 e^(-6t), 1/2 C_1 e^(-t) - 2 C_2 e^(-6t))thin thin.#qedhere $
]
#remark[
  The above method with elimination introduces higher orders for less dependent variables.
]
Using matrices gives the following solution.
#solution[
  Notice that the differential equations could be re-written into the form of $ mat(T'_1; T'_2) = mat(-2, 2; 2, -5) mat(T_1; T_2). $

  Also, from linearity, the solution must be in form of $ mat(T_1; T_2) = C_1 mat(a; b) e^(lambda_1 t) + C_2 mat(c; d) e^(lambda_2 t). $ By superposition principle, $ mat(T_1; T_2) = mat(a; b) e^(lambda t). $ So, $ lambda mat(a; b) e^(lambda t) = mat(-2, 2; 2, -5) mat(a; b) e^(lambda t) \ ==> lambda mat(a; b) = mat(-2, 2; 2, -5) mat(a; b) #tag[($e^(lambda t) !=0$)]. $
  Observe, from here, that $mat(a; b)$ is the eigenvector of $mat(-2, 2; 2, -5)$ and $lambda$ its eigenvalue. Hence, to solve this problem, it suffices to find the eigenvalues and eigenvectors of the coefficient matrix (as the equations are homogeneous).
]
#remark[
  Similar concepts are illustrated @saint_even_linear_algebra_notes_2026, Section 9.4. This method with matrices does not necessarily save any computation, but provide a more systematic approach. This is because to get the eigenvalues, the characteristic equation of the matrix must be solved, which introduces even the process of obtaining the polynomial. Computationally, however, operations involving matrices are well-optimized to be used.
]

The matrix method is more appropriate when the problem reflects an intrinsic symmetry that elimination often unnecessarily breaks.

#example[
  A circular fish tank is partitioned into three congruent parts from its center. Each part initially holds water of different temperature, then conducts heat via conduction. Find the evolution of the temperature of each cell. Assume the conductivity of the partition is unit.
]
#solution[
  Let the three cells be $x_1$, $x_2$, and $x_3$. Hence, $ vb(x)' = mat(-2, 1, 1; 1, -2, 1; 1, 1, -2) vb(x). $ To find the eigenvalues, $ 0 & = det(vb(A) - lambda vb(I)) \
    & = det mat(-2 - lambda, 1, 1; 1, -2 - lambda, 1; 1, 1, -2 - lambda) \
    & = -(lambda + 2)^3 + 2 - 3( - 2- lambda ) \
    & = lambda^3 + 6 lambda^2 + 9 lambda. $ So, $lambda = -3, 0$, with $-3$ repeating, corresponding to $ mat(1; 1; 1), quad mat(1; 0; -1), quad mat(1; -1; 0). $ So, the general solution is  $ vb(x) = C_1 mat(1; 1; 1) + C_2 mat(1; 0; -1) e^(-3t) + C_3 mat(1; -1; 0) e^(-3 t). #qedhere $
]
#remark[
  Observe that the steady-state solution is $ vb(x) = C_1 mat(1; 1; 1), $ meaning all the cells have the same temperature, making physical sense.
]

It should be noted that, similar to how directly solving the characteristic equation of a higher-order linear constant-coefficient equation, repeating roots introduces trouble that must be reconciled with the form $x^n e^x$, the matrix-based method would face the same phenomenon too. This occurs exactly when there is a repeating eigenvector (note that it is not the case with repeating eigenvalue necessarily, as illustrated with the above example @emp:heat-system). Interestingly, real symmetric matrices have complete eigenvectors, removing this possibility.

In the case where the eigenvalues are complex, the solution proceeds similar to the solution with real eigenvalues.
#lbl(<emp:love>, example[
  Solve the system $ cases(x' = x + 2y, y' = -x- y). $
])
#solution[
  The coefficient matrix is $ vb(A) := mat(1, 2; -1, -1). $ Then, the characteristic equation is $ lambda^2 - trace vb(A) lambda + det vb(A) = 0, $ or $ lambda^2 + 1 = 0, quad lambda = plus.minus i. $ The corresponding eigenvector to $lambda = i$ is $ mat(2; -1 + i) = mat(2; -1) + i mat(0; 1). $ Therefore, $ e^(i t) vb(v) & = (cos t + i sin t) (mat(2; -1) + i mat(0; 1) ) \
                & = (mat(2; -1) cos t - mat(0; 1) sin t) \
                & quad+ i (mat(2; -1) sin t + mat(0; 1) cos t). $ The general solution is $ cases(x(t) = 2 C_1 cos t + 2 C_2 sin t, y(t) = C_1 (sin t - cos t) + C_2 (cos t - sin t)).#qedhere $
]
