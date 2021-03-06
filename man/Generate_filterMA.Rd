% Generated by roxygen2 (4.1.1.9000): do not edit by hand
% Please edit documentation in R/functional-spectral-density.R
\name{Generate_filterMA}
\alias{Generate_filterMA}
\title{Generate the Filter of a multivariate MA process}
\usage{
Generate_filterMA(d.ts, d.n, MA.len = 3, ma.scale = rep(1, MA.len),
  a.smooth.coef = 0, seed = 1)
}
\arguments{
\item{d.ts}{dimension of the (output) time series}

\item{d.n}{dimension of the noise that is filtered}

\item{MA.len}{Length of the filter. Set to 3 by default.}

\item{ma.scale}{scaling factor of each lag matrix. See details.}

\item{a.smooth.coef}{A coefficient to shrink coefficients of filter. Set to 0 by default.}

\item{seed}{The random seed used to generate the filter. Set to 1 by default.}
}
\value{
A \code{d.ts x d.n x MA.len} array
}
\description{
Generate the Filter of a multivariate MA process
}
\section{Details}{


Generates a filter (i.e. a \code{d.ts x d.n x MA.len} array) for a moving
average process. The entries of the filter are generate randomly, but can be
reproduced by specifying the random seed \code{seed}.

The \code{ma.scale} parameter should be a vector of length \code{MA.len},
and corresponds to a scaling factor applied to each lag of the filter of the
MA process that is generated.
}
\examples{
ma.scale1=c(-1.4,2.3,-2)
a1=Generate_filterMA(10, 10, MA.len=3, ma.scale=ma.scale1, seed=10)
str(a1)
rm(a1)
}

