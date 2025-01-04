\name{validate_month}
\alias{validate_month}
\title{Validate Month}
\description{A helper function to determine if the value of a month  entered by the user corresponds to a valid month.}
\usage{
validate_month(month)
}
\arguments{
\item{month}{a character string of length 1 or 2, e.g. "4" for April. Since the data set only covers 6 months: 11, 12, 1, 2, 3, and 4, any value other than those will be invalid. An empty string "" is also accepted, since it would imply that all 6 months must be considered by the calling function}
}
\value{
If input is an invalid string: a warning message stopping the program. 
If input is a valid string: returns to the function that called it without returning a value, as through a pass.
}
\examples{
validate_month(4)
# Will return to the function that called it without a warning message, since 4 or "4" is a valid month.

validate_month("XX")
# Will return a warning message and stop the program, since the month "XX" is invalid.

validate_month(10)
# Will return a warning message and stop the program, since the month 10 or "10" is invalid.

validate_month("")
# Will return to the function that called it without a warning message and the function that called it will consider data for all six valid months, without filtering for any month in particular, since none was given.
}