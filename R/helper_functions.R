
library(ggplot2)
library(dplyr)
library(rlang)

# create a custom theme for plots ----
plot_theme <- theme(
  panel.grid.minor = element_blank(),
  panel.grid.major = element_blank(),
  panel.background = element_rect(fill = "white"),
  axis.line = element_line("black"),
  panel.border = element_rect(fill = NA, colour = "black"),
  strip.background = element_rect(fill = "grey 80", colour =
                                    "black"),
  strip.text.x = element_text(size = 7)
)

#' Create a plot that visualises the number of observations per category
#'
#' @param df a dataframe
#' @param column the observations to be visualised
#' @param geom the geometry function to use (the default is geom_bar)
#' @param y_label y-axis label
#' @param x_label x-axis label
bar_count <- function(df,
                      column,
                      geom = geom_bar(fill = '#2072b2'),
                      y_label = 'Count',
                      x_label = 'Category') {
  # Convert character vector of grouping columns into symbols
  #group_syms <- syms(group_columns)

  df %>%
    ggplot(aes(y = column)) +
    geom +
    plot_theme +
    labs(x = x_label, y = y_label)

}
