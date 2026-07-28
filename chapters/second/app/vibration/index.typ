#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Vibration",
  route: "vibration",
  label: <sec:vibration>,
)

This section also employs linear second-order differential equations to understand things that oscillates, though more engineering-oriented. The guest lecture of Prof. Vandiver, whose research is regarding ocean engineering and teaches 2.003, mechanical engineering department's "Dynamics and Control I", motivated this lecture. As a side note of speaking, this talk employed many great techniques from Prof. Winston's "How to Speak."

The principle equation is the damped oscillator, #lbl(<eqn:vibration>, $ m dot.double(x) + b dot(x) + k x = F_"in". $)

To solve the homogeneous equation, take the characteristic equation, $ m x^2 + b x + k = 0. $

Algebraic manipulation gives $ x^2 + b/m x + k/m & = (x + b/(2m))^2 + k/m - (b/(2m))^2. $
Thus, $ x = -b/(2m) plus.minus sqrt((b/(2m))^2 - k/m)). $

In the case where $ k/m - (b/(2m))^2 > 0, $ the roots are imaginary, making the solutions underdamped, the only ones that vibrate.

Let $ omega_d := sqrt(k/m - (b/(2m))^2), $, the roots are $ x = -b/(2m) plus.minus i omega_d. $

The homogeneous solution is $ x_h & = C_1 e^((-b/(2m) + i omega_d)t) + C_2 e^((-b/(2m) - i omega_d)t) \
    & = e^(-(b t)/(2m)) (C'_1 cos(omega_d t) + C'_2 sin (omega_d t)) \
    & = A e^(-(b t)/(2m)) cos(omega_d t - phi) $

The above is perfectly fine mathematically, for engineering, let $ omega_n := sqrt(k/m), $ the natural frequency, $ omega_d = omega_n sqrt(1- (b/(2m omega_n))^2). $
#definition[
  Let the _damping ratio_ of a damped oscillator be $ zeta := b/(2 m omega_n). $
]
Hence, when $zeta >1$, the system is overdamped, as $omega_d$ becomes imaginary. $zeta = 1$ is the critically damped case. $zeta <1$ is where the system oscillates.
By the definition of $zeta$, $omega_n zeta = b/(2m)$, so the equation could be written as $ dot.double(x) + 2 zeta omega_n dot(x) + omega_n^2 x = 0 $ the solution could be written as $ x_h = A e^(- omega_n zeta t) cos(omega_d t - phi). $

Since physically, the exponent must be dimensionless, $ omega_n zeta t $ is dimensionless, so $[zeta] = 1/[t omega_n] = 1$, so $zeta$ is dimensionless and does not depend on the units used for other quantities, as it should.

Also notice that when $zeta << 1$, $omega_d approx omega_n$.

These engineering conventions make experimental deductions more convenient, particularly in finding the governing ODE of a physical system.  #example[
  Consider the system made up of a mass attached to a spring, with non-negligible damping. Devise experiments in order to determine the ODE that models this system.
]
#solution[
  Assume the spring follows Hooke's law, then the frequency depend only upon $k$ and $m$, which are irrelevant to the amount of displacement from equilibrium initially. Hence, despite damping, the system crosses equilibrium at regular intervals. Therefore, to obtain the natural frequency of the system, record thee amount of time the system takes to undergo a certain number of periods allows finding $omega_n$. Assuming $zeta<<1$, $omega_d$ may be approximated as $omega_n$.

  To find $zeta$, the damping ratio, there is an engineering trick that provides a quick estimation. Notice that the oscillation achieves its peak (or trough, depending on point of view), in regular intervals as $ x' = (A e^(- omega_n zeta t) cos(omega_d t - phi))'. $ Here, the intervals at which it becomes $0$ are solely subjected to the oscillatory term, which itself and its derivative both have frequency $omega_d$. Also, they are both sinusoidal, meaning their combination also have frequency $omega_d$, which is then approximately $omega_n$. Note that the first-glance response of max amplitude is achieved when the oscillatory term is maximized is incorrect, but rather to the left of it. So, assume the system takes $n$ cycles for the amplitude to be reduced in half, $ A_0/2 = A_0 e^(- omega_n zeta n (2pi)/(omega_n)) #tag[(the period is $(2pi)/omega_n$)]. $ So, $ ln(1/2) = - 2 pi n zeta \ ==> zeta = ln(2)/(2pi n) approx .11/n. $ The constant is in fact $0.1103$, very close to the rule of thumb value of $0.11$.
]
#remark[
  The two quantities favored by engineers, $omega_n$ and $zeta$ are both measurable.
]

This estimation is readily generalizable to almost all things that vibrate (assume first-order damping and Hooke's law). For instance, a guitar string.

Now up to forced oscillators. Suppose there is an object with rapid vibration. It is difficult, or impossible (as the mechanism may be inside) to directly observe how many cycles it goes through for a fixed time. However, this quantity may be measured easily with resonance. Suppose further that such object may be strapped onto say a beam (or a ruler depending on the dimensions). By adjusting the length of the beam free to vibrate to the particular length where the beam has maximum vibration, the natural frequency of the beam is equal to the frequency of the rapidly vibrating object. With direct computation or other means, the natural frequency of the beam may be obtained, giving the frequency of the rapidly vibrating object.

For example, say one is interested in the frequency of the motor in a cell phone that's providing the vibration for an alarm. Strapping the vibrating cell phone on a ruler and observe the free-to-vibrate length of the ruler where the amplitude of the vibration of the ruler is the largest, the frequency of the motor is the natural frequency of the ruler.

If a strobe is at hand, an instrument able to capture a frame with a pre-set period that is often fast, after resonance is obtained, tuning the interval between frames until the motion is almost stopped would give, note, _a multiple_ of the true period of the motion. A fantastic demonstration was presented at the lecture, which may be seen at @mit1803_vandiver_2010_lecture18.

Without the help of a strobe, the natural frequency of the beam may still be computed with the physical formula $ omega_n approx 1.194^2 pi^2/(4 L^4) sqrt((E I)/lambda) $ where $L$ is the length of the beam, $E$ is its Young's modulus, $I = (m L^2)/12$ is its rotational inertia, and $lambda$ is its linear density.

For a steel beam, this may be approximated as $ omega_n approx 3.706/L^2. $

These studies spark insights in engineering. For example, extracting power from the flow of water usually requires substantial constraints on the vertical drop or the speed of the water. However, the study @bernitsas2008vivace and experimental validation @lee2011high has shown that it is possible to extract significant energy from water flowing at just $1.3 m/s$.

The way this was done proceeds as following. From fluid dynamics, suppose a cylinder is submerged in water and has its rectangular side facing the flow, then vortexes are shed off at frequency of $ f_x approx (2U)/D $ where $U$ is the velocity of the fluid and $D$ the diameter of the cylinder. Hence, the cylinder would experience an oscillation traverse to the flow at a known period. Hence if the cylinder's natural frequency is near that of the oscillation, at resonance in other words, attaching a generator that acts as a dashpot, would produce energy.

It certainly would be amazing to end this section here. However, the study that seemed promising in 2010 when the lecture took place did not replace or scale compared to the turbines. Mechanically, the intended vibration causes constant stress in the mechanism. Economically, each cylinder generate limited power, but a large array of which would alter the fluid dynamics as vortex shedded by one cylinder may affect that of the next. Technologies parallel to it in marine energy, like technologies aiming at extracting energy from tidal and wave struggled to scale similarly due to difficulty in commercialization and competition from mature and scaled renewable energy such as solar and wind. Also, despite high potential difference that enable turbines are rare, one os such would produce energy far exceeding that of numerous oscillation based generators.

Still, this is still an active research field with numerous successful laboratory demonstrations, the future of this field remains uncertain.
