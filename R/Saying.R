Saying <-
function(){
  # He can't say at present, because I don't have such skill, 
  # Saying should be a equivalent component to feeling and seeing and awake
  
  centerText <<- function(output) {
    width <- getOption("width")
    mid <- output
    out <- paste0(rep("=", nchar(mid)),collapse="")
    ws <- rep(" ", floor((width - nchar(out))/2))
    cat(ws, out,"\n", ws, mid, "\n", ws, out, sep = "")
  }
  
  centerText_2 <<- function(output) {
    width <- getOption("width")
    mid <- output
    out <- paste0(rep("=", nchar(mid)),collapse="")
    ws <- rep(" ", floor((width - nchar(out))/2))
    return(list(ws=ws, out=out, mid=mid))
  }
}
