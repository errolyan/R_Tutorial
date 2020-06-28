fit <- lm(mpg ~ hp + wt + hp:wt,data=mtcars)

print(summary(fit))

# 标准方法
fit <- lm(weight ~height,data=women)
par(mfrow=c(2,2))
plot(fit)

hat.plot <- function(fit){  
                            p <- length(coefficients(fit))
                            n <- length(fitted(fit))
                            plot( hatvalues(fit), main='Index Plot of Hat Values')
                            abline(h=c(2,3)*p/n, col='red', lty=2)
                            identify(1:n, hatvalues(fit), names(hatvalues(fit)))
                        }
hat.plot(fit)