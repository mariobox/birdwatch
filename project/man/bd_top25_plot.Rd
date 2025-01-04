\name{bd_top25_plot}
\alias{bd_top25_plot}
\title{Top 25 Species - Plot}
\description{A function to generate a horizontal bar plot of the top 25 bird species in descending order of  percentage locations observed in a particular US state (or full US if no state parameter is given), and a particular month (or all the months in the study if no month parameter is given).}
\usage{
bd_top25_plot(data, title)
}
\arguments{
\item{data}{a tibble displaying top 25 bird species and percentage of locations where they were observed in a particular state or month (see bd_top25_file for more information).}
\item{title}{a character string with the title we want to give to our chart}
}
\value{
A `ggplot` horizontal bar chart showing a ranking of the top 25 species observed by percentage of total locations, in the state and month provided by the user in `bd_top25_file`.
}
\examples{
bd_top25_plot(data, "Top 25 Birds Observed in FL in February")
# Will return a horizontal line graph with the 25 most observed species according to the parameters provided by the user in `bd_dot_file`, and the title "Top 25 Birds Observed in FL in February".

bd_top25_plot("")
# Will result in a warning message explaining that the argument needs to be a data frame.

bd_top25_plot()
# Will result in a warning message explaining that no argument was provided and no default exist.

bd_top25_plot(data)
# Will return a horizontal line graph with the 25 most observed species according to the parameters provided by the user in `bd_dot_file`, and the default title of "Top 25".
}