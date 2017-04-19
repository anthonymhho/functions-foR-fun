#### Function ####

meanWithoutOutliers = function(numericVector) {
  noMoreOutliers = numericVector[!numericVector %in% boxplot.stats(numericVector)$out]
  mean(noMoreOutliers, na.rm = TRUE)
}

#### Example ####

randomVector = c(1, 2, 1, 2, 1, 2, 1, 6000)

mean(randomVector)

meanWithoutOutliers(randomVector)
