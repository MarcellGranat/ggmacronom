theme_macronom <- function(base_size = 11) {
  theme_minimal(base_family = "Roboto", base_size = base_size) +
  theme(
    plot.title = element_text(family = "Roboto", face = "bold", size = rel(1.5),
                              colour = "#a39661", hjust = .5),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    text = element_text(family = "Roboto"),
    axis.text = element_text(family = "Roboto"),
    axis.title = element_text(family = "Roboto", size = rel(1.2), face = "bold"),
    strip.text  = element_text(size = rel(1.4), face = "bold",
                               family = "Roboto"),
    legend.text = element_text(family = "Roboto"),
    legend.title = element_text(family = "Roboto", size = rel(1.2), face = "bold",
                                color = "black"),
    legend.position = "bottom",
    legend.background = element_blank(),
    legend.key = element_blank(),
    legend.direction = "horizontal"
  )
}
