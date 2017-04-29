createProfile <-
function(response){
  cat("Which candidate's data do you want to load:", "\n")
  response <- readline(prompt="Candidates Name:")
  profile  <- list(profname=response, filename=NULL, text=NULL, emot=NULL)
    for (name in response)
    {
      pattern <- as.character(name)
      profile$filename <- list.files(pattern=pattern)
      for(i in 1:length(profile$filename))
      {
        temp <- read.csv(profile$filename[i], header=TRUE)
        profile$text[i] <- paste0(temp$Text, collapse = ".")
        centex <- centerText_2(paste0("I'm reading ", profile$profname,
                                      "'s speech >>>>>>>>>>>>  ",
                                      round(i/length(profile$filename)*100,2), "%",
                                      "  >>>>>>>>>>>>>>>>>"))

        cat("\r",centex$ws, centex$mid, sep = "")
        Sys.sleep(0.2)
      }
    }
  cat("\n")
  invisible(return(profile))
}
