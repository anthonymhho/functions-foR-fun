#### Purpose ####
# Removes any subsequent rows with identical values on specific column.

#### Function ####
removeDuplicates = function(df, columnNameWithQuotes) {
  output = df[! duplicated(df[ , columnNameWithQuotes]), ]
  output
}

#### Example ####
nameVector = c(paste(letters[1:5]))
firstVector = c(1, 2, 3, 4, 5)
secondVector = c(0, 0, 0, 0, 5)

df = data.frame(rbind(firstVector, secondVector))
colnames(df) = nameVector

removeDuplicates(df, "e")
