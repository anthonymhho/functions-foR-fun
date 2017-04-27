#### Purpose ####
# After making changes to a complex loop or function, I tend to test the results on a simple
# data frame with similar properties. Here's a ready-to-go 6x10 data frame which you can use.
# I've intentionally replaced one value per column as NA, so you can easily determine how your
# function or loop reacts when it encounters an NA value.

#### Function ####
generateDF = function() {
  df = as.data.frame(matrix(0, ncol = 10, nrow = 10))
  colnames(df) = c("someNumes", "someInts", "someChars", "someLogs", "someDates")
  df$someNumes = round(runif(10, min = -10, max = 10), digits = 2)
  df$someInts = as.integer(runif(10, min = -10, max = 10))
  df$someChars = LETTERS[1:10]
  df$someLogs = sample(c(TRUE,FALSE), size = 10, replace = TRUE)
  df$someDates = sample(seq(as.Date("2000/01/01"), Sys.Date(), by="day"), size = 10)
  
  for (i in 1:5) {
    randomRow = sample(seq(1:10), 1)
    df[randomRow, i] = NA
  }
  
  print(df)
}

#### Example ####
df1 = generateDF()
df2 = generateDF()
df3 = generateDF()