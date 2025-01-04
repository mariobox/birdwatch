\name{validate_state}
\alias{validate_state}
\title{Validate State}
\description{A helper function to determine if the value of a state state entered by the user corresponds to a valid state in the continental US.}
\usage{
validate_state(state)
}
\arguments{
\item{state}{a character string of length 2, e.g. "FL" for Florida}
}
\value{
If input is an invalid string: a warning message stopping the program. 
If input is a valid string: returns to the function that called it without returning a value, as through a pass.
}
\examples{
validate_state("FL")
# Will return to the function that called it without a warning message, since "FL" is a valid state.

validate_state("XX")
# Will return a warning message and stop the program, since the state "XX" is invalid.

validate_state("")
# Will return to the function that called it without a warning message, and the function that called it will consider data for all states, without filtering for any state in particular, since none was provided.
}