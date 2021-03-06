% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DateManipulation.R
\name{NumR2DateR}
\alias{NumR2DateR}
\title{NumR2DateR}
\usage{
NumR2DateR(date)
}
\arguments{
\item{date}{numeric vector.}
}
\value{
date in R.
}
\description{
Takes a date represented by a number in R format (origin="1970-01-01") and returns a date.
}
\examples{
NumR2DateR(as.numeric(Sys.Date()))

}
\seealso{
For dates with Excel origin.

Other Number to Date: 
\code{\link{NumExcel2DateR}()}
}
\author{
Diego Jara
}
\concept{Number to Date}
