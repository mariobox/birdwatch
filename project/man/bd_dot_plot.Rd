\name{bd_dot_plot}
\alias{bd_dot_plot}
\title{Bird Observations Geographical Plot}
\description{A function that indicates in a US map the locations where a species or group of bird species have been spotted in the continental US.}
\usage{
bd_dot_plot(locs, title)
}
\arguments{
  \item{locs}{a tibble displaying the LATITUDE and LONGITUDE of all observations for a selected group of bird species, previously provided to the `bd_dot_file` function.}
  \item{title}{a character string with the title we want to give to our chart.}
}
\value{
A `ggplot` showing a the locations in the US map where the selected group of bird species has been spotted, in the state provided to the `bd_dot_file` function.
}
\examples{
bd_dot_plot(locs, "Northern Cardinal observations in FL")
# Will return a geom_jitter ggplot over a US map showing spots where the Northern Cardinal has been spotted in FL (if the user selected FL as state argument in `bd_dot_file`).

bd_dot_plot("")
# Will result in a warning explaining that the argument needs to be a data frame.

bd_dot_plot(locs)
# Will return a geom_jitter ggplot over a US map showing spots where the Northern Cardinal has been spotted in the state provided by the user in `bd_dot_file`. If no state was provided it will show all observations in the continental US. Since no title is provided, the default title of "Scatterplot" will be used.

}