\name{bd_top25_file}
\alias{bd_top25_file}
\title{Top 25 Species - File}
\description{A function to create a data frame of the top 25 bird species observed in the continental US or a selected state.}
\usage{
bd_top25_file(state, month)
}
\arguments{
\item{state}{a character string of the selected state e.g. "FL". If no state is provided the default will show top 25 species for the total continental US.}
\item{month}{a character vector of the month for which the user wants to create the top 25 file. If no month is provided, it will show observations for all months in the master file: 11, 12, 1, 2, 3, and 4}
}
\value{
A tibble consisting of 25 observations (one per each top 25 species) and three different columns: SPECIES_CODE, american_english_name, and number of observations of four variables: `factor_month`, `SPECIES_CODE`, `english_name` and `perc_obs`. The `perc_obs` column shows the percentage of the total locations where a particular species of bird was observed.
}
\examples{
bd_top_file("FL", 4)
# Will return a tibble with the top 25 birds in FL ordered by percentage locations observed in descending order, for the month of April.

bd_top25_file()
# Will return a tibble with the top 25 birds in the continental US, in descending order of percentage locations observed, for all months in the study.

bd_top25_file("XX")
# Will return a warning message asking the user to input a valid state code.

bd_line_file("FL", 7)
# Will return a warning message asking the user to input a valid month
}