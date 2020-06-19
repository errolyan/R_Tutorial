print(any(grep('rjson',installed.packages())))
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "input.json")

# Print the result.
print(result)
json2dataframe = as.data.frame(result)
print(json2dataframe)