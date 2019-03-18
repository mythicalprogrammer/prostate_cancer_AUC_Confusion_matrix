pred_xgboost <- c()
for (i in 1:length(pred)) {
  if (pred[i] == 0) {
    pred_xgboost[i] <- "D"
  } else {
    pred_xgboost[i] <- "I"
  }
}

pred_clean <- as.factor(pred_xgboost)

actual <- as.factor(GDS1390_after_anova$state)

confusionMatrix(actual, pred_clean)
