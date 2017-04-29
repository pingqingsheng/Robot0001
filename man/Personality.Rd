\name{Personality}
\alias{Personality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Personality
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Personality()
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
    cat("\n")
    cat("Do you want a sketch of the candidate Master?", "\n")
    response <- readline(prompt = "Yes/No:")
    if (response == "Yes") {
        centerText(paste("Personality descripting....."))
        cat("\n")
        filename <- list.files(patter = "(Trump_[0-9])+|(Clinton_[0-9])+")
        temp <- read.csv(filename[1], header = TRUE, nrows = 1)
        for (name in filename) {
            temp <- rbind(temp, read.csv(name, header = TRUE))
        }
        temp <- temp[-1, ]
        temp$Speaker <- as.character(temp$Speaker)
        temp$Speaker[grep("Clinton+", temp$Speaker)] <- "Clinton"
        temp$Speaker[grep("Trump+", temp$Speaker)] <- "Trump"
        temp <- temp[temp$Speaker \%in\% c("Clinton", "Trump"), 
            ]
        temp$Text <- as.character(temp$Text)
        temp$Text <- iconv(temp$Text, to = "utf8")
        traincorpus <- Corpus(VectorSource(temp$Text))
        traincorpus <- tm_map(traincorpus, stripWhitespace)
        traincorpus <- tm_map(traincorpus, tolower)
        traincorpus <- tm_map(traincorpus, removeNumbers)
        trainmatrix <- t(TermDocumentMatrix(traincorpus))
        trainmatrix <- removeSparseTerms(trainmatrix, 0.99)
        M_bayes <- naiveBayes(as.matrix(trainmatrix), as.factor(temp$Speaker), 
            laplace = 1)
        fit <- predict(M_bayes, as.matrix(trainmatrix))
        table(fit, temp$Speaker)
        cat("Model Accuracy", "\n")
        (Tab_ac <- table(fit, temp$Speaker))
        (accuracy <- sum(diag(table(fit, temp$Speaker)))/sum(table(fit, 
            temp$Speaker)))
        cat(accuracy, "\n")
        return(list(Tab = Tab_ac, Accuracy = accuracy))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
