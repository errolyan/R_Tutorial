# Select some columns form mtcars.
input <- mtcars[,c("am","cyl","hp","wt")]
print(head(input))

input <- mtcars[,c("am","cyl","hp","wt")]

am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)

print(summary(am.data))