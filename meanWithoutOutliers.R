#### Purpose ####
# The mean() function takes outliers into consideration. Rather than modifying or cleaning the 
# original data, this saves you time by ignoring outliers before calculating the average.

#### Function ####
meanWithoutOutliers = function(numericVector) {
  output = mean(numericVector[!numericVector %in% boxplot.stats(numericVector)$out])
  output
}

#### Example ####
randomVector = c(1, 2, 1, 2, 6)

mean(randomVector)
meanWithoutOutliers(randomVector)
