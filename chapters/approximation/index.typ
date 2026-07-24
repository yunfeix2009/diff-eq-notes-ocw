#import "../../lib.typ": *

#show: docs-chapter.with(
  title: "Numerical Approximations",
  route: "approx",
  description: "approximating the solution of a differential equation numerically. ",

  children: [
    #include "euler/index.typ"
  ],
)

#let _quote = quote[ They are really freaking hard to solve ]
#let _credit = [
  -— 3Blue1Brown , #cite(<sanderson2019differential>)]

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


Often, the solution to a given differential equation would be difficult to find, and sometimes impossible in the sense that the solution cannot be represented as a combination of the elementary functions. Thus, a numerical approximation is necessary occasionally. In this section, we present methods on numerical approximations.

