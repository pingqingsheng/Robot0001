Awake <-
function(){
  Saying()
  library(tuneR)
  library(audio)
  library(jpeg)
  i <- 0
  while(i < 6){
    cat('\n')
    cat("Please insert your password:", "\n")
    code <- readline(prompt="Password:")
    if(code == "123"){
      
      # sketch <- readJPEG("images.jpg")
      # dev.new()
      # par(mar = rep(0, 4))
      # # plot.window(c(0,1),c(0,1), xaxs = "i", yaxs = "i")
      # plot(0:1, 0:1, type="n", ann=FALSE, axes=FALSE)
      # rasterImage(sketch, 0, 0, 1, 1)
      # 
      # audi <- readWave("Voice 009.wav")
      # x    <- audioSample(audi@left, rate=audi@samp.rate, bit=audi@bit)
      # audio::play(x)
      # cond <- format(Sys.time(),"%H")
      # if (as.numeric(cond) %in% c(5:9)) {cond <- "Good Morning, Master"}
      # if (as.numeric(cond) %in% c(9:17)) {cond <- "Good Afternood, Master"}
      # if (as.numeric(cond) %in% c(17:21)) {cond <- "Good Evening, Master"}else  
      #   {cond <- "Nice to see you, Master"}
      # 
      # ws    <- paste0(rep(" ", (getOption("width")-nchar(cond))/2))
      # del   <- paste0(rep("=", nchar(cond)*2), collapse = "")
      # cat(ws, del, "\n", ws, "  ",cond, "\n", ws, del, sep = "")
      # 
      # reaction()
      
      cat("\n", "Nice to meet you master, what do you want to do ?")
      response <- readline(prompt=paste0("1. Feeling","\n",
                                       "2. Eye", "\n",
                                       "3. Computation", "\n"))
      return(response)
    }
    else{
      i <- i+1
      cat("Password Incorrect !", "\n")
    }
  }
  cat("Unauthenticated user, eliminate!!!","\n")
  cat("Warning ! Unauthenticated user, eliminate !!!")
  .rs.restartR()
}
