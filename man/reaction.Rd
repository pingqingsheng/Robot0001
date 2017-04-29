\name{reaction}
\alias{reaction}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
reaction
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
reaction()
}
%- maybe also 'usage' for other objects documented here.
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
function () 
{
    sketch <- readJPEG("images.jpg")
    dev.new()
    par(mar = rep(0, 4))
    plot(0:1, 0:1, type = "n", ann = FALSE, axes = FALSE)
    rasterImage(sketch, 0, 0, 1, 1)
    cond <- unlist(locator(n = 1))
    if ((cond[1] > 0.4851762 & cond[1] < 0.6851762) & cond[2] > 
        (0.515712 - 0.1) & cond[2] < (0.515712 + 0.1)) {
        cat("\n", "Stay Away from me", "\n")
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
