
pred <- as.factor(t(LOOCV_CERP_GUIDE_results_num_part_833))
actual <- as.factor(GDS1390_after_anova$state)

confusionMatrix(actual, pred)
