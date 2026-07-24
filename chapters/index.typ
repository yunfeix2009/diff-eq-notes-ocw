

#import "/src/components/index.typ": render-mode, route-folders, thm-counter, thm-state

#set heading(numbering: none)
#route-folders.update(())
#thm-counter.thm-counters.update((:))
#thm-state.thm-stored.update(())

#include "cover.typ"
#include "preface/index.typ"

#context if render-mode.get() == "pdf" {
  pagebreak()
}

#set heading(numbering: "1.1")
#counter(heading).update(0)

#include "overview/index.typ"
#include "preliminaries/index.typ"
#include "geo/index.typ"
#include "first/index.typ"
#include "second/index.typ"
#include "higher/index.typ"
#include "approximation/index.typ"
#include "robot-dynamics/index.typ"

#set heading(numbering: "A.1")
#counter(heading).update(0)
#route-folders.update(("appendices",))
#include "appendices/index.typ"


#context if render-mode.get() == "pdf" { pagebreak() }
#include "bibliography/index.typ"
