\name{bird_page}
\alias{bird_page}
\title{Bird Page}
\description{A function that opens the ebird.org page for the bird species given in the argument.}
\usage{
bird_page(bird)
}
\arguments{
\item{bird}{a character string of a bird species according to ebird's SPECIES_CODE.}
}
\value{
The ebird.org page for the species provided as argument. e.g. https://ebird.org/species/norcar
}
\examples{
bird_page("norcar")
# Will open the ebird.org page corresponding to the Northern Cardinal.

bird_page("xxxxxx")
# Will return a warning message since xxxxxx is not a valid bird species.
}