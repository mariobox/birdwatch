\name{validate_species}
\alias{validate_species}
\title{Validate Species}
\description{A helper function to determine if the value of a species entered by the user corresponds to a valid bird species.}
\usage{
validate_state(species)
}
\arguments{
\item{species}{a character vector, e.g. c("norcar", "baleag")}
}
\value{
If input contains an invalid species: a warning message will alert user and stop program. 
If input contains all valid species codes: return to the function that called it without returning a value, as through a pass.
}
\examples{
validate_species(c("norcar", "xxxxxx"))
# Will warn the user that `xxxxxx` is not a valid species.

validate_state("norcar", "baleag")
# Will pass and go back to the calling function, since values provided are valid bird species.

validate_state("")
# Will warn the user that ` ` is not a valid species.
}