
pred <- as.factor(t(LOOCV_random_forest_results_num_part_116))
actual <- as.factor(GDS1390_after_anova$state)

confusionMatrix(actual, pred)
