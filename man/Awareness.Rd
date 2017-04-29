\name{Awareness}
\alias{Awareness}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Awareness
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Awareness(choice)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{choice}{
%%     ~~Describe \code{choice} here~~
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
function (choice) 
{
    if (!(getwd() == "C:/Users/zsz/Desktop/STAT-545 GLM/Final Project/")) {
        cat("Choose Your Default Dir:", "\n")
        dir <- choose.dir()
        setwd(dir)
    }
    if (choice == 99) {
        Sys.sleep(2)
        centerText(paste0("Robot 00001 lauched", " Start Learning..."))
        cat("\n")
        Sys.sleep(2)
        cat("Initialization", "\n")
        Sys.sleep(2)
        cat("Security System Activated", "\n")
        library(getPass)
        Sys.sleep(2)
        cat("Information System Attached", "\n")
        library(mailR)
        Sys.sleep(2)
        cat("Sentiment Recognition Component Checking", "\n")
        library(syuzhet)
        cat("Naive Bayes Classification Machine Loading ...", 
            "\n")
        library(tm)
        library(e1071)
        cat("Generalized Linear Regression Classifier Loading ...", 
            "\n")
        library(glmnet)
        cat("Neural Net Work Self Checking ...", "\n")
        Sys.sleep(2)
        cat("Warning! Neural Net Work is not activated", "\n")
        Sys.sleep(2)
        cat("\n")
    }
    centerText(paste0("What do you want to do Master?"))
    cat("\n")
    choice <- readline(prompt = paste0("1. Create Profile", "\n", 
        "2. Sentiment Analysis", "\n", "3. Classifier", "\n", 
        "4. Send Email", "\n", "5. Lauch Crawler", "\n", "100. Do something else", 
        "\n"))
    return(as.numeric(choice))
    if (choice == 0) {
        centerText("What do you want to do Master?", "\n")
        choice <- readline(prompt = paste("1. Create Profile", 
            "\n", "2. Sentiment Analysis", "\n", "3. Classifier", 
            "\n", "4. Send Email", "\n", "5. Lauch Crawler", 
            "\n", "100. Do something else", "\n"))
        choice <- as.numeric(choice)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
