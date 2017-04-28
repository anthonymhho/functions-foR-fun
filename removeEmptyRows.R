#### Purpose ####
# Sometimes the Excel spreadsheets I load into R has 'ghost' data. For example, the spreadsheet
# has 10 rows of data, but for whatever reason, read.csv() will create an object with

#### Function ####
removeEmptyRows = function(df) {

