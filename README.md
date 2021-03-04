# StatisticalRethinking v4


| **Project Status**                                                               |  **Documentation**                                                               | **Build Status**                                                                                |
|:-------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------:|
|![][project-status-img] | [![][docs-stable-img]][docs-stable-url] [![][docs-dev-img]][docs-dev-url] | ![][CI-build] |

## Purpose of this package

The StatisticalRethinking.jl v4 `package` contains functions comparable to the functions in the R package "rethinking" associated with the book [Statistical Rethinking](https://xcelab.net/rm/statistical-rethinking/) by Richard McElreath.

StatisticalRethinking v4 (SR4) is a breaking change from v4.

Key diffirences between v3 and v4 are:

1. All functions introduced in the main `src` directory are mcmc independent.
2. If adaptation is needed, this is handled by methods in the `require` subdirectory of `src`.
3. SR4 will use updated versions of several StanJulia packages, e.g. StanQuap.jl, StanSample.jl, etc..

The functions in SR4 are used in the Pluto notebooks `projects` specifically intended for hands-on use while studying the book or taking the course.

To work through the StatisticalRethinking book using Julia and Stan, download `project` [StatisticalRethinkingStan.jl](https://github.com/StatisticalRethinkingJulia/StatisticalRethinkingStan.jl) and open one of the chapter Pluto notebooks.

To work through the StatisticalRethinking book using Julia and Turing, download `project` [StatisticalRethinkingTuring.jl](https://github.com/StatisticalRethinkingJulia/StatisticalRethinkingTuring.jl) and open a Pluto notebook.

Time permitting I would love to see a StatisticalRethinkingDhmc.jl, which could be a combination of Soss.jl and DynamicHMC.jl, and a StatisticalRethinkingMamba.jl!

If interested in either of the last 2 projects, please contact me!

## Important note on StatisticalRethinking v3

This is a breaking change from v2 of StatisticalRethinking.jl. I expect the first stage of this work to be completed by late Nov 2020.

If you prefer to use v2, you can use `] add StatisticalRethinking@v2.x.y` where 2.x.y is the latest released version for v2.

Given that Julia provides several very capable packages that support mcmc simulation, it only seemed appropriate to make StatisticalRethinking on Julia mcmc implementation independent.

The availablility of DynamicHMC, the huge progress made by the Turing.jl team over the last 2 years, the introduction of Julia `projects` in addition to Julia `packages`, the novel approach to notebooks in Pluto.jl and the work by [Karajan](https://github.com/karajan9/statisticalrethinking) were a few of the ideas that triggered exploring a new setup for StatisticalRethinking.jl and the 'course' projects [StatistcalRethinkingStan](https://github.com/StatisticalRethinkingJulia/StatisticalRethinkingStan.jl) and [StatisticalrethinkingTuring](https://github.com/StatisticalRethinkingJulia/StatisticalRethinkingTuring.jl)

An early, experimental version of [StructuralCausalModels.jl](https://github.com/StatisticalRethinkingJulia/StructuralCausalModels.jl) is also included as a dependency in the StatisticalRethinking.jl v3 package. In the meantime I will definitely keep my eyes on [Omega.jl](https://github.com/zenna/Omega.jl) and [CausalInference.jl](https://github.com/mschauer/CausalInference.jl). StructuralCausalModels does provide ways to convert DAGs to Daggity and ggm formats.

Also now added as a dependency is [StatsModelComparisons.jl](https://github.com/StatisticalRethinkingJulia/StatsModelComparisons.jl) which provides PSIS and WAIC statistics. From chapter 7 onwards these are used in StatisticalRethinking.

Finally, for a good while I have been looking for a great statistics book using Julia as kind of an introductory text to StatisticalRethinking and I believe the first couple of chapters in an upcoming book [Statistics with Julia](https://statisticswithjulia.org/index.html) by Yoni Nazarathy and Hayden Klok are exactly that.

As [StatisticalRethinking](https://github.com/StatisticalRethinkingJulia) v3 is also (DrWatson & Pkg) project based and uses Pluto notebooks, I have converted the book `listings` in the first 5 chapters to Pluto Notebooks in a new repository in StatisticalRethinkingJulia, i.e. [StatisticsWithJuliaPlutoNotebooks](https://github.com/StatisticalRethinkingJulia/StatisticsWithJuliaPlutoNotebooks.jl). 

After chapter 4, `Statistics with Julia` follows the frequentionist approach while `Statistical Rethinking` opts for the Bayesian approach. Most of the material in chapters 5 and 6 of `Statistics with Julia` is therefore also covered using a more Bayesian perspective in the early chapters of the notebook projects [StatisticalRethinkingStan](https://github.com/StatisticalRethinkingJulia/StatisticalRethinkingStan.jl) and [StatisticalRethinkingTuring](https://github.com/StatisticalRethinkingJulia/StatisticalRethinkingTuring.jl). 

## Versions

A v4.0.0 is under development but will rely on changes in the StanJulia set of packages.

### Version 3.2.0

- Option to retieve sampling results as a NamedTuple
- Added new method to plotbounds() to handle NamedTuples
- Added plotlines()

### Versions v3.1.1 - 3.1.8

- Updates from CompatHelper
- Switch to Github actions (CI, Documenter)
- Updates from Rik Huijzer (link function)
- Redo quap() based on StanOptimize
- Start Updating notebooks in ch 2-8 using new quap()
- Redoing and updating the models in the models subdirectory

### Version 3.1.0
Note 1: It is my intention to moce (stan based) quap() into a separate package StanQuap.jl once I'm satified with its features and stability. Likely in v3.3.

Note 2: Once all models are updated this will be released as v3.2.0. At the same time StanModels.jl will be updated.

### Version 4.0.0

This will be a next step in restructuring the functions/methods in the `src` and `src/require` directories to achieve mcmc package independent.

Stan related note: All quap() functionality related to Stan will be moved to a separate package [StanQuap.jl](https://github.com/StanJulia/StanQuap.jl). StanQuap.jl is *absolutely* not efficient. I see it as a compromis to use the Stan Language consistently in StatisticalRethinking based projects and at the same time learn the ins and outs of the Stan Language (I actually really like the Stan Language as a DSL).

An inital version of `trunkplot()` (SR ch9) is under construction.

### Version 3.2.x

Introduction of ParetoSmoothedImportanceSampling.

### Version 3.1.x

Align (stanbased) quap with Turing quap. quap() now returns a NamedTuple that includes a field `distr` which represents the quadratic Normal (MvNormal) approximation.

### Version 3.0.0


Initially StatisticalRethinkingTuring.jl will lag StatisticalRethinkingStan.jl somewhat but later this year both will cover the same chapters.


### Version 2.2.9

Currently the latest release available in the StatisticalRethinking.jl v2 format.

## Installation

To install the package (from the REPL):

```
] add StatisticalRethinking
```

but in most cases this package will be a dependency of another package or project, e.g. StatisticalRethinkingStan.jl or StatisticalRethinkingTuring.jl.

## Documentation

- [**STABLE**][docs-stable-url] &mdash; **documentation of the most recently tagged version.**
- [**DEVEL**][docs-dev-url] &mdash; *documentation of the in-development version.*

## Acknowledgements

Of course, without the excellent textbook by Richard McElreath, this package would not have been possible. The author has also been supportive of this work and gave permission to use the datasets.

## Questions and issues

Question and contributions are very welcome, as are feature requests and suggestions. Please open an [issue][issues-url] if you encounter any problems or have a question.

[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://statisticalrethinkingjulia.github.io/StatisticalRethinking.jl/latest

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://statisticalrethinkingjulia.github.io/StatisticalRethinking.jl/stable

[CI-build]: https://github.com/StatisticalRethinkingJulia/StatisticalRethinking.jl/workflows/CI/badge.svg?branch=master

[![codecov](https://codecov.io/gh/StatisticalRethinkingJulia/StatisticalRethinking.jl/branch/master/graph/badge.svg?token=TFxRFbKONS)](https://codecov.io/gh/StatisticalRethinkingJulia/StatisticalRethinking.jl)

[![Coverage Status](https://coveralls.io/repos/github/StatisticalRethinkingJulia/StatisticalRethinking.jl/badge.svg?branch=master)](https://coveralls.io/github/StatisticalRethinkingJulia/StatisticalRethinking.jl?branch=master)

[codecov-img]: https://codecov.io/gh/StatisticalRethinkingJulia/StatisticalRethinking.jl/branch/master/graph/badge.svg
[codecov-url]: https://codecov.io/gh/StatisticalRethinkingJulia/StatisticalRethinking.jl

[issues-url]: https://github.com/StatisticalRethinkingJulia/StatisticalRethinking.jl/issues

[project-status-img]: https://img.shields.io/badge/lifecycle-wip-orange.svg

