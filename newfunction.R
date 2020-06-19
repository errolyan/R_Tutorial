#Create a function with arguments.
new.function <- function(a = 10, b = 20) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(11, 22)
