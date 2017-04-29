\name{Saying}
\alias{Saying}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Saying
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Saying()
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
    centerText <<- function(output) {
        width <- getOption("width")
        mid <- output
        out <- paste0(rep("=", nchar(mid)), collapse = "")
        ws <- rep(" ", floor((width - nchar(out))/2))
        cat(ws, out, "\n", ws, mid, "\n", ws, out, sep = "")
    }
    centerText_2 <<- function(output) {
        width <- getOption("width")
        mid <- output
        out <- paste0(rep("=", nchar(mid)), collapse = "")
        ws <- rep(" ", floor((width - nchar(out))/2))
        return(list(ws = ws, out = out, mid = mid))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
