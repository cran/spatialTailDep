\name{tailIntEmp}
\alias{tailIntEmp}
\title{Function \code{tailIntEmp}}
\usage{
tailIntEmp(ranks, n = nrow(ranks), k)
}
\arguments{
  \item{ranks}{A \code{n} x 2 matrix, where each column is
  a permutation of the integers \code{1:n}, representing
  the ranks computed from a sample of size \code{n}.}

  \item{n}{The sample size. If not specified, it is
  computed as the number of rows of the matrix
  \code{ranks}.}

  \item{k}{The threshold parameter in the definition of the
  empirical stable tail dependence function. An integer
  between 1 and \code{n-1}.}
}
\value{
A scalar.
}
\description{
Integral of the bivariate empirical stable tail dependence
function over the unit square.
}
\details{
This is an analytic implementation of the integral of the
stable tail dependence function, which is much faster than
numerical integration. See Einmahl et al. (2014) for a
definition of the empirical stable tail dependence
function.
}
\examples{
n <- 20
(ranks <- cbind(sample(1:n), sample(1:n)))
tailIntEmp(ranks, k = 5)
}
\references{
Einmahl, J.H.J., Kiriliouk, A., Krajina, A. and Segers, J.
(2014), "An M-estimator of spatial tail dependence". See
\url{http://arxiv.org/abs/1403.1975}.
}
\seealso{
\code{\link{Mestimator}}, \code{\link{tailInt}}
}

