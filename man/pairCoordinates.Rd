\name{pairCoordinates}
\alias{pairCoordinates}
\title{Function \code{pairCoordinates}}
\usage{
pairCoordinates(locations, pairIndices)
}
\arguments{
  \item{locations}{A \eqn{d} x 2 matrix containing the
  Cartesian coordinates of \eqn{d} points in the plane.}

  \item{pairIndices}{A \eqn{q} x 2 matrix containing the
  indices of \eqn{q} pairs of points.}
}
\value{
A \eqn{q} x 4 matrix, where each row gives the Cartesian
coordinates of the two locations in the corresponding pair.
}
\description{
Given a matrix of coordinates of locations and a matrix of
indices of pairs of locations, returns a matrix with the
coordinates of the pairs of locations.
}
\examples{
(locations<-cbind(rep(1:2,3),rep(1:3,each=2)))
(pairs <- selectPairIndices(locations, maxDistance = 1.5))
pairCoordinates(locations, pairs)
}
\seealso{
\code{\link{selectPairIndices}}
}

