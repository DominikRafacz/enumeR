% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_enum.R
\name{sample_enum}
\alias{sample_enum}
\title{Sample n values from an enum type}
\usage{
sample_enum(enum_type, size, replace = FALSE, weight = NULL)
}
\arguments{
\item{enum_type}{Object that passes [is.enum_type()] check.}

\item{size}{A non-negative integer giving number of items to choose.}

\item{replace}{Should sampling be with replacement?}

\item{weight}{Sampling weights. This must evaluate to a vector of non-negative numbers the same
length as the input. Weights are automatically standardised to sum to 1.}
}
\value{
A list of enum values of length \code{size} drawn from \code{enum_type}'s values.
}
\description{
This is a wrapper around [sample()] to make selecting random enum values easier.
}
