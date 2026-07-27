#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Classical Model of Relationships",
  route: "love",
  label: <sec:love>,
)

This section discusses love, or relationships in general, mot a particularly interesting subject as other applications of differential equations. However, it is still noteworthy that (likely over-) simplified situations may be described by differential equations and crucial insights thereby extracted.

For example, @emp:love illustrates this idea and may be interpreted through the romantic lens. $x$ and $y$ are quantitative representations of love, with units of hearts and $0$ representing equilibrium. Hence, the individual associated with $x$ per the first equation feels good when loved and in love. However, the individual associated with $y$ represents the opposite where there is a negative feedback: when in love, the response is similar to #let _quote = quote[ "Suppose I marry this girl, 40 years of seeing the same person at breakfast all the time... I must be crazy!" ]
#let _credit = [
  -— Arthur Mattuck , #cite(<mattuck1803lec26>)]

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

The result
