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

macronom_colors <- function(x = 1:10, help = FALSE) {

  mycolors <- c("#000000", "#a39661", "#C8C0A0", "#8f8f8f", "#3d5481", "#e2c153", "#6c86a0", "#6c2111", "#666f50", "#daac92")
  names(mycolors) <- c("black", "brown", "brown60", "grey", "blue", "yellow", "lightblue", "burgundy", "olivia", "powder")

  if (help) {
    mycolors %>%
      enframe() %>%
      mutate(
        c = (row_number() -1) %% 5,
        r = (row_number() - 1) %/% 5
      ) %>%
      ggplot(aes(c, -r, fill = name, label = str_c(name, "\n", value))) +
      geom_tile(color = "black", show.legend = FALSE) +
      scale_fill_manual(values = mycolors) +
      geom_text(color = "white", fontface = "bold") +
      theme_void()
  } else {
      as.character(mycolors[x])
  }
}
