.onAttach <- function(...) {
  library(ggplot2)
  library(showtext)
  font_add_google("Roboto", "Roboto")
  showtext_auto()

  update_geom_defaults("point", list(size = 1.4, shape = 21, color = "black",
                                     fill = ggmacronom::macronom_colors(2)))
  update_geom_defaults("line", list(size = 1.4, color = "black"))
  update_geom_defaults("tile", list(color = "black"))
  update_geom_defaults("col", list(color = "black",
                                   fill = ggmacronom::macronom_colors("blue")))
  update_geom_defaults("label", list(family = "Roboto"))
  update_geom_defaults("text", list(family = "Roboto"))

  ggthemr::ggthemr(
    ggthemr::define_palette(
      swatch = macronom_colors(1:10),
      gradient = c(lower = ggmacronom::macronom_colors("low"), ggmacronom::macronom_colors("high"))
    )
  )

  theme_set(
    ggmacronom::theme_macronom()
  )
  packageStartupMessage("Theme updated")
}
