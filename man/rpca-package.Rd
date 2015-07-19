\encoding{UTF-8}
\name{rpca-package}
\alias{rpca-package}
\docType{package}
\title{
\packageTitle{rpca}
}
\description{
\packageDescription{rpca}
}
\details{

%The DESCRIPTION file:
%\packageDESCRIPTION{rpca}
\packageIndices{rpca}

%~~ An overview of how to use the package, including the most important ~~
%~~ functions ~~
This package contains \code{\link{rpca}} function,
%, as well as its GPU enabled version \code{\link{rpca.gpu}} (which makes an use of \code{gputools} package). These functions
which decomposes 
a rectangular matrix \var{M} into a low-rank component, and a sparse component, by solving a convex program called Principal Component Pursuit:
    \deqn{ \textrm{minimize}\quad   \|L\|_{*} + \lambda \|S\|_{1} }{%
            minimize   ||L||_{*} + lambda ||S||_{1} }                                                                    
    \deqn{ \textrm{subject to}\quad   L+S = M }{%
            subject to    L + S = M }
where \eqn{\|L\|_{*}}{||L||_{*}} is the nuclear norm of \var{L} (sum of singular values).
}
\author{
\packageAuthor{rpca}

Maintainer: \packageMaintainer{rpca}
}
\references{
Candès, E. J., Li, X., Ma, Y., & Wright, J. (2011). Robust principal component analysis?. Journal of the ACM (JACM), 58(3), 11.

Yuan, X., & Yang, J. (2009). Sparse and low-rank matrix decomposition via alternating direction methods. preprint, 12.
}
\note{
Use \code{citation("rpca")} to cite this \R package.
}
\keyword{ package }
\keyword{ rpca }
\keyword{ robust pca }
\concept{ robust pca }
\concept{ sparse and low-rank matrix decomposition }

\seealso{
\code{\link[rpca:rpca-package]{rpca}} 
}
