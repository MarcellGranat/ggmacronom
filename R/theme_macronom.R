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
  # extrafont::loadfonts(device="win")
  theme(
    plot.title = element_text(family = "Roboto", face = "bold", size = 20,
                              colour = "black", hjust = .5),
    text = element_text(family = "Roboto"),
    axis.text = element_text(family = "Roboto", size = 12),
    axis.line.y = element_line(colour = "azure4",
                             size = 1.1),
    axis.ticks = element_blank(),
    panel.grid.major.y = element_line(colour = "gainsboro",
                                    size = 0.6),
    panel.grid.minor = element_line(linetype = "blank"),
    panel.background = element_rect(fill = NA),
    legend.text = element_text(size = 18,
                               family = "Roboto"),
    legend.key = element_rect(fill = NA),
    legend.background = element_rect(fill = NA),
    legend.title = element_text(family = "Roboto", size = 14, face = "bold", color = "black"),
    legend.position = "bottom", legend.direction = "horizontal"
  )
}
