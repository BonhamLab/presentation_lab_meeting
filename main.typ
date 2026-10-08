#import "@preview/touying:0.6.3": *
#import themes.metropolis: *
#import "@preview/cetz:0.4.2"
#import "assets/general/slides.typ": contact_info_slide, thank-you-slide

#let cetz-canvas = touying-reducer.with(
  reduce: cetz.canvas,
  cover: cetz.draw.hide.with(bounds: true),
)

#set text(font: "Liberation Sans")

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [
      Osmotic stress in _B. longum_ subsp. _infantis_ #h(0.0em)
      #box(baseline: 0.5em, [
        #image("assets/general/lab-logo-banner.png", width: 6em)
      ])
    ],
    subtitle: [Genomic and genetic approaches],
    author: [Kevin Bonham, PhD],
    date: datetime(year: 2026, month: 10, day: 8),
    institution: [2026-10 Lesser lab meeting],
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
  - Importance of _B. infantis_ in the early life microbiome
  - Initial evidence of unusual ostmotic stress phenotype
  - Troubleshooting
  - Future plans
]


== Humans have evolved to feed the infant microbiome

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), [#image("assets/binfantis/evo-breastmilk-1.png", width: 650pt)])
      content((-9, -6), text(14pt)[@taoEvolutionaryGlycomicsCharacterization2011])
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
      content(
        (0, 0),
        box(stroke: 1pt, inset: 17pt, fill: white, text(red, 36pt)[
          Humans can't digest HMOs!
        ]),
        angle: 20deg,
      )
    }),
  )
]

== _B. infantis_ is a specialized HMO metabolizer

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), [#image("assets/binfantis/tso_tree_top.png", width: 650pt)])
      content((-2, -6), [#image("assets/binfantis/tso_tree_bottom.png", width: 550pt)])
      content((10, -6), text(14pt)[@tsoTargetedHighresolutionTaxonomic2021])
    }),
  )
]

== The _B. longum_ complex is incredibly diverse

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/binfantis/shao_bl_tree.png", width: 440pt))
      content((10, -6), text(14pt)[@shaoGenomicAtlasBifidobacterium2026])
    }),
  )
]

== _B. infantis_ is in decline in Industrialized societies

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/binfantis/sonnenberg-2.png", width: 400pt))
      content((5, -5), text(14pt)[@olmRobustVariationInfant2022])
    }),
  )
]

== _B. infantis_ excludes other Bifidobacteria
#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((13, -4), image("assets/general/guilherme_headshot.png", width: 90pt))
      content((9, -6), text(14pt)[Bottino et. al. (unpublished)])
      content((0, 0), image("assets/binfantis/bottino_bi_exclusion1.png", width: 600pt))
      (pause,)
      content((0, 0), image("assets/binfantis/bottino_bi_exclusion2.png", width: 600pt))
    }),
  )
]


#focus-slide[
  #set align(left)
  1. _B. infantis_ is important in infant microbiomes
  2. _B. infantis_ is in decline in developed countries
  3. Decline cannot be attributed (solely) to breastfeeding
  #pause
  #set align(center)
  #h(3em)

  *What else can account for the loss of _B. infantis_?*
]

== _B. infantis_ is sensitive to salt concentration

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((14, 4), image("assets/general/swanson_headshot.JPG", width: 80pt))
      content((14, 0), image("assets/general/cassie_headshot.png", width: 80pt))
      content((14, -3.6), image("assets/general/trisha_headshot.jpg", width: 80pt))
      content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
      rect((-2, -6), (7.4, 6), fill: white, stroke: none)
    }),
  )
]

== Bacteria typically respond to salt quickly


#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((-4, -5.5), text(14pt)[@woodBacterialResponsesOsmotic2015 @woodOsmoticStress2014])
      content((0, 0), image("assets/binfantis/wood_basic_salt.png", width: 363pt))
      (pause,)
      content((13, 0), image("assets/binfantis/wood_ecoli_salt.png", width: 330pt))
    }),
  )
]

== _B. infantis_ lacks homologues of most known salt-response pathways

#text(16pt)[
  #set cite(style: "ieee")
  #figure(
    table(
      columns: (1fr, 2fr, 4fr),
      gutter: 2pt,
      fill: (x, y) => if y == 0 { luma(90%) },
      stroke: 0.3pt + gray,
      inset: 3pt,
      [Gene], [_B. infantis_ UniRef], [Function],
      [arcB], [B7GTP2], [Ornithine carbamoyltransferase],
      [galE], [A0AAX1LKE5], [UDP-glucose 4-epimerase],
      [garA], [A0A4V3YW21], [Glycogen accumulation],
      [glnH], [A0AAX1LHE6], [glutamate transp.],
      [gpsA], [B7GU03], [G3P dehydrogenase],
      [lta], [A0AAX1LKL0], [lipoteichoic acid synthase],
      [mazG], [A0A564S043], [Nucleoside 3P pyrophosphohydrolase],
      [murB], [A0A0M3T5T5], [UDP-N-acetylenolpyruvoylglucosamine reductase],
      [nhaA], [A0ACD7UTQ8], [Na#super[+]/H#super[+] antiporter],
      [pfkB], [A0A564S197], [ATP-dependent 6-phosphofructokinase],
      [proP], [A0A075NAP7], [proline/betaine transp.],
      [opuE], [A0A564S3N4], [Na#super[+]/Proline symporter],
      [osmC], [A0A564W350], [organic hydroperoxide reductase],
    ),
  ) ]



== _B. infantis_ responds to salt after a long lag

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((14, 4), image("assets/general/swanson_headshot.JPG", width: 80pt))
      content((14, 0), image("assets/general/cassie_headshot.png", width: 80pt))
      content((14, -3.6), image("assets/general/trisha_headshot.jpg", width: 80pt))
      content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
      rect((-2, -6), (7.4, 6), fill: white, stroke: none)
      (pause,)
      content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
    }),
  )
]

== How does _B. infantis_ respond to salt stress?

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((11, 1), image("assets/general/swanson_headshot.JPG", width: 80pt))
      content((11, -3), image("assets/general/cassie_headshot.png", width: 80pt))
      content((11, -6.6), image("assets/general/trisha_headshot.jpg", width: 80pt))
      content((0, 0), image("assets/binfantis/transfers-200mM.svg", width: 500pt))
      (pause,)
      content((0, -4.3), image("assets/binfantis/transfers-300mM.svg", width: 500pt))
      (pause,)
      content((0, -8.6), image("assets/binfantis/transfers-375mM.svg", width: 500pt))
    }),
  )
]

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((2, -5.6), image("assets/general/swanson_headshot.JPG", height: 80pt))
      content((5, -5.6), image("assets/general/cassie_headshot.png", height: 80pt))
      content((8, -5.6), image("assets/general/trisha_headshot.jpg", height: 80pt))
      content((0, 0), image("assets/binfantis/undergrads_salt_carrying.png", width: 350pt))
      (pause,)
      content((12, 0.5), image("assets/binfantis/undergrads_salt_dt.png", width: 313pt))
    }),
  )
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

== Is there variation in _B. infantis_ salt-tolerance genes?

#slide[
#set text(11pt)
#set cite(style: "ieee")
  #figure(
    table(
      columns: (1fr, 2fr, 4fr),
      gutter: 2pt,
      fill: (x, y) => if y == 0 { luma(90%) },
      stroke: 0.3pt + gray,
      inset: 3pt,
      [Gene], [_B. infantis_ UniRef], [Function],
      [arcB], [B7GTP2], [Ornithine carbamoyltransferase],
      [galE], [A0AAX1LKE5], [UDP-glucose 4-epimerase],
      [garA], [A0A4V3YW21], [Glycogen accumulation],
      [glnH], [A0AAX1LHE6], [glutamate transp.],
      [gpsA], [B7GU03], [G3P dehydrogenase],
      [lta], [A0AAX1LKL0], [lipoteichoic acid synthase],
      [mazG], [A0A564S043], [Nucleoside 3P pyrophosphohydrolase],
      [murB], [A0A0M3T5T5], [UDP-N-acetylenolpyruvoylglucosamine reductase],
      [*nhaA*], [A0ACD7UTQ8], [*Na#super[+]/H#super[+] antiporter*],
      [pfkB], [A0A564S197], [ATP-dependent 6-phosphofructokinase],
      [proP], [A0A075NAP7], [proline/betaine transp.],
      [*opuE*], [A0A564S3N4], [*Na#super[+]/Proline symporter*],
      [osmC], [A0A564W350], [organic hydroperoxide reductase],
    ),
  )
][
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/binfantis/shao_bl_tree.png", width: 379pt))
      content((-4, -6), text(14pt)[@shaoGenomicAtlasBifidobacterium2026])
    }),
  )
]

== NhaA is under stabilizing selection

#slide[
1. Use reference strain to get DNA sequence of annotated gene
2. BLAST infantis-only database to identify sequences in other strains
3. Create multiple-sequence alignment
4. Calculate dN/dS
][
  #pause
#figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/binfantis/nhaA_dnds.png", width: 350pt))
      content((0, -5), text(10pt)[AA position])
      content((2, -6.6), image("assets/general/bahar_headshot.png", height: 80pt))
      content((5, -6.6), image("assets/general/charlotte_headshot.jpeg", height: 80pt))
    }),
  )
]

== Knocking out genes in _B. infantis_

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/binfantis/ko_schematic.png", width: 650pt))
    }),
  )
]

#slide[
  #figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/binfantis/plasmid_schematic.png", width: 426pt))
    }),
  )
]

== _B. infantis_ growth troubleshooting


#slide[
Irem iterated on a bunch of stuff

- Initial inoculum amount (based on OD600)
  - Inoculated from exponential phase or stationary
- Different plate readers (cerillo / biorad)
- Shaking, not shaking
- 96 well or 24 well
][
#figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/binfantis/lots_o_curves.png", width: 350pt))
      (pause,)
      content(
        (0, 0),
        box(stroke: 1pt, inset: 17pt, fill: white, text(red, 36pt)[
          No consistent lag observed
        ]),
        angle: 20deg,
      )
    }),
  )
]

#slide[
  *Other ideas*

  - Gas mixture: undergrads worked in hungate tubes w/100% N#sub[2],
    our anaerobic chamber uses 5% H#sub[2], 5% CO#sub[2]
  - Strains from Wellesley contaminated?
  - Activation of latent phage?

][
#figure(
    cetz-canvas({
      import cetz.draw: *
      content((0, 0), image("assets/hungate.png", width: 350pt))
    }),
  )
]


#contact_info_slide

#thank-you-slide(slidesurl: "https://github.com/BonhamLab/presentation_lab_meeting")

== References

#set text(11pt)

#bibliography("refs.bib", style: "annual-reviews-author-date", title: none)

