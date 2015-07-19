\encoding{UTF-8}
\name{thresh.nuclear}
\alias{thresh.nuclear}
%\alias{thresh.nuclear.gpu}
\title{
Thresholding operator
}
\description{
Thresholding operator, an application of the shrinkage operator on a singular value decomposition: D[X] = U S[Sigma] V .
For description see section 5 of Candès, E. J., Li, X., Ma, Y., & Wright, J. (2011). Robust principal component analysis?.
}
\usage{
thresh.nuclear(M, thr)
%thresh.nuclear.gpu(M, thr)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M}{ a rectangular matrix.
}
  \item{thr}{
  threshold >= 0 to shrink singular values with.
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
Returned is a thresholded Singular Value Decomposition with \code{thr} subtracted from singular values, 
and values smaller than 0 dropped together with their singular vectors. 
\item{u, d, vt}{as in return value of \code{La.svd}}
\item{L}{the resulting low-rank matrix: \eqn{L = U D V^t} }
}
\references{
Candès, E. J., Li, X., Ma, Y., & Wright, J. (2011). Robust principal component analysis?. Journal of the ACM (JACM), 58(3), 11

Yuan, X., & Yang, J. (2009). Sparse and low-rank matrix decomposition via alternating direction methods. preprint, 12.
}
%\author{
%\packageAuthor{rpca}
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{thresh.l1}}
}
\examples{
## The function is currently defined as
function (M, thr) {
    s <- La.svd.cmp(M)
    dd <- thresh.l1(s$d, thr)
    id <- which(dd != 0)
    s$d <- dd[id]
    s$u <- s$u[, id, drop = FALSE]
    s$vt <- s$vt[id, , drop = FALSE]
    s$L <- s$u \%*\% (s$d * s$vt)
    s
  }

l<-thresh.nuclear(matrix(runif(600),nrow=20),2)
l$d
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ thresholding operator }
