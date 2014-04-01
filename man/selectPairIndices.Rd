\name{selectPairIndices}
\alias{selectPairIndices}
\title{Function \code{selectPairIndices}}
\usage{
selectPairIndices(locations, maxDistance = NULL, numberOfPairs = NULL)
}
\arguments{
  \item{locations}{A \eqn{d} x 2 matrix containing the
  Cartesian coordinates of \eqn{d} points in the plane.}

  \item{maxDistance}{Pairs of locations with distance not
  larger than \code{maxDistance} will be selected. If
  \code{NULL}, then the selection is made based on
  \code{numberOfPairs}.}

  \item{numberOfPairs}{The number of pairs that will be
  selected, taking distance as a criterion, with closer
  pairs being selected. It will return more pairs if there
  are several equidistant locations.}
}
\value{
A matrix with \code{q} rows and 2 columns, where \code{q}
denotes the number of pairs selected. Each row contains the
indices of the corresponding pair of selected locations in
the input argument \code{locations}.
}
\description{
Out of a list of locations given by their Cartesian
coordinates, selects pairs of locations with a distance as
a criterion.
}
\examples{
(locations<-cbind(rep(1:4,5),rep(1:5,each=4)))
selectPairIndices(locations, maxDistance = 1.5)
}
\seealso{
\code{\link{pairCoordinates}}
}

