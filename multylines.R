fit2 <- lm(weight ~ height + I(height^2),data = women)
print(summary(fit2))
plot(women$height,women$weight,xlab = 'Height (in inches)',ylab='Weight(in lbs)')
lines(women$height,fitted(fit2))