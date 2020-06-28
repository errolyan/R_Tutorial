# 卡方对立性检验
library(vcd)
mytable <- xtabs(~Treatment+Improved,data = Arthritis)
print(chisq.test(mytable)) # 质量情况与改善情况独立

mytable2 <- xtabs(~Improved+Sex,data = Arthritis)
print(chisq.test(mytable2)) # 性别与改善情况独立

# Fisher 精确检验
print(fisher.test(mytable)) # 质量情况与改善情况独立

# Cochran-Mantel—Haenszel检验
mytable <- xtabs(~Treatment+Improved+Sex,data = Arthritis)
print(mantelhaen.test(mytable))

# 相关性分析
print(assocstats(mytable))

states = state.x77[,1:6]
print(cov(states))
print(cor(states,method="spearman")) # 相关性