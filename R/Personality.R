Personality <-
function(){
  cat("\n")
  cat("Do you want a sketch of the candidate Master?", "\n")
  response <- readline(prompt="Yes/No:")
  if(response == "Yes"){
    
    centerText(paste("Personality descripting....."))
    cat("\n")
    
    filename <- list.files(patter="(Trump_[0-9])+|(Clinton_[0-9])+")
    temp     <- read.csv(filename[1], header=TRUE, nrows = 1)
    
    for(name in filename){
      temp <- rbind(temp, read.csv(name, header=TRUE))
    }
    
    temp <- temp[-1,]
    temp$Speaker <- as.character(temp$Speaker)
    temp$Speaker[grep("Clinton+", temp$Speaker)] <- "Clinton"
    temp$Speaker[grep("Trump+", temp$Speaker)]   <- "Trump"
    temp <- temp[temp$Speaker %in% c("Clinton","Trump"),]
    temp$Text <- as.character(temp$Text)
    temp$Text <- iconv(temp$Text, to="utf8")
    
    traincorpus <- Corpus(VectorSource(temp$Text))
    
    traincorpus <- tm_map(traincorpus, stripWhitespace)
    traincorpus <- tm_map(traincorpus, tolower)
    # traincorpus <- tm_map(traincorpus, removeWords,stopwords("english"))
    # traincorpus <- tm_map(traincorpus, removePunctuation)
    traincorpus <- tm_map(traincorpus, removeNumbers)
    # traincorpus <- tm_map(traincorpus, PlainTextDocument)
    
    trainmatrix <- t(TermDocumentMatrix(traincorpus))
    trainmatrix <- removeSparseTerms(trainmatrix, 0.99)
    
    M_bayes <- naiveBayes(as.matrix(trainmatrix), as.factor(temp$Speaker) , laplace = 1)
    fit     <- predict(M_bayes, as.matrix(trainmatrix))
    table(fit, temp$Speaker)
    
    cat("Model Accuracy", "\n")
    (Tab_ac   <- table(fit, temp$Speaker))
    (accuracy <- sum(diag(table(fit, temp$Speaker)))/sum(table(fit, temp$Speaker)))
    cat(accuracy, "\n")
    
    return(list(Tab=Tab_ac, Accuracy = accuracy))
  }
}
