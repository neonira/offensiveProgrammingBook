\name{generateWarning.AdditionTCPartial}
\alias{generateWarning.AdditionTCPartial}
\title{generate warning}
\description{
Use method \code{generateWarning} to generate warning.
}
\usage{
\method{generateWarning}{AdditionTCPartial}(x_)
}
\arguments{
\item{x_}{An unconstrained vector of variable type objects.}
}
\details{
Offensive programming instrumentation provides a single test for this function. It has identification number 22. See examples below for immediate reuse.
}
\value{
No function return type instrumentation.
}
\references{
See \code{wyz.code.offensiveProgramming} package documentation.

You may read \href{https://neonira.github.io/offensiveProgrammingBook/}{Offensive Programming Book} to get introduction and expert advices on offensive programming.

Refer to \href{https://cran.r-project.org/doc/manuals/R-exts.html}{Writing R extensions} to know more about R documentation requirements.
}
\author{
\packageAuthor{zorg}

Maintainer: \packageMaintainer{zorg}
}
\seealso{
See \code{\link[wyz.code.offensiveProgramming:runTransientFunction]{wyz.code.offensiveProgramming:runTransientFunction}} to call interactively an offensive programming function, whether instrumented or not.

See \code{\link[wyz.code.offensiveProgramming:runTestCase]{wyz.code.offensiveProgramming:runTestCase}} to reuse on-demand instrumented offensive programming function tests.
}
\examples{
\dontrun{
library("wyz.code.offensiveProgramming")
ob <- AdditionTCPartial()

# standard_R_evaluation mode, here based on sampled test case number 14
se <- EvaluationMode(defineEvaluationMode()[1])
ser <- runTestCase(ob, 14, se)

# type_checking_enforcement mode, here based on sampled test case number 14
tc <- EvaluationMode(defineEvaluationMode()[3])
tcr <- runTestCase(ob, 14, tc)
}
}
\keyword{classes}
\keyword{environment}
\keyword{utilities}
\keyword{misc}
\concept{evaluation mode}
\concept{standard evaluation}
\concept{function return type evaluation}
\concept{parameter check evaluation}
