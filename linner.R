fit <- lm(weight ~ height,data=women)
print(summary(fit))
print(women$heigh)
print(fitted(fit))
print(residuals(fit))

plot(women$height,women$weight,xlab = 'Height (in inches)',ylab = 'Weight(in Pounds)')
print(abline(fit))

