\name{Email}
\alias{Email}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Email
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Email()
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
    cat("Do you want to send this to your parterner, Master?", 
        "\n")
    response <- readline(prompt = "Yes/No:")
    if (response == "Yes") {
        cat("Which e-mail do you want to use Master:", "\n")
        sender <- readline(prompt = "Sender:")
        cat("To which partner:", "\n")
        recipient <- readline(prompt = "Recipient:")
        cat("Please Write Your Subject:", "\n")
        subject <- readline(prompt = "Subject:")
        cat("Please Input Your Body:", "\n")
        body <- readline(prompt = "Body:")
        cat("I need your password Master", "\n")
        passwd <- getPass()
        cat("Are your sure you want to send this e-mail:", "\n")
        response <- readline(prompt = "Yes/NO:")
        cat("Attached Files Name:", "\n")
        key <- readline(prompt = "File Name:")
        filename <- list.files(pattern = key)
        if (response == "Yes") {
            email <- send.mail(from = sender, to = recipient, 
                subject = subject, body = body, smtp = list(user.name = sender, 
                  passwd = passwd, host.name = "smtp.ruf.rice.edu", 
                  ssl = TRUE), authenticate = TRUE, send = TRUE, 
                attach.files = filename)
            cat("Task Finished. I think this is a stupid idea Master!", 
                "\n", "Maybe you should finish your paper first", 
                "\n", "I remember you still have homework to do", 
                "\n")
        }
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
