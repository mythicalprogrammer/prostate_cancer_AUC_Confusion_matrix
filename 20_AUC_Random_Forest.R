LOOCV_random_forest_results_num_part_116 <-
  read_csv("start_data/LOOCV_random_forest_results_num_part_116.csv")

pred <- LOOCV_random_forest_results_num_part_116
pred <- gsub("D", "0", pred)
pred <- gsub("I", "1", pred)
pred <- as.numeric(pred)

roc_obj <- roc(truth, pred)
auc(roc_obj)
