\name{addMultiDouble.AdditionTCFIG1}
\alias{addMultiDouble.AdditionTCFIG1}
\title{add multi double}
\description{
Use method \code{addMultiDouble} to add multi double.
}
\usage{
\method{addMultiDouble}{AdditionTCFIG1}(...)
}
\arguments{
\item{...}{additional arguments.}
}
\details{
Offensive programming instrumentation provides 3 tests for this function. Their identification number ranges from 24 to 26. See examples below for immediate reuse.
}
\value{
An unconstrained vector of double values.
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
ob <- AdditionTCFIG1()

# standard_R_evaluation mode, here based on sampled test case number 25
se <- EvaluationMode(defineEvaluationMode()[1])
ser <- runTestCase(ob, 25, se)

# type_checking_enforcement mode, here based on sampled test case number 25
tc <- EvaluationMode(defineEvaluationMode()[3])
tcr <- runTestCase(ob, 25, tc)
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
