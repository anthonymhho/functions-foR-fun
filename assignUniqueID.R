#### Purpose ####
# Assigns a unique ID number to each row in a data frame.

#### Function ####
assignUniqueID = function(df, startingNumber) {
  x = seq(from = startingNumber, to = startingNumber + nrow(df) - 1)
  cbind(df, x)
}

#### Example ####
df = data.frame(alphabet = c(paste(letters[1:26])))

df = assignUniqueID(df, 101)
