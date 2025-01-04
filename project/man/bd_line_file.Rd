\name{bd_line_file}
\alias{bd_line_file}
\title{Bird Observations Per Month - File}
\description{A function to prepare a file for input to the bd_line_plot function.}
\usage{
bd_line_file(species, state)
}
\arguments{
\item{species}{a character vector of one or several bird species as denominated by their SPECIES_CODE, e.g. c("norcar", "rebwoo") for the northern cardinal and red belly woodpecker}
}
\value{
A tibble consisting of any number of observations of four variables: `factor_month`, `SPECIES_CODE`, `american_english_name` and `observations` that will then be fed into `bd_line_plot`.
}
\examples{
bd_line_file(c("norcar", "rebwoo"), "FL")
# Will return a tibble with the observations of northern cardinal and red belly woodpecker, grouped by month and summarized by total observations per month in Florida.

bd_line_file(c("norcar", "rebwoo"), "XX")
# Will return a warning message since "XX" is not a valid state.

bd_line_file(c("norcar", "rebwoo"))
# Will return a tibble with the observations of northern cardinal and red belly woodpecker, grouped by month and summarized by total observations in all states, since no particular state is provided.

bd_line_file(c("nonexistingspecies"), "FL")
# Will return a warning message since the species argument provided doesn't include any valid species

bd_line_file("", "FL")
# Will return a warning message since the species argument wasn't provided and one is needed
}