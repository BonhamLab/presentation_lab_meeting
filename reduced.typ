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
    date: datetime(year: 2026, month: 10, day: 2),
    institution: [2026-10 MMB Faculty Research],
  ),
  config-colors(
    primary: rgb("#31825F"),
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
  
]

= Background

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
    content((12, 5), [#image("assets/binfantis/evo-breastmilk-6.2.png", width: 180pt)])
    content((12.5, 1.5), text(black)["Human" milk#linebreak() oligosacharides])
    (pause,)
    content((7, -1), [#image("assets/binfantis/evo-breastmilk-5.2.png", width: 120pt)])
    (pause,)
    content((0,0),
      box(stroke:1pt, inset:17pt, fill:white,text(red, 36pt)[
        Humans can't digest HMOs!
      ]), angle:20deg)
    }))
]

#focus-slide[
  The early life microbiome _must be_ important 
  in development
]


== The gut, brain, and immune system are intimately linked

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-1.png", width: 380pt)])
    (pause,)
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-2.png", width: 380pt)])

    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-3.png", width: 380pt)])
    (pause,)
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-4.png", width: 380pt)])
    (pause,)
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-5.png", width: 380pt)])
    }))
]


== The Khula study of child development

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
 content((0, 0), [#image("assets/child_brain_microbiome/khula_africa.png", width: 321pt)], name:"fig")
        content((-3.5,-6), text(14pt)[@zieffCharacterizingDevelopingExecutive2024], name:"cite")
        (pause,)
        content((13, 0), [#image("assets/child_brain_microbiome/khula-cohort.png", width: 304pt)], name:"fig2")
        content((10.5,-6), text(14pt)[@bonhamCodevelopmentGutMicrobial2025], name:"cite")
        (pause,)
        rect("fig2.south-east", (5.8,5), fill:white, stroke: none)
        content((13, 0), [#image("assets/child_brain_microbiome/khula-longitudinal.png", width: 284pt)], name:"fig")
        })
    )
    #v(-1em)
]


== Microbial genes are associated with brain development

#slide[
#v(1em)
#figure(image("assets/child_brain_microbiome/eeg-enrichments.png", width: 600pt))
#text(14pt)[@bonhamCodevelopmentGutMicrobial2025]
]

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((-9.5,-8), text(14pt)[@bonhamCodevelopmentGutMicrobial2025], name:"cite")

      content((0, 0), [#image("assets/child_brain_microbiome/concurrent_volcano.png", width: 673pt)], name:"fig")
      content((0, -6), [#image("assets/child_brain_microbiome/geneset-keys.png", width: 250pt)], name:"fig")

    })
  )

]

== More microbial genes are associated with _future_ brain development

#slide[

#figure(image("assets/child_brain_microbiome/fsea-futures.png", width: 600pt))
#v(-1em)
#text(14pt)[@bonhamCodevelopmentGutMicrobial2025]
]

#slide[
    #v(1em)
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/future_volcano.png", width: 673pt)], name:"fig")
        content((0, -4), [#image("assets/child_brain_microbiome/geneset-keys.png", width: 250pt)], name:"fig")
        content((-9.5,-8), text(14pt)[@bonhamCodevelopmentGutMicrobial2025], name:"cite")
        })
    )

]

== The infant microbiome undergoes a state change during weaning

#slide[
    #v(1em)
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((-4,-5.5), text(14pt)[@yassour2016natural])
        content((0, 0), [#image("assets/child_brain_microbiome/yassour_infant.png", width: 350pt)], name:"fig")
        (pause,)
        content((13, 0), [#image("assets/child_brain_microbiome/weaning-cartoon.svg", width: 350pt)], name:"fig")
        })
    )

]
#focus-slide[
Can we model the development _of the microbiome_?
]

== Infant microbiome succession follows similar patterns around the globe

#slide[
   #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/fahur-fig1a.png", width: 450pt)])
    content((-5,-6), text(14pt)[@fahurbottinoEarlyLifeMicrobial2025])
    content((12,1), text(14pt)[Guilherme])
    content((12,3), image("assets/general/guilherme_headshot.png", width: 80pt))
    rect((-14,-5.6), (-11,2), fill:white, stroke: none)

    }))
]

#slide(repeat: 3, self => [
  #let (uncover, only, alternatives) = utils.methods(self)
  #cetz.canvas({
    import cetz.draw: *
    let uncover = uncover.with(cover-fn: hide.with(bounds: true))
    
    content((0, 0), [#image("assets/child_brain_microbiome/fahur-fig3.png", width: 609pt)])
    only(1, rect((-1.0,-6.6), (3,6.4), fill:white, stroke:none))
    only("1-2", rect((3.3,-6.6), (7.3,6.4), fill:white, stroke:none))
    content((-9,-6), text(14pt)[@fahurbottinoEarlyLifeMicrobial2025])
    content((14,3), image("assets/general/guilherme_headshot.png", width: 80pt))
    content((14,1), text(14pt)[Guilherme])
  })
])

== Global succession patterns do not map neatly onto individuals

#slide[
   #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/fahur-fig2a.png", width: 350pt)])
    content((9,-6), text(14pt)[@fahurbottinoEarlyLifeMicrobial2025])
    content((14,3), image("assets/general/guilherme_headshot.png", width: 80pt))
    content((14,1), text(14pt)[Guilherme])
    rect((-12,-5.6), (-11,2), fill:white, stroke: none)
    }))
]

== Better statistical models for infant microbiome development

#slide(composer: (1fr,1fr))[
   #image("assets/child_brain_microbiome/who-length-age.png") 
 ][
- Gaussian Process models for better fit to time-varying data
  - "Microbiome age Z-score" analagous to growth curves #pause

*Other projects*
- stress responses in human milk metabolizing microbe
  _Bifidobacterium infantis_
- Software for easier analysis of Spatial 'Omics
]

#thank-you-slide(slidesurl: "https://github.com/BonhamLab/presentation_lab_meeting")

== References

#set text(11pt)

#bibliography("refs.bib", style: "annual-reviews-author-date", title:none)

