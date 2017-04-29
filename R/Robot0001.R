Robot0001 <-
function() {
  
  # First Awake
  awake   <- Awake()
  
  while(!(awake==0)){
    # I create a robot by first giving she feeling. So she could recognize sentiment and emotion
    if(awake=="1") { (Feeling <- Feeling()); awake <- Awake()}
    # Then maybe this robot should be able to see
    if(awake=="2") { (See <- Seeing()); awake <- Awake() }
  }
}
