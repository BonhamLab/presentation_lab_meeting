#import "@preview/touying:0.6.3": *
#import themes.metropolis: *
#import "@preview/cetz:0.4.2"
#import "assets/general/slides.typ": thank-you-slide, contact_info_slide

#let cetz-canvas = touying-reducer.with(
  reduce: cetz.canvas,
  cover: cetz.draw.hide.with(bounds: true)
)

#set text(font:"Liberation Sans")

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [
      _B. infantis_ and salt responses #h(4.8em)
      #box(baseline:0.5em, [
        #image("assets/general/lab-logo-banner.png", width:  8em)
      ])
    ],
    subtitle: [Plus other stuff],
    author: [Kevin Bonham, PhD],
    date: datetime(year: 2026, month: 3, day: 19),
    institution: [2026-03 Lesser lab meeting],
  ),
  config-colors(
    primary: rgb("#3172AE"),
    primary-light: rgb("#d6c6b7"),
    secondary: rgb("#23373b"),
    neutral-lightest: rgb("#ffffff"),
    neutral-dark: rgb("#23373b"),
    neutral-darkest: rgb("#23373b"),
  ),
)

#title-slide()

== Outline

#slide[
  #set text(24pt)
  - Background on Kevin
  - Early life microbiome is associated with brain development
  - _B. infantis_ salt response
]

#slide[
  #set text(24pt)
  - *Background on Kevin*
  - Early life microbiome is associated with brain development
  - _B. infantis_ salt response
]

== At the bench - Biochemistry and cell-biology of the immune system

#slide[
  #set text(18pt)
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/prmt-fig2b.png", width: 250pt)
      )]
    )
    content((0,3.2), [2006-2008])
    content((0,-5.4), text(14pt, [@bonham2010effects]))
    (pause,)
    content((1, -1.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/prmt-fig5b.png", width: 250pt)
      )]
    )
    (pause,)

    content((10,3.5), [2008-2014 (PhD)])
    content((10,-6.6), text(14pt, [@brubaker2015innate]))
    content((10, -1.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/tlr-review-fig2.gif", width: 180pt)
      )]
    )
    (pause,)
    content((16,-6.6), text(14pt, [@bonham2014promiscuous]))
    content((14, 0.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/cell-fig3e.png",width:300pt)
      )]
    )
    (pause,)
    content((15, -3.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/cell-fig4b.png",width:400pt)
      )]
    )
  }))
]


== Transition to computing - Cheese HGT

#slide[
  #set text(18pt)
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0,3.1),[2014-2017])
    content((-7,-8.2), text(14pt, [@bonham2017extensive]))
    content((0, 0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/cheese-fig1.jpg", width:  550pt)
      )]
    )
    (pause,)
    content((-4,-4),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig1a.png", width: 200pt)
      )]
    )
    (pause,)
    content((0.4,-4),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig1ab.png", width: 452pt)
      )]
    )
    (pause,)
    content((4,-5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig3a.jpg", width: 450pt)
      )]
    )
  }
  )
)]

== Expanding computing - Human microbiome epidemiology

#slide[
  #set text(18pt)
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0,1.2),[2014-2017])
    content((0, 0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/cheese-fig1.jpg", width:  150pt)
      )]
    )
    content((0,-2.3),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig1ab.png", width: 152pt)
      )]
    )
    
    content((0,-5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig3a.jpg", width: 150pt)
      )]
    )
    content((0,-6.5), text(14pt, [@bonham2017extensive]))

    content((14,3.4),[2017-2019])
    content((6,-9.2), text(14pt, [@thompsonAlterationsGutMicrobiome2023]))
    content((14,0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/arthritis-fig2.png", width: 600pt)
      )]
    )
    (pause,)
    content((15,-3.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/arthritis-fig3.png", width: 550pt)
      )]
    )

  }
))]

= Salt tolerance in _Bifidobacterium longum_ subsp. _infantis_

== Humans have evolved to feed the infant microbiome

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-1.png", width: 650pt)])
    content((-9,-6), text(14pt)[@taoEvolutionaryGlycomicsCharacterization2011])
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-2.png", width: 650pt)])

    content((0, 0), [#image("assets/binfantis/evo-breastmilk-3.png", width: 650pt)])
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-4.png", width: 650pt)])
    (pause,)
    content((7, -1), [#image("assets/binfantis/evo-breastmilk-5.2.png", width: 120pt)])
    content((2, -1), [#image("assets/binfantis/evo-breastmilk-6.2.png", width: 180pt)])
    (pause,)
    content((0,0),
      box(stroke:1pt, inset:17pt, fill:white,text(red, 36pt)[
        Humans can't digest HMOs!
      ]), angle:20deg)
    }))
]

== _B. infantis_ is a specialized HMO metabolizer

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/binfantis/tso_tree_top.png", width: 650pt)])
    content((-2, -6), [#image("assets/binfantis/tso_tree_bottom.png", width: 550pt)])
    content((10,-6), text(14pt)[@tsoTargetedHighresolutionTaxonomic2021])
    }))
]

== The _B. longum_ complex is incredibly diverse 

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), image("assets/binfantis/shao_bl_tree.png", width: 440pt))
    content((10,-6), text(14pt)[@shaoGenomicAtlasBifidobacterium2026])
    }))
]


== _B. infantis_ is in decline in Industrialized societies

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), image("assets/binfantis/sonnenberg-2.png", width: 400pt))
    content((5,-5), text(14pt)[@olmRobustVariationInfant2022])
    }))
]

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    //content((0, 0), image("assets/binfantis/bottino_bi_exclusion.png", width: 400pt))
    content((5,-5), text(14pt)[Bottino et. al. (unpublished)])
    }))
]

== _B. infantis_ is sensitive to salt concentration

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((14,4), image("assets/general/swanson_headshot.JPG", width: 80pt))
    content((14,0), image("assets/general/cassie_headshot.png", width: 80pt))
    content((14,-3.6), image("assets/general/trisha_headshot.jpg", width: 80pt))
    content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
    rect((-2,-6),(7.4,6),fill:white,stroke:none)
    }))
]

== Bacteria typically respond to salt quickly


#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((-4,-5.5), text(14pt)[@woodBacterialResponsesOsmotic2015 @woodOsmoticStress2014])
    content((0, 0), image("assets/binfantis/wood_basic_salt.png", width: 363pt))
    (pause,)
    content((13, 0), image("assets/binfantis/wood_ecoli_salt.png", width: 330pt))
    }))
]

== _B. infantis_ is sensitive to salt concentration

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((14,4), image("assets/general/swanson_headshot.JPG", width: 80pt))
    content((14,0), image("assets/general/cassie_headshot.png", width: 80pt))
    content((14,-3.6), image("assets/general/trisha_headshot.jpg", width: 80pt))
    content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
    rect((-2,-6),(7.4,6),fill:white,stroke:none)
    (pause,)
    content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
    }))
]

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0,-5.6), image("assets/general/swanson_headshot.JPG", height: 80pt))
    content((3,-5.6), image("assets/general/cassie_headshot.png", height: 80pt))
    content((6,-5.6), image("assets/general/trisha_headshot.jpg", height: 80pt))
    content((9.4,-5.6), image("assets/general/irem_headshot.jpeg", height: 80pt))
    content((0, 0), image("assets/binfantis/undergrads_salt_carrying.png", width: 350pt))
    content((12, 0.5), image("assets/binfantis/undergrads_salt_dt.png", width: 313pt))
    }))
]

== How does _B. infantis_ respond to salt stress?

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((11,1), image("assets/general/swanson_headshot.JPG", width: 80pt))
    content((11,-3), image("assets/general/cassie_headshot.png", width: 80pt))
    content((11,-6.6), image("assets/general/trisha_headshot.jpg", width: 80pt))
    content((0, 0), image("assets/binfantis/transfers-200mM.svg", width: 500pt))
    (pause,)
    content((0, -4.3), image("assets/binfantis/transfers-300mM.svg", width: 500pt))
    (pause,)
    content((0, -8.6), image("assets/binfantis/transfers-375mM.svg", width: 500pt))
    }))
]

== Lots of open questions

#text(24pt)[
- What genes are enabling adaptation to salt? 
  - RNAseq during growth / transfer experiments
  - Microbial genetics experiments #pause
- Are there variants in salt-tolerance genes in global human-associated _B. infantis_ stains?
  - We have thousands of infant metagenomes to explore
- Do other gut-associated Bifidos have different salt tolerance? (competition?)
]

== Other lab Projects

#text(24pt)[
- Microbial neuroactive gene discovery (using graph-convolutional neural networks)
- Software development - Gaussian Process models
- Spatial transcriptomics data processing / modeling (with Matt Woodruff \@ Emory)
]

#contact_info_slide

#thank-you-slide()

== References

#set text(11pt)

#bibliography("refs.bib", style: "annual-reviews-author-date", title:none)

