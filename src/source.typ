#let title = "Notes on Differential Equation"
#let course = "MIT OpenCourseWare 18.03"
#let authors = "Saint Even and Slipper King"
#let date = "July 2026"
#let abstract = [
  Covers nonlinear dynamics and control of underactuated mechanical systems, with an emphasis on computational methods. Topics include the nonlinear dynamics of robotic manipulators, applied optimal and robust control and motion planning. Discussions include examples from biology and applications to legged locomotion, compliant manipulation, underwater robots, and flying machines.
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
    html.elem("div", attrs: (class: "abstract"), abstract)
    html.elem("div", attrs: (class: "recommendation"), web-view-recommendation)
    html.elem("p", attrs: (class: "download"), {
      html.elem("a", attrs: (class: "button", href: href("pdf/notes.pdf")), [Download PDF])
    })
  })
}

#let pdf-cover(outline-target: heading) = [
  #set document(
    title: title,
    author: authors,
  )
  #align(center)[
    #v(2cm)
    #text(size: 24pt, weight: "bold")[Differential Equations]

    #text(size: 13pt)[MIT OpenCourseWare 18.03]

    #text(size: 13pt)[#smallcaps[Saint Even] and #smallcaps[Slipper King]]

    #text(size: 11pt)[July 2026]

    `Source: https://github.com/yunfeix2009/diff-eq-notes-ocw`
  ]

  #block(inset: 10pt)[#abstract]
  #outline(target: outline-target)
]
