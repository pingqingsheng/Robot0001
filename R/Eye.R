Eye <-
function(){
  if (!(getwd() == "C:/Users/zsz/Desktop/STAT-541 Multi Var/Midterm Project/grammatical_facial_expression/grammatical_facial_expression")){
    cat("Please give me the directory", "\n")
    dir <- choose.dir()
    setwd(dir)
  }
  
  cat("Preparing visual cortex ...", "\n")
  library(data.table)
  library(bit64)
  Sys.sleep(2)
  cat("Initialize visual classifier", "\n")
  library(caret)
  library(MASS)
  Sys.sleep(1)
  
  cat("What do you hope me to see:", "\n")
  choice <- readline(prompt = paste("1. Read Facial Expression", "\n",
                                    "2. Recognize GFE", "\n",
                                    "3. Discriminate the expression", "\n",
                                    "4. Recognize Different People", "\n",
                                    "5. Do something else"))
  return(as.numeric(choice))
}
