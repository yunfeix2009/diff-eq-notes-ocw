#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "War",
  route: "war",
  label: <sec:war>,
)

Consider the following model. Assume the two engaged sides each have $X$ and $Y$ units. Every unit in $X$ have $x$ capability, meaning they are able to neutralize, on average, $x$ opposing units in unit time. Similarly, let the capability of units of the other party be $y$.

In cold weapon era, due to geological constraints, there are at most $k$ units from each side able to be deployed.
In this case, $dv(X, t)$ and $dv(Y, t)$ are both constant, namely $-k y$ and $- k x$, assuming $Y> k$ and $X> k$, respectively.
The model hence is linear. The side that wins out is the second one going to $0$, or a larger $x$-intercept.
$ cases(dv(X, t) = -k y, dv(Y, t) = -k x) ==> cases(X(t) = X_0 - k y t, Y(t) = Y_0 - k x t). $ Let $t_x$, $t_y$ be the time at which each party reaches $0$ remaining units, $ cases(t_x = X_0/(k y), t_y = Y_0/(k x)). $ So, $ t_x > t_y <==> X_0 x > Y_0 y. $
Therefore, the core criterion that determines the result of the engagement is the product of the number of units initially and capability.

This model is extremely over-simplified, including the homogeneity of units of each side, fixed number of combating units, fight-til-die mentality of all soldiers, ideal damage making, etc. Nonetheless, this model still reveals the essential insight that the result-determining criterion is proportional to initial units and capability.

Removing the constraint on maximum number of units engaging, the model resembles more to the hot weapon case as in line infantry or two resting positions both within opposing party's artillery range.

Thus, the differential equation becomes $ cases(dv(X, t) = - y Y, dv(Y, t) = -x X). $ Still, it remains as linear first-order autonomous.

Although direct separation of variables solves the equations, notice that time is not impactful since all units are assumed to have infinite combat will. Taking ratios gives $ dv(X, Y) = y/x Y/X, quad x, X != 0. $ Separation of variables gives $  x X dif X = y Y dif Y & ==> 1/2 x X^2 = 1/2 y Y^2+C \
==> x X^2 - y Y^2 = C. $ Hence, plotting $Y$ against $X$ shows a hyperbola. The $cal(X)$ party wins iff $X$ remains positive when $Y$ vanishes. This occurs iff $C> 0$, or $x X^2 > y Y^2$. The capability of a single unit is still linear, but the number of units is now a quadratic term in determining the result of the battle.

Socially, this distinction of power of the number of units reveals deep insights on the transition from cold-weapon to hot-weapon. In the cold-weapon era, the capability of units is roughly equivalent to the number of units in importance (with a grain of salt); however, in the hot-weapon era, the number of units becomes much more important. Historically, this was known as the introduction of gun-powder weapons breaking the monopoly of military strength held by aristocrats as a peasant with brief instruction on how to use a musket could incur fatal damage to a well-trained knight. Socially, this fact contributed to the frequent reforms and new considerations of military strength.

Since the equation is autonomous @def:auto, the velocity field may be graphed (see @sec:geo) to see the solution curves numerically.

Including time, the solution is $ cases(X(t) = C_1 e^(-omega t) + C_2 e^(omega t), Y(t) = sqrt(x/y) (C_1 e^(-omega t) - C_2 e^(omega t))), quad omega := sqrt(x y) $

#lbl(<emp:war>, example[
  In the Battle of Iwo Jima, per official records, there are $N$ Japanese soldiers initially, and vanished at the end with no reinforcement. On the other hand, there are $0$ American soldiers initially, with reinforcement described by $P(t)$, generally described by $M(t)$. The number of troops at all time is known. Find the inflected casualty rate per Japanese soldier and per U.S. solder, $A$, $B$, respectively.
])
#solution[
  The battle could be modeled by $ cases(dv(N, t) = - B M, dv(M, t) = P(t) - A N) thin thin . $ To find $B$, since $M$ is well-documented, $ N(t_f) - N(t_0) & = integral_(t_0)^t_f - B M(t) dif t \
          ==> N_0 & =B integral_(t_0)^(t_f) M(t) dif t \
            ==> B & = N_0/(integral_(t_0)^(t_f) M(t) dif t). $

  Thus, $B$ is known. From data, $B approx 0.0106$. Then, integrating $-B M$ gives $N(t)$. Manipulating the second equation gives $ A = (P(t) - dv(M, t))/N. $ All quantities on the right are known, so $A$ may be computed, which turns out around $0.0544$ @engel1954verification.
]
#remark[
  The troops curve generated through these data fits historical records remarkably well.

  The fact that both sides fought mostly with high morale and combat techniques are mostly hot-weapon makes it a good case study for Lanchester's laws.

  Moreover, notice that although $ A / B approx 5.1, $ meaning each individual Japanese soldier was more effective than U.S. soldier, the number of U.S. soldiers is roughly three times that of the Japanese, making U.S. finishing victorious.
]

Modern (post-WW II) warfare are often asymmetric. Guerrilla warfare is a common example. The guerrilla side does not engage directly, in full, with the other side. To model this, a correction may be added as in the casualty rate is multiplied to the ratio of the current to initial troops size.
Hence, the corrected model, based on @deitchman1962lanchester is #lbl(<eqn:deitchman>, $ cases(dv(X, t) = -y Y X/X_0, dv(Y, t) = -x X). $)


In this case, taking the ratio results in $ dv(X, Y) = y/x Y/X_0 & ==> X_0 dif X = y/x Y dif Y \
                     & ==> X_0 X + C = y/x 1/2 Y^2 \
                     & ==> y Y^2 - 2 x X_0 X = C. $ Thus, $cal(X)$ side taking the guerrilla tactic changed their decisive victory determinant from $x X^2$ to $2 x X_0 X$. Since $X$ is strictly decreasing, the determinant at least doubled.

Taking one more generalization, going from a negative sum battle to total war, the support or the lack therefore should be factored into the reinforcement amount. Hence, add the replenishment term $$ where $$ represents the public support while the resentment of war is modeled by $$ where $$ represents the opposing public pressure. In @emp:war, $P(t)$ represents the increasing support on the $cal(M)$ side while there is no net public impact on the $cal(N)$ side.

Looking at the "home frontier" side in itself, the Cold War arms race may be modeled as #lbl(<eqn:richardson>, $ cases(dv(R, t) = s S - sigma R + l, dv(S, t) = r R - rho S + k) $)where $R$ and $S$ are quantitative representations of arms of $cal(R)$ and $cal(S)$. The first term represent that both states' will to increase arming relates to the extent of opposing party's militarization positive and own militarization negatively, as the second term. The third term is the constant political pressure to continue arming.

Notice that the equations could be written in the form of $ mat(R; S)' = mat(-sigma, s; r, - rho) mat(R; S) + mat(l; k). $ This is an affine linear equation in the form of $ vb(x' = A x + b). $
Let $vb(y:= x+c)$, such that $ vb(y' = A (y-c) + b = A y). $ So, $vb(A c - b) = 0$, or $ vb(c) & = vb(A)^(-1) vb(b) \
      & = 1/(sigma rho - s r) mat(-rho, -s; -r, -sigma) mat(l; k) \
      & = 1/(sigma rho - s r) mat(-rho l - s k; - r l - sigma k). $

For the homogeneous equation, the characteristic equation is $ lambda^2 +(sigma + rho) lambda + (sigma rho - s r ) = 0, $ $ lambda & = 1/2(-(sigma + rho) plus.minus sqrt((sigma + rho)^2 - 4 (sigma rho - s r))) \
       & = 1/2 (-(sigma + rho) plus.minus sqrt((sigma - rho)^2 + 4 s r)). $ The corresponding eigenvector is $ mat(s; sigma + lambda). $

So, $ y = C_1 e^(lambda_1 t) mat(s; sigma + lambda_1) + C_2 e^(lambda_2 t) mat(s; sigma + lambda_2). $
Finally, since $ vb(x) & = vb(y-c), $ $ cases(R(t) = C_1 s e^(lambda_1 t) + C_2 s e^(lambda_2 t) + (p l + s k)/(sigma rho - s r), S(t) = C_1 (sigma + lambda_1) e^(lambda_1 t) + C_2 (sigma + lambda_2) s e^(lambda_2 t) + (r l + sigma k)/(sigma rho - s r)), $ where $ lambda = 1/2 (-(sigma + rho) plus.minus sqrt((sigma - rho)^2 + 4 s r)). $

From the differential equation, since it is autonomous, the velocity field may be constructed. Moreover, they are affine, so their null clines (where the derivative is zero) are $ cases(S' =0 ==> R = rho/r S - k /r, R' = 0 ==> R = s/sigma S + l/s). $

Combining @eqn:deitchman and @eqn:richardson gives the system that describes an asymmetric war @mackay2015lanchester. Let $cal(S)$ be the visible side and $cal(R)$ be the guerrilla side, the war could be modeled as
$ cases(S' = r R - sigma S - c R + k, R' = s S - rho R - d R S + l). $ Here, the first term is the @eqn:richardson term that describes how the strength of the opposing party stimulates the growth of own party. The second term describes the natural decay due to internal pressure, such as public anti-war pressure. The third term represents the combat losses, following @eqn:deitchman, where $c$ is casualty caused per $cal(R)$ unit, directly proportional to $R$ as all $cal(S)$ units are visible; however, since unit of $cal(R)$ are not apparent, $d$ could be seen as casualty caused per $cal(S)$ unit divided by the initial number of $cal(R)$ units, notice this term is proportional to both $R$ and $S$, corresponding to increasing $R$ makes $cal(R)$ units easier to spot. Lastly, the final term represent the approximately constant term where political pressure causes a steady increases in armament.
