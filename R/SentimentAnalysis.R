SentimentAnalysis <-
function(Dat){
  cat("\n")
  profile_emot <- matrix(rep(0, length(Dat$filename)*10), ncol=10)
  for (i in 1:length(Dat$filename)){
    profile_emot[i,] <- get_nrc_values(get_tokens(Dat$text[i]))/length(get_tokens(Dat$text[i]))
    centex <- centerText_2(paste(Dat$profname," Sentiment Analysis >>>>>>>>>>  ", 
                                 round(i/length(Dat$filename)*100,2), "%",
                                 "  >>>>>>>>>>>>>>>>>"))
    cat("\r", centex$mid)
    Sys.sleep(0.2)
  }
  cat("\n")
  
  cat(" Writing Output ", "\n")
  Emot_Mat   <- cbind(filename=Dat$filename, profile_emot)
  colnames(Emot_Mat)   <- c("filename",names(get_nrc_values("joy")))
  write.csv(Emot_Mat, paste0(Dat$profname,"_emot.csv"))
  invisible(return(Emot_Mat))
}
