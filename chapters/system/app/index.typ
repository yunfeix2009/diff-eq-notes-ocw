#import "/lib.typ": *

#show: docs-subchapter.with(
  title: "Modeling with Systems of ODE's",
  route: "application",
  label: <sec:system-app>,
  children: [
    #include "heat/index.typ"
    #include "circuit/index.typ"
    #include "concentration/index.typ"
    #include "war/index.typ"
  ],
)

Often, it is not difficult to complicate a previously single equation modeled system into one that requires multiple equations. They key here lies in the number of dependent variables.
