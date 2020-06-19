data <- read.csv('input.csv')
print(data)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
print(max(data$score))
person = subset(data,score == min(score))
print(person)
write.csv(person,"output.csv")


