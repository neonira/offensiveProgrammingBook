\name{divideByZero.AdditionTCPartial}
\alias{divideByZero.AdditionTCPartial}
\title{divide by zero}
\description{
Use method \code{divideByZero} to divide by zero.
}
\usage{
\method{divideByZero}{AdditionTCPartial}(x_n)
}
\arguments{
\item{x_n}{An unconstrained vector of numeric values.}
}
\details{
Offensive programming instrumentation provides 3 tests for this function. Their identification number ranges from 19 to 21. See examples below for immediate reuse.
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

# standard_R_evaluation mode, here based on sampled test case number 20
se <- EvaluationMode(defineEvaluationMode()[1])
ser <- runTestCase(ob, 20, se)

# type_checking_enforcement mode, here based on sampled test case number 20
tc <- EvaluationMode(defineEvaluationMode()[3])
tcr <- runTestCase(ob, 20, tc)
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
