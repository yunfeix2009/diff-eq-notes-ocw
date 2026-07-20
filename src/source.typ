#let title = "Notes on Differential Equations"
#let course = "MIT OpenCourseWare 18.03"
#let authors = ("Saint Even", "Slipper King")
#let date = "July 2026"
#let abstract(render-mode) = [
  #let _quote = quote[ Since Newton, mankind has come to realize that the laws of physics are always expressed in the language of differential equations.]
  #let _credit = [
    — Steven Strogatz
  ]
  #if render-mode == "pdf" {
    align(center)[#_quote]
    align(right)[#_credit]
  } else {
    html.elem("div", attrs: (style: "text-align: center;"), _quote)
    html.elem("div", attrs: (style: "text-align: right;padding-bottom: 0.5rem"), _credit)
  }
  Differential Equations are the language in which the laws of nature are expressed.
  Understanding properties of solutions of differential equations is fundamental to much of contemporary science and engineering. Ordinary differential equations (ODE’s) deal with functions of one variable, which can often be thought of as time @mit_registrar_course18_fall2026.
]



#let web-view-recommendation = [
  For the best web viewing experience, we recommend using a Mozilla-based browser such as Firefox. This will be subject to change as browsers improve their MathML support.
]

#let source-url = "https://github.com/yunfeix2009/diff-eq-notes-ocw"

#let web-cover(href) = {
  html.elem("section", attrs: (class: "cover"), {
    html.elem("p", attrs: (class: "course"), course)
    html.elem("h1", title)
    html.elem("p", attrs: (class: "authors"), [by #smallcaps[Saint Even] and #smallcaps[Slipper King]])
    html.elem("p", attrs: (class: "date"), date)
    html.elem("div", attrs: (class: "abstract"), abstract("web"))
    html.elem("div", attrs: (class: "recommendation"), web-view-recommendation)
    html.elem("p", attrs: (class: "download"), {
      html.elem("a", attrs: (class: "button", href: href("pdf/notes.pdf")), [Download PDF])
    })
  })
}
#let join-oxford-commas(v) = {
  if v.len() < 2 { v.at(0, default: "") } else if v.len() == 2 { v.join(" and ") } else {
    v.slice(0, -1).join(", ") + ", and " + v.last()
  }
}

#let pdf-cover(outline-target: heading) = [
  #set document(
    title: title,
    author: join-oxford-commas(authors),
  )
  #set page(background: rotate(20deg, {
    let f(n) = {
      if n <= 1 {
        $#box($script(dif)$)$
      } else {
        let prev = f(n - 1)
        $#prev _(#prev)^(#prev)$
      }
    }

    text(fill: black.transparentize(85%))[$#f(8)$]
  }))
  #align(center)[
    #v(2cm)
    #text(size: 24pt, weight: "bold")[#title]

    #text(size: 13pt)[#join-oxford-commas(authors.map(smallcaps))]

    #text(size: 11pt)[#date]

    #raw("Source: " + source-url)
  ]

  #block(inset: 10pt)[#abstract("pdf")]
  #outline(target: outline-target)
  #set page(background: none)
]
