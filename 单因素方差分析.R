library(multcomp)
attach(cholesterol)
print(table(trt))

#各组均值
print(aggregate(responese,by=list(trt),FUN=mean))

# 各组标准差
print(aggregate(responese,by=list(trt),FUN=sd))

# 组间差异
fit <- aov(response ~ trt)
print(summary(fit))

library(gplots)
plotmeans(response ~ trt,xlab='Treatment',ylab='Response',main='mean plot')
detach(cholesterol)