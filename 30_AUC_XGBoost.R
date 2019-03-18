result_xgboost_num_rounds_1 <-
  read_csv("start_data/result_xgboost_num_rounds_1.csv")
pred <- as.numeric(t(result_xgboost_num_rounds_1))
roc_obj <- roc(truth, pred)
auc(roc_obj)
