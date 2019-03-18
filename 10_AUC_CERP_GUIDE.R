LOOCV_CERP_GUIDE_results_num_part_833 <- read_csv("start_data/LOOCV_CERP_GUIDE_results_num_part_833.csv")
pred <- LOOCV_CERP_GUIDE_results_num_part_833

pred <- gsub("D", "0", pred)
pred <- gsub("I", "1", pred)
pred <- as.numeric(pred)

GDS1390_after_anova <- read_csv("start_data/GDS1390_after_anova.csv")
truth <- GDS1390_after_anova$state

truth <- gsub("D", "0", truth)
truth <- gsub("I", "1", truth)
truth <- as.numeric(truth)

roc_obj <- roc(truth, pred)
auc(roc_obj)
