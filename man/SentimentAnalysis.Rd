\name{SentimentAnalysis}
\alias{SentimentAnalysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
SentimentAnalysis
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
SentimentAnalysis(Dat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Dat}{
%%     ~~Describe \code{Dat} here~~
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
function (Dat) 
{
    cat("\n")
    profile_emot <- matrix(rep(0, length(Dat$filename) * 10), 
        ncol = 10)
    for (i in 1:length(Dat$filename)) {
        profile_emot[i, ] <- get_nrc_values(get_tokens(Dat$text[i]))/length(get_tokens(Dat$text[i]))
        centex <- centerText_2(paste(Dat$profname, " Sentiment Analysis >>>>>>>>>>  ", 
            round(i/length(Dat$filename) * 100, 2), "\%", "  >>>>>>>>>>>>>>>>>"))
        cat("\r", centex$mid)
        Sys.sleep(0.2)
    }
    cat("\n")
    cat(" Writing Output ", "\n")
    Emot_Mat <- cbind(filename = Dat$filename, profile_emot)
    colnames(Emot_Mat) <- c("filename", names(get_nrc_values("joy")))
    write.csv(Emot_Mat, paste0(Dat$profname, "_emot.csv"))
    invisible(return(Emot_Mat))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
