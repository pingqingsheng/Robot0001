\name{FacialExpression}
\alias{FacialExpression}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
FacialExpression
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
FacialExpression()
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
    Dat <- read.table("a_affirmative_datapoints.txt", header = FALSE, 
        nrows = 1, stringsAsFactors = FALSE)
    file_a <- list.files(pattern = "a_[a-zA-Z|_]*_datapoints+")
    for (i in 1:length(file_a)) {
        temp <- as.data.frame(fread(file_a[i], header = FALSE, 
            sep = " "))
        Dat <- rbind(Dat, temp[-1, ])
        cat("\r", "I'm reading the facial expressions >>>>>>>>>>>>>", 
            paste(round(i/length(file_a) * 100, digits = 2), 
                "\%"), ">>>>>>>>>>>>>>>>>>")
    }
    cat("\n")
    Dat_name <- as.character(Dat[1, -1])
    Dat_a <- Dat[-1, -1]
    names(Dat_a) <- Dat_name
    file_a_target <- list.files(pattern = "a_[a-zA-Z|_]*_target+")
    Target <- c(10)
    for (i in 1:length(file_a_target)) {
        Target <- rbind(Target, as.vector(read.table(file_a_target[i], 
            header = FALSE)))
        cat("\r", "I'm reading the targeting vector >>>>>>>>>>>>>", 
            paste(round(i/length(file_a_target) * 100, digits = 2), 
                "\%"), ">>>>>>>>>>>>>>>>>>")
    }
    cat("\n")
    Target <- as.vector(Target[-1, 1])
    names(Target) <- "Target"
    return(cbind(Target, Dat_a))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
