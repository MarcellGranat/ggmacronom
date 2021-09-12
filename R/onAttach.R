.onAttach <- function(...) {
  library(ggplot2)
  showtext::showtext_auto()

  update_geom_defaults("point", list(size = 1.4, shape = 21, color = "black", fill = ggmacronom::macronom_colors(2)))
  update_geom_defaults("line", list(size = 1.4, color = ggmacronom::macronom_colors(2)))

  ggthemr::ggthemr(
    ggthemr::define_palette(
      swatch = macronom_colors(1:10),
      gradient = c(lower = "#D22211", "#469240")
    )
  )

  theme_set(
    ggmacronom::theme_macronom()
  )
  packageStartupMessage("Theme updated")
}
