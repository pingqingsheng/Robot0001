reaction <-
function(){
  sketch <- readJPEG("images.jpg")
  dev.new()
  par(mar = rep(0, 4))
  # plot.window(c(0,1),c(0,1), xaxs = "i", yaxs = "i")
  plot(0:1, 0:1, type="n", ann=FALSE, axes=FALSE)
  rasterImage(sketch, 0, 0, 1, 1)
  
  cond <- unlist(locator(n=1))
  if((cond[1] > 0.4851762 & cond[1] < 0.6851762) &
     cond[2] > (0.5157120-0.1) & cond[2] < (0.5157120 +0.1)){
    cat("\n","Stay Away from me","\n")
  }
}
