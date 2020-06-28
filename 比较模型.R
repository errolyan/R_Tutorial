fit1 <- lm(Murder ~ population + Illiteracy + Income + Frost,data = states)
fit2 <- lm(Murder ~ population + Illiteracy,data = states)
print(anova(fit2,fit1))