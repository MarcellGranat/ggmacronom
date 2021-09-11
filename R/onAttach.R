.onAttach <- function(...) {
  library(ggplot2)
  extrafont::loadfonts(device="win")
  theme_set(
    ggmacronom::theme_macronom()
  )
  packageStartupMessage("Theme updated")
}
