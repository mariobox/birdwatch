# generate the line plot of number of bird observations per month

bd_line_plot <- function(data, title = "Observations Per Month") {
  ggplot(data, aes(x = factor_month, y = observations, color = american_english_name, group = american_english_name)) +
    geom_point() +
    labs(x = "Month", y = "Observations", title = title, color = "Species") +
    geom_line()
  
}