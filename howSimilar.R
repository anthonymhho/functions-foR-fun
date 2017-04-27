#### Purpose ####
# This function compares data frames and calculates their similarity in form of a percentage.
# For example, 0% means that there is NOTHING identical. I created this function because I once
# thought I successfully scraped two sets of data: (1) Worldwide and (2) Europe. I did a quick
# check: worldwide.df == europe.df, and it returned FALSE. I wrongly assumed this meant my 
# scrape was successful. In fact, I scraped the worldwide data twice (waste of time), and 
# because of certain values I assigned in the loop, the two data frames were not identical. 
# I would've expected the data to be only 15 to 35% identical. Hmmm... wouldn't it be nice
# to have a function to calculate this to verify?

#### Function ####
howSimilar = function(x, y) {
  if (nrow(x) != nrow(y) | ncol(x) != ncol(y)) {
    print("Error: The two data frames you are comparing must have the same dimensions.")
  }
  else {
    howManyAreIdentical = sum(x == y)
    totalValues = nrow(x) * ncol(x)
    percentSimilar = howManyAreIdentical / totalValues * 100
    print(paste(percentSimilar, "% similar.", sep = ""))
  }
}

#### Example ####
df1 = data.frame(a = seq(11,20),
                 b = seq(21,30))
df2 = data.frame(a = seq(11,20),
                 b = sample(21:30, 10))

# We can expect the similarity to be 50% or greater. 
howSimilar(df1, df2)


