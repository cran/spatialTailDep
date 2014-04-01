\name{tailInt}
\alias{tailInt}
\title{Function \code{tailInt}}
\usage{
tailInt(loc, model, theta)
}
\arguments{
  \item{loc}{A 2 x 2 matrix, where a row represents a
  location.}

  \item{model}{Choose between "smith" and "BR".}

  \item{theta}{Parameter vector. For the Smith model,
  \code{theta} must be equal to the 2 x 2 covariance
  matrix. For the Brown-Resnick pocess, \code{theta} \eqn{
  = (\alpha, \rho, \beta, c)}.}
}
\value{
A scalar.
}
\description{
Integral of the bivariate parametric stable tail dependence
function over the unit square, for the Smith model or the
Brown-Resnick process.
}
\details{
This is an analytic implementation of the integral of the
stable tail dependence function, which is much faster than
numerical integration. For the definitions of the
parametric stable tail dependence functions, see Einmahl et
al. (2014).

The parameter vector \code{theta} must be a positive
semi-definite matrix if \code{model = "smith"} and a vector
of length four if \code{model = "BR"}, where \eqn{0 <
\alpha < 1}, \eqn{\rho > 0}, \eqn{0 < \beta \le \pi/2} and
\eqn{c > 0}.
}
\examples{
tailInt(loc = cbind(c(1,1),c(2,3)), model = "smith", theta = rbind(c(3,1),c(1,2)))
tailInt(loc = cbind(c(1,2),c(3,4)), model = "BR", theta = c(1.5,1,0.5,0.75))
}
\references{
Einmahl, J.H.J., Kiriliouk, A., Krajina, A. and Segers, J.
(2014), "An M-estimator of spatial tail dependence". See
\url{http://arxiv.org/abs/1403.1975}.
}
\seealso{
\code{\link{Mestimator}}, \code{\link{tailIntEmp}}
}

