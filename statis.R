x <- c(17,8,6,4.12,11,8,54,-11,18,-7)
# Find Mean.
result.mean <- mean(x)
print(result.mean)

# Find the median.
median.result <- median(x)
print(median.result)

# 众数
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

# Calculate the mode using the user function.
result <- getmode(v)
print(result)

# Create the vector with characters.
charv <- c("baidu.com","tmall.com","yiibai.com","qq.com","yiibai.com")

# Calculate the mode using the user function.
result <- getmode(charv)
print(result)
