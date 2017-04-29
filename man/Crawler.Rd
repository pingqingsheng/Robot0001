\name{Crawler}
\alias{Crawler}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Crawler
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Crawler()
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
    cat("Web Crawler Loading", "\n")
    library(dplyr)
    library(rvest)
    cat("What information do you want to collect?", "\n")
    key <- readline(prompt = "Input Key Words:")
    href <- paste0("https://www.google.com/search?hl=en&gl=us&tbm=nws&authuser=0&q=", 
        key)
    url <- read_html(href)
    selector_name <- ".r"
    selector_del <- ".slp"
    fheader <- html_nodes(x = url, css = selector_name) \%>\% html_text()
    fdeliver <- html_nodes(x = url, css = selector_del) \%>\% html_text()
    i <- 0
    while (i < 500) {
        selector_name <- ".r"
        fheader <- rbind(fheader, html_text(html_nodes(x = url, 
            css = selector_name)))
        fdeliver <- rbind(fdeliver, html_text(html_nodes(x = url, 
            css = selector_del)))
        if (i == 0) {
            cat("\r", centerText(paste("Crawler Lauched, Information Collecting, target:", 
                key)))
            url <- html_session(href) \%>\% follow_link("Next")
        }
        else {
            test <- tryCatch(follow_link(html_session(url$url), 
                "Next"), error = function(e) e)
            if (inherits(test, "error")) {
                break
            }
            else {
                url <- html_session(url$url) \%>\% follow_link("Next")
            }
        }
        i <- i + 1
        Sys.sleep(1)
    }
    deliver <- as.data.frame(matrix(unlist(strsplit(fdeliver, 
        " - ")), ncol = 2, byrow = TRUE))
    text <- cbind(as.character(fheader), deliver)
    names(text) <- c("Text", "Deliver", "Time")
    cat("Writing Output .......", "\n")
    write.csv(text, paste0(key, ".csv"))
    return(text)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
