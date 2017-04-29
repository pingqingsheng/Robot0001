FacialExpression <-
function() {
  Dat    <- read.table("a_affirmative_datapoints.txt", header=FALSE, 
                       nrows=1, stringsAsFactors = FALSE)
  file_a <- list.files(pattern = "a_[a-zA-Z|_]*_datapoints+")
  
  for (i in 1:length(file_a)){
    temp <- as.data.frame(fread(file_a[i], header=FALSE, sep=" "))
    Dat  <- rbind(Dat, temp[-1,])
    cat("\r", "I'm reading the facial expressions >>>>>>>>>>>>>",
             paste( round(i/length(file_a)*100,digits = 2),"%"),
              ">>>>>>>>>>>>>>>>>>")
  }
  cat("\n")
  Dat_name     <- as.character(Dat[1,-1])
  Dat_a        <- Dat[-1,-1]
  names(Dat_a) <- Dat_name
  
  file_a_target <- list.files(pattern = "a_[a-zA-Z|_]*_target+")
  Target    <- c(10)
  for (i in 1:length(file_a_target)){
    Target <- rbind( Target, as.vector(read.table(file_a_target[i], header=FALSE)))
    cat("\r", "I'm reading the targeting vector >>>>>>>>>>>>>",
        paste( round(i/length(file_a_target)*100,digits = 2),"%"),
        ">>>>>>>>>>>>>>>>>>")
  }
  cat("\n")
  Target  <- as.vector(Target[-1,1])
  names(Target) <- "Target"
  
  return(cbind(Target,Dat_a))
}
