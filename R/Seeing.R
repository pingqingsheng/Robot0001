Seeing <-
function(){
  
  choice <- Eye()
  
  while(!(choice==5)){
    if (choice == 1){ Face <-FacialExpression(); choice <- Eye()}
    if (choice == 2){ (Classifier <- VClassifier(Face)); choice <- Eye()}
  }
}
