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

theme_macronom <- function() {
  theme_minimal(base_family = "Roboto") +
  theme(
    plot.title = element_text(family = "Roboto", face = "bold", size = 20,
                              colour = "black", hjust = .5),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    text = element_text(family = "Roboto"),
    axis.line = element_blank(),
    axis.text = element_text(family = "Roboto", size = 12),
    panel.background = element_rect(fill = NA),
    strip.text  = element_text(size = 18, face = "bold",
                               family = "Roboto"),
    legend.text = element_text(size = 18,
                               family = "Roboto"),
    legend.title = element_text(family = "Roboto", size = 14, face = "bold", color = "black"),
    legend.position = "bottom", legend.direction = "horizontal"
  )
}
