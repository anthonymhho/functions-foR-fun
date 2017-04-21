#### Purpose ####
# Checks a data frame for duplicates based on values of a specific column.
# It will then remove subsequent rows with identical values.

#### Function ####
removeDuplicates = function(df, columnNameWithQuotes) {
  output = df[! duplicated(df[ , columnNameWithQuotes]), ]
  output
}

#### Example ####
nameVector = c(paste(letters[1:5]))
firstVector = c(1, 2, 3, 4, 5)
secondVector = c(0, 0, 0, 0, 5)

df = data.frame(rbind(randomVector, anotherVector))
colnames(df) = nameVector

removeDuplicates(df, "e")
