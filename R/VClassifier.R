VClassifier <-
function(Face) {

  Dat <- data.matrix(Face)
  
  cat("Major Feature Description", "\n")
  cat(">>>>>>>>>>>>>>>> 20% finished >>>>>>>>>>>>>>>>>>", "\n")
  M_0 <- prcomp(Dat[,-1])
  Score_1 <- M_0$x[,1]
  Score_2 <- M_0$x[,2]
  dev.new()
  plot(Score_1 ~ Score_2, pch=19, col=as.numeric(Dat[,1]+1))
  
  cat("Implement LDA and QDA", "\n")
  cat(">>>>>>>>>>>>>>>> 40% finished >>>>>>>>>>>>>>>>>>", "\n")
  
  M_1 <- lda(Target ~ ., data=as.data.frame(Dat), CV=TRUE)
  (table(M_1$class, Dat[,1]))
  (sum(diag(table(M_1$class, Dat[,1])))/sum(table(M_1$class, Dat[,1])))
  # M_2 <- qda(V1 ~ ., data=Dat, CV=TRUE)
  # (table(M_2$class, Dat[,1]))
  # (sum(diag(table(M_1$class, Dat[,1])))/sum(table(M_1$class, Dat[,1])))
  # 
  # # M_1_train <- lda(Target ~., data=as.data.frame(Train))
  # # pred      <- predict(M_1_train, as.data.frame(Test[,-1]))
  # # (Tab <- table(pred$class, Test[,1]))
  # # sum(diag(Tab))/sum(Tab)
  # # 
  # # M_2_train <- qda(Target ~., data=as.data.frame(Train))
  # # pred      <- predict(M_1_train, as.data.frame(Test[,-1]))
  # # (Tab <- table(pred$class, Test[,1]))
  # # sum(diag(Tab))/sum(Tab)
  # 
  # cat("Implement GLM LASSO", "\n")
  # cat(">>>>>>>>>>>>>>>> 60% finished >>>>>>>>>>>>>>>>>>")
  # 
  # M_3 <- cv.glmnet(as.matrix(Dat[,-1]), as.matrix(Dat[,1]), 
  #                  family = "binomial", type="class", nfolds=10)
  # fit <- predict(M_3, as.matrix(Dat[,-1]), type="class", s="lambda.min")
  # dev.new()
  # plot(M_3)
  # dev.off()
  # (table(fit, Dat[,1]))
  # (sum(diag(table(fit, Dat[,1])))/sum(table(fit, Dat[,1])))
  # 
  # cat("Implement naive bayes classifier", "\n")
  # cat(">>>>>>>>>>>>>>>> 80% finished >>>>>>>>>>>>>>>>>>")
  # 
  # M_4 <- naiveBayes(as.matrix(Dat[,-1]), as.factor(Dat[,1]))
  # (table(predict(M_4, as.matrix(Dat[,-1])), as.factor(Dat[,1])))
  # 
  # cat("Analysis remains unfinished, further knowledge needed", "\n")
}
