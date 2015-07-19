\name{F2norm}
\alias{F2norm}
%\alias{F2norm.gpu}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Frobenius norm of a matrix
}
\description{
Frobenius norm of a matrix.
}
\usage{
F2norm(M)
%F2norm.gpu(M)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M}{ A matrix. }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
Frobenius norm of M.
}
%\references{
%% ~put references to the literature/web site here ~
%}
%\note{
%%  ~~further notes~~
%}
%% ~Make other sections like Warning with \section{Warning }{....} ~
%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
## The function is currently defined as
function (M) 
sqrt(sum(M^2))

F2norm(matrix(runif(100),nrow=5))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Frobenius norm }
