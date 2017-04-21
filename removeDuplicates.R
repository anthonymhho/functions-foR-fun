#### Function ####

removeDuplicates = function(df, columnNameWithQuotes) {
  output = df[! duplicated(df[ , columnNameWithQuotes]), ]
  output
}

#### Example ####

nameVector = c(paste(letters[1:5]))
randomVector = c(1, 2, 3, 4, 5)
anotherVector = c(0, 0, 0, 0, 5)

df = data.frame(rbind(randomVector, anotherVector))
colnames(df) = nameVector

removeDuplicates(df, "e")
