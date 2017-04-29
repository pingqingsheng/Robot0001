\name{createProfile}
\alias{createProfile}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
createProfile
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
createProfile(response)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{response}{
%%     ~~Describe \code{response} here~~
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
function (response) 
{
    cat("Which candidate's data do you want to load:", "\n")
    response <- readline(prompt = "Candidates Name:")
    profile <- list(profname = response, filename = NULL, text = NULL, 
        emot = NULL)
    for (name in response) {
        pattern <- as.character(name)
        profile$filename <- list.files(pattern = pattern)
        for (i in 1:length(profile$filename)) {
            temp <- read.csv(profile$filename[i], header = TRUE)
            profile$text[i] <- paste0(temp$Text, collapse = ".")
            centex <- centerText_2(paste0("I'm reading ", profile$profname, 
                "'s speech >>>>>>>>>>>>  ", round(i/length(profile$filename) * 
                  100, 2), "\%", "  >>>>>>>>>>>>>>>>>"))
            cat("\r", centex$ws, centex$mid, sep = "")
            Sys.sleep(0.2)
        }
    }
    cat("\n")
    invisible(return(profile))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
