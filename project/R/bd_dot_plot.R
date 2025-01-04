# generate scatter plot of different species of birds on a map

bd_dot_plot <- function(locs, title = "Scatterplot") {
  # map the US including state lines
  usa <- st_as_sf(maps::map("state", fill=TRUE, plot =FALSE))
  
  # plot locations where northern cardinals have been spotted in the USA
  ggplot(usa) +
    geom_sf() +
    geom_jitter(data = locs, aes(x = LONGITUDE, y = LATITUDE, color = american_english_name), size = 1, shape = 21, width = 0.15, height = 0.15) +
    labs(title = title, color = "Species") +
    theme_classic()
}