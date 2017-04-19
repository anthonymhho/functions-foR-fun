#### Function ####

onlyOutliers = function(numericVector) {
  output = numericVector[numericVector %in% boxplot.stats(numericVector)$out]
  output
}

#### Example ####

randomVector = c(1, 2, 1, 2, 6)

randomVector
onlyOutliers(randomVector)
