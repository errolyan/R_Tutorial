# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2017-01-01", "2017-09-23", "2017-11-15", "2017-05-11",
                         "2018-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.            
print(emp.data)
print(str(emp.data))
print(summary(emp.data))