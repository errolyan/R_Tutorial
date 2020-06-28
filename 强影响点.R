autoff <- 4/(nrow(states)-length(fit$coefficients)-2)
plot(fit,which=4,cook.levels=cutoff)
abline(h=cutoff,lty=2,col='red')


