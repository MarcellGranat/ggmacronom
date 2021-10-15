# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

theme_macronom_ts <- function(base_size) {
  ggmacronom::theme_macronom(base_size) +
    theme(
      panel.background = element_rect(fill = NA),
      panel.grid.minor = element_line(linetype = "blank"),
      panel.grid.major.y = element_line(size = 0.6)
    )
}
