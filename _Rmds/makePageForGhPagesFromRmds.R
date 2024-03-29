myjekyllsite = c("http://ricardomayerb.github.io/qmacroexamples/")

KnitPost <- function(input, base.url = myjekyllsite) {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  knit(input, envir = parent.frame())
}

KnitPost("./productivity-statespace-filtering-toy.Rmd")
