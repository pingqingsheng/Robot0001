\name{VClassifier}
\alias{VClassifier}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
VClassifier
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
VClassifier(Face)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Face}{
%%     ~~Describe \code{Face} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (Face) 
{
    Dat <- data.matrix(Face)
    cat("Major Feature Description", "\n")
    cat(">>>>>>>>>>>>>>>> 20\% finished >>>>>>>>>>>>>>>>>>", "\n")
    M_0 <- prcomp(Dat[, -1])
    Score_1 <- M_0$x[, 1]
    Score_2 <- M_0$x[, 2]
    dev.new()
    plot(Score_1 ~ Score_2, pch = 19, col = as.numeric(Dat[, 
        1] + 1))
    cat("Implement LDA and QDA", "\n")
    cat(">>>>>>>>>>>>>>>> 40\% finished >>>>>>>>>>>>>>>>>>", "\n")
    M_1 <- lda(Target ~ ., data = as.data.frame(Dat), CV = TRUE)
    (table(M_1$class, Dat[, 1]))
    (sum(diag(table(M_1$class, Dat[, 1])))/sum(table(M_1$class, 
        Dat[, 1])))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
