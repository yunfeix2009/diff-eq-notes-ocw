#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: "Predator-Prey",
  route: "bio",
  label: <sec:bio>,
)

Consider the simple model of predator sharx and prey yumfish (cringe names form Arthur). Without prey, predator dies out proportional to the population size while with prey, its population size increases at a rate proportional to both sharx size and yumfish size. Yumfish, on the other hand, increases exponentially without predators (corrected later) and decreases at a rate proportional to both its own size and predator size.

Hence, this model is seen at @emp:yumfish, Volterra's equations. The conclusion gives a quantitative understanding of intuitive facts as the population change forms a cycle that moves in phases of high yumfish low sharx, high yumfish high sharx, low yumfish high sharx, low yumfish low sharx. The position of the non-trivial fixed point at $(1/b, 1/d)$ is a nice discovery of the model. Moreover, the smaller the initial size of (either of) the populations, the larger they necessarily become in the future.

Assume fishing that affects both populations equally, per the remark of @emp:yumfish, the new equilibrium resides where the yumfish population increases. This has deep consequences. For example, per a historical anecdote by Prof. Mattuck, there had been attempts on lowering the mosquito population through poisoning ponds with mosquito larvae with DDT. However, such action harms the predator of mosquito larvae, in the pond equally, thereby increasing the mosquito population.

Including the squared term factors in the fact that the yumfish does not simply grow exponentially without bound even without the predators. The resultant equations become Robin-Earthworm equations.
