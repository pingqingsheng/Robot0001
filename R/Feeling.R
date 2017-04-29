Feeling <-
function(){
  
  # Initialization 
  
  choice <- 99
  choice <- Awareness(choice)
  
  # Profile
  while(!(choice==100)){
    
    if (choice == 1) { 
      Dat <- createProfile(response) 
      choice <- Awareness(choice=0)
    }
    
    # Sentiment/Emotional Analysis
    
    if (choice == 2) {
      (Emoji <- SentimentAnalysis(Dat))
      choice <- Awareness(choice=0)
      }
    
    # Speech Style Classifier
    
    if (choice == 3 ) {
      (pref <- Personality())
      choice <- Awareness(choice=0)}
    
    # Save / Email
    
    if (choice == 4) {
      Email()
      choice <- Awareness(choice=0)}
    
    # Lauch Crawler
    
    if (choice == 5) {
      Crawler()
      choice <- Awareness(choice=0)
    }
    
    if(choice == 100) {
      centerText("Good Bye! Master!")
    }
  }
}
