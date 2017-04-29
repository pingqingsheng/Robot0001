Awareness <-
function(choice){
  if(!(getwd() == "C:/Users/zsz/Desktop/STAT-545 GLM/Final Project/")){
    cat("Choose Your Default Dir:", "\n")
    dir  <- choose.dir()
    setwd(dir)
  }
  if (choice==99) {
      Sys.sleep(2)
      centerText(paste0("Robot 00001 lauched", " Start Learning..."))
      cat("\n")
      Sys.sleep(2)
      cat("Initialization","\n")
      Sys.sleep(2)
      cat("Security System Activated", "\n")
      library(getPass)
      Sys.sleep(2)
      cat("Information System Attached", "\n")
      library(mailR)
      Sys.sleep(2)
      cat("Sentiment Recognition Component Checking", "\n")
      library(syuzhet)
      cat("Naive Bayes Classification Machine Loading ...", "\n")
      library(tm)
      library(e1071)
      cat("Generalized Linear Regression Classifier Loading ...", "\n")
      library(glmnet)
      cat("Neural Net Work Self Checking ...", "\n")
      Sys.sleep(2)
      cat("Warning! Neural Net Work is not activated", "\n")
      Sys.sleep(2)
      cat("\n")
  }
    centerText(paste0("What do you want to do Master?"))
    cat("\n")
    choice <- readline(prompt=paste0("1. Create Profile", "\n",
                                    "2. Sentiment Analysis", "\n",
                                    "3. Classifier", "\n",
                                    "4. Send Email", "\n",
                                    "5. Lauch Crawler", "\n",
                                    "100. Do something else", "\n"))
    
    return(as.numeric(choice))
    
  if (choice == 0) {
    centerText("What do you want to do Master?", "\n")
    choice  <- readline(prompt=paste("1. Create Profile", "\n",
                                     "2. Sentiment Analysis", "\n",
                                     "3. Classifier", "\n",
                                     "4. Send Email", "\n",
                                     "5. Lauch Crawler", "\n",
                                     "100. Do something else", "\n"))
    choice  <- as.numeric(choice)
  }
}
