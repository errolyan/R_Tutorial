vars = c('wt','hp','mpg')
datasets = mtcars[vars]
print(datasets)
print(summary(datasets))#最小值、最大值、四分位数和数值型变量的均值，以及因子向量和逻 辑型向量的频数统计

# 通过Hmisc包中的describe()函数计算描述性统计量
print('通过Hmisc包中的describe()函数计算描述性统计量')
library(Hmisc)
print(describe(mtcars[vars]))#若basic=TRUE(默认值)，则计算其中所有值、空值、缺失 值的数量，以及最小值、最大值、值域，还有总和。若desc=TRUE(同样也是默认值)，则计算 中位数、平均数、平均数的标准误、平均数置信度为95%的置信区间、方差、标准差以及变异系 数。

# 通过pastecs包中的stat.desc()函数计算描述性统计量
print('通过pastecs包中的stat.desc()函数计算描述性统计量')
library(pastecs)
print(stat.desc(mtcars[vars]))#计算非缺失值的数量、 平均数、标准差、中位数、截尾均值、绝对中位差、最小值、最大值、值域、偏度、峰度和平均 值的标准误
