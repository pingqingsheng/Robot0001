\name{Eye}
\alias{Eye}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Eye
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Eye()
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
    if (!(getwd() == "C:/Users/zsz/Desktop/STAT-541 Multi Var/Midterm Project/grammatical_facial_expression/grammatical_facial_expression")) {
        cat("Please give me the directory", "\n")
        dir <- choose.dir()
        setwd(dir)
    }
    cat("Preparing visual cortex ...", "\n")
    library(data.table)
    library(bit64)
    Sys.sleep(2)
    cat("Initialize visual classifier", "\n")
    library(caret)
    library(MASS)
    Sys.sleep(1)
    cat("What do you hope me to see:", "\n")
    choice <- readline(prompt = paste("1. Read Facial Expression", 
        "\n", "2. Recognize GFE", "\n", "3. Discriminate the expression", 
        "\n", "4. Recognize Different People", "\n", "5. Do something else"))
    return(as.numeric(choice))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
