attach(mtcars)
plot(wt,mpg,main='basic scatter plot of mpg vs. weight',
     xlab='car weight',
     ylab='Miles Per',pch=19)
abline(lm(mpg~wt),col='red',lwd=2,lty=1)

lines(lowess(wt,mpg),col='blue',lwd=2,lty=2)