# bar plot of 25 most observed birds
bd_top25_plot <- function(data, title = "Top 25") {
  ggplot(data, aes(x = as.numeric(perc_obs), y = reorder(english_name, +as.numeric(perc_obs)))) +
    geom_point(size = 4, color = "lightblue") +
    geom_segment(aes(xend = 0, yend = english_name), linewidth = 2, color = "lightblue") +
    labs(x = "% Locations Seen", y = "Birds", title = title) +
    theme_classic()
}

# fix color of line
# increase locations seen to up to 100
# make sure no color label to the side