\name{bd_line_plot}
\alias{bd_line_plot}
\title{Bird Observations Per Month - Plot}
\description{A function to plot the observations per month of a group of bird species.}
\usage{
bd_line_plot(data, title)
}
\arguments{
\item{data}{a tibble showing the number of observations per month of a group of bird species. The tibble has four columns detailing the month, the birds' species code, the species english name, and the number of observations}
}
\item{title}{The title we want our plot to have. If no title is provided, the default "Observations per Month" will be used}
}
\value{
A `ggplot` showing a multi-line plot of the number of observations per month of a number of bird species.
}
\examples{
bd_line_plot(data, "Observations Per Month in Florida")
# Will return a multi-line plot of the number of observations per month of a number of bird species, and the title "Observations Per Month in Florida"

bd_line_plot("")
# Will result in a warning explaining that the argument needs to be a data frame.

bd_line_plot(c("norcar", "rebwoo"))
# Will result in a warning explaining that the argument needs to be a data frame.

bd_line_plot()
# Will result in a warning explaining that argument is missing with no default.
}