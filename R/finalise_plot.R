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

finalise_plot <- function (plot_name = ggplot2::last_plot(),
                           source_name = str_c("Saját szekesztés, ", Sys.Date()),
                           save_filepath = str_c(getwd(), "/plot.svg"),
                           width_pixels = 640, height_pixels = 450,
                           save = FALSE
)  {

    logo_image_path <- file.path(system.file("logos/macronom_logo.png",
                                             package = "ggmacronom")
    )

  footer <- grid::grobTree(grid::textGrob(source_name,
                                          x = 0.05, hjust = 0.1, y = .3, gp = grid::gpar(fontsize = 12, col = "gray30", fontfamily = "Roboto", fontface = "italic")),
                           grid::rasterGrob(png::readPNG(logo_image_path), x = .85, y = .5,  width = .3))

  pieces <- c("subtitle", "title", "caption")
  grob <- ggplot2::ggplotGrob(plot_name)
  n <- length(pieces)
  grob$layout$l[grob$layout$name %in% pieces] <- 2
  plot_left_aligned <- grob


  plot_grid <- ggpubr::ggarrange(plot_left_aligned, footer,
                                 ncol = 1, nrow = 2,
                                 heights = c(1, 0.15/(height_pixels/450)))
  grid::grid.draw(plot_grid)

  if (save) {
    ggplot2::ggsave(filename = save_filepath,
                    plot=plot_grid, width=(width_pixels/72), height=(height_pixels/72))
  }
  invisible(plot_grid)
}




