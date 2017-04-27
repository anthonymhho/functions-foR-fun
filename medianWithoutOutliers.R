#### Purpose ####
# The median() function takes outliers into consideration. Rather than modifying or cleaning the 
# original data, this saves you time by ignoring outliers before calculating the median.

#### Function ####
  output = median(numericVector[!numericVector %in% boxplot.stats(numericVector)$out])
  output
}

#### Example ####
randomVector = c(1, 2, 1, 2, 6)

median(randomVector)
medianWithoutOutliers(randomVector)
