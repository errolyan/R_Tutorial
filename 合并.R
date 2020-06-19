library(MASS)

library(reshape2)
merged.Pima <- merge(x = Pima.te, y = Pima.tr,
                     by.x = c("bp", "bmi"),
                     by.y = c("bp", "bmi")
)
print(merged.Pima)
nrow(merged.Pima)


print('++++++++++++')
print(ships)
# 重构数据
recasted.ship <- cast(molten.ships, type+year~variable,sum)
print(recasted.ship)
# 数据拆分
molten.ships <- melt(ships, id = c("type","year"))
print(molten.ships)

molten.ships <-  melt(ships,id=c('type','year'))
print(molten.ships)