#### Purpose ####
# Sometimes the Excel spreadsheets I load into R has 'ghost' data. For example, the spreadsheet
# has 10 rows of data, but for whatever reason, read.csv() will create an object with
# significantly more rows, causing issues with nrow(). This function is one way to remove them.

#### Function ####
removeEmptyRows = function(df) {
  print("Old Dimensions:")
  print(dim(df))
  df = df[rowSums(is.na(df)) != ncol(df), ]
  print("New Dimenions:")
  print(dim(df))
}

#### Example ####
df = data.frame(a = seq(11,20),
                b = seq(21,30),
                c = NA)
df[7:10, ] = NA

removeEmptyRows(df)
