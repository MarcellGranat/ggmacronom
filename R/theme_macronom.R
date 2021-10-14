theme_macronom <- function() {
  theme_minimal(base_family = "Roboto") +
  theme(
    plot.title = element_text(family = "Roboto", face = "bold", size = 20,
                              colour = "#a39661", hjust = .5),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    text = element_text(family = "Roboto"),
    axis.text = element_text(family = "Roboto", size = 12),
    axis.title = element_text(family = "Roboto", size = 14, face = "bold"),
    strip.text  = element_text(size = 18, face = "bold",
                               family = "Roboto"),
    legend.text = element_text(size = 18,
                               family = "Roboto"),
    legend.title = element_text(family = "Roboto", size = 14, face = "bold", color = "black"),
    legend.position = "bottom", legend.direction = "horizontal"
  )
}
