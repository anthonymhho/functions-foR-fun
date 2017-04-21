#### Purpose ####
# Drops all outlier values from a numerical vector.

#### Function ####
dropOutliers = function(numericVector) {
  output = numericVector[!numericVector %in% boxplot.stats(numericVector)$out]
  output
}

#### Example ####
randomVector = c(1, 2, 1, 2, 6)

randomVector
dropOutliers(randomVector)
