\name{bd_dot_file}
\alias{bd_dot_file}
\title{bd_dot_file}
\description{Prepares a file for input to the bd_dot_plot function}
\usage{
bd_dot_file(species, state)
}
\arguments{
  \item{species}{a character vector of one or several bird species as denominated by their SPECIES_CODE, e.g. c("norcar", "rebwoo") for the northern cardinal and red belly woodpecker.
  }
}
\value{
A tibble including the LATITUDE and LONGITUDE where the species passed as an argument have been located in the state passed as an argument.
}
\examples{
bd_dot_file(c("norcar", "rebwoo"), "FL")
# Will return a tibble with the LATITUDE and LONGITUDE where northern cardinals and red belly woodpeckers have been spotted in Florida.

bd_dot_file(c("norcar", "rebwoo"), "XX")
# Will return a warning message since "XX" is not a valid state.

bd_dot_file(c("norcar", "rebwoo"))
# Will return a tibble with the LATITUDE and LONGITUDE where northern cardinals and red belly woodpeckers have been spotted in all contiguous US states, since no particular state is provided.

bd_dot_file(c("nonexistingspecies"), "FL")
# Will return a warning message since the species argument provided doesn't include any valid species

bd_dot_file("", "FL")
# Will return a warning message since the species argument wasn't provided and one is needed
}
