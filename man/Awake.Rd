\name{Awake}
\alias{Awake}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  Awake
	Awake
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Awake()
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
    Saying()
    library(tuneR)
    library(audio)
    library(jpeg)
    i <- 0
    while (i < 6) {
        cat("\n")
        cat("Please insert your password:", "\n")
        code <- readline(prompt = "Password:")
        if (code == "123") {
            cat("\n", "Nice to meet you master, what do you want to do ?")
            response <- readline(prompt = paste0("1. Feeling", 
                "\n", "2. Eye", "\n", "3. Computation", "\n"))
            return(response)
        }
        else {
            i <- i + 1
            cat("Password Incorrect !", "\n")
        }
    }
    cat("Unauthenticated user, eliminate!!!", "\n")
    cat("Warning ! Unauthenticated user, eliminate !!!")
    .rs.restartR()
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
