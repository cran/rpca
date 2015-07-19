\encoding{UTF-8}
\name{thresh.l1}
\alias{thresh.l1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Shrinkage operator
}
\description{
 Shrinkage operator: S[x] = sgn(x) max(|x| - thr, 0). For description see section 5 of Candès, E. J., Li, X., Ma, Y., & Wright, J. (2011). Robust principal component analysis?.
}
\usage{
thresh.l1(x, thr)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ a vector or a matrix.
}
  \item{thr}{
    threshold >= 0 to shrink with.
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
S[x] = sgn(x) max(|x| - thr, 0)
}
\references{
Candès, E. J., Li, X., Ma, Y., & Wright, J. (2011). Robust principal component analysis?. Journal of the ACM (JACM), 58(3), 11

Yuan, X., & Yang, J. (2009). Sparse and low-rank matrix decomposition via alternating direction methods. preprint, 12.
}
%\note{
%%  ~~further notes~~
%}
%% ~Make other sections like Warning with \section{Warning }{....} ~
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{thresh.nuclear}}
}
\examples{
## The function is currently defined as
function(x,thr){sign(x)*pmax(abs(x)-thr,0)}

summary(thresh.l1(runif(100),0.3))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ shrinkage operator }
