[TOC]
# R
1. 命令行运行：
```shell
Rscript test.R
```
2. 对象名称中的句点(.)没有特殊意义。但美元符号($)却有着和其他语言中的句点 类似的含义，即指定一个对象中的某些部分。例如，A$x是指数据框A中的变量x。
3. R不提供多行注释或块注释功能。你必须以#作为多行注释每行的开始。出于调试目的， 你也可以把想让解释器忽略的代码放到语句if(FALSE){.}中。将FALSE改为TRUE 即允许这块代码执行。
4. 将一个值赋给某个向量、矩阵、数组或列表中一个不存在的元素时，R将自动扩展这 个数据结构以容纳新值。
5. ![QE2bekZ3dyzaROH](https://i.loli.net/2020/06/18/QE2bekZ3dyzaROH.png)
6. R中没有标量，标量以单元素向量的形式出现。
7. R中下标是从1开始
8. 变量是无法是声明的，在首次赋值的时候生成。
## install
- [R包地址](https://mirrors.tuna.tsinghua.edu.cn/CRAN/)
- [IDE地址](https://rstudio.com/products/rstudio/)
傻瓜式安装
## base
- 变量名：有效的变量名称应该是由字母，数字和点或下划线字符组成。
- R是动态语言，变量可以赋值给它不同的数据类型。
- 查找变量名：ls(变量名)或ls()
    - 隐藏变量也查看：print(ls(all.names = TRUE));
- 删除变量：rm(var_name)
```R
5+5
2*2
5-7
(5+5)/2
2^2
28%%6
```
- 赋值：my_var<-42
- 帮助 :?C 或者 help(C)
- 命令行进入R:$ R
- 退出命令行 $ q()
- 打开帮助文档首页：help.start()
- help('foo')
## install packages
- install.packages("dplyr") # 安装包
```r
> getwd() # 获取当前路径
> setwd("~/") # 设置工作路径
> .libPaths() # 获取R包的位置
> library() # 所有软件包的列表
> search()# 当前环境加载的包
```
## 数据类型
```r
数值型 numerics (1, 2.5)
逻辑判断 logical (TRUE or FALSE)
字符型 characters
因子 factors
判断数据类型 class(变量名）
```
- ![yvPJYHqzfmC7rge](https://i.loli.net/2020/06/16/yvPJYHqzfmC7rge.png)
## 数据结构
- vector 向量
- matrix 矩阵
- dataframe 数据集
- list 列表
### vector 向量
- 向量是用于存储数值型、字符型或逻辑型数据的一维数组
```r
a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("apple", "pear", "orange")
c <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)
```
- a是数值型向量，b是字符型向量，而c是逻辑型向量。 注意，单个向量中的数据必须拥有相同的类型或模式（数值型、字符型或逻辑型）
- a[c(2)]:查找元素
- 切片：b[c(1,3)]
- 向量排序：sort(var_name)
### 矩阵matrix
矩阵是一个二维数组，只有每个元素是相同的数值型、字符型或逻辑型。可通过matrix()创建矩阵
```R
myymatrix <- matrix(vector, nrow=number_of_rows, ncol=number_of_columns,
                    byrow=logical_value)
> myMatrix <- matrix(1:15, nrow=3, ncol=5) 
> y <- matrix(1:18, nrow=2)
```
- 矩阵运算
```r
# Elements are arranged sequentially by row.
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)

# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P[1,3]) # 按行列取值
print(M+N)
print(M*N)
print(M/N)
```
### 数组
- 数组(array)与矩阵类似，但是维度可以大于2。数组可通过array函数创建
    -  myarray <- array(vector,dimensions,dimnmaes)
### dataframe数据框
- 可以包含不同的数据类型，什么数据都可以装。
- 每一列的数据类型必须一致，列与列之间的数据类型可以不一样。
```r
students <- c("A", "B", "C", "D")
math_score<-c(100, 80, 70, 95)
english_score<-c(96, 86, 77, 99)
students_scores<-data.frame(students, math_score,english_score)
students_scores[,2]
students_scores[2,2]
```
- 示例
```r
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2017-01-01", "2017-09-23", "2017-11-15", "2017-05-11",
                         "2018-03-27")),
  stringsAsFactors = FALSE)
# Print the data frame.            
print(emp.data)
print(str(emp.data))
print(summary(emp.data))
```
### factor因子
- factor因子又叫分类变量，有两种类型名义型和有序型。因子是用于对数据进行分类并将其存储为级别的数据对象。它们可以存储字符串和整数。 它们在具有有限数量的唯一值的列中很有用。 像“男”，“女”，“真”，“假”等。它们在统计建模的数据分析中很有用。

```r
excellence<- c("excellent", "bad", "good", "okay", "bad")
excellence<- factor(excellence)

excellence <- factor(excellence, order=TRUE,levels=c("bad", "okay","good","excellent"))
excellence
```
- 因子转换
```r
# Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))

```
### list列表
- 列表（list）是R的数据类型中最为复杂的一种。列表就是一些对象的有序集合。列表允许你整合若干对象到单个对象名下。
```r
a <- "My First List"
b <- c(25, 26, 18, 39)
c <- matrix(1:10, nrow=5)
d <- c("one", "two", "three")
mylist <- list(title=a ,b,c,d)
```
- 示例
```R
# 列表
list_data = list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1);
print(list_data[2])
list_2 = list(1,2,3)
list_3 = c(list_2,list_data)
print(list_3)
```
## 总结
- 数据框将是你用来存储数据集的主要数据结构。
- ![R数据结构](https://i.loli.net/2020/06/18/qjcYMPRw2H3a9n4.png)
    - 注意，单个向量中的数据必须拥有相同的类型或模式(数值型、字符型或逻辑型)
### 常用函数
- 数量：length(变量名)
- 维度：dim(变量名)
- str(object) ：显示某个对象的结构
- class(object_name)
- names(dataframe_name):显示表头的名字
- c(object1,object2,...):将对象合并入一个向量
- cbind(object1,object2,...):按列合并
- rbind(object1,object2,...):按行合并
- head(object):列出某一个对象的开始部分
- 
- mean(C):求均值
- median(c) 中位数
- var(C):方差
- range(c):极差
- summary(c):求和
#### 基础运算
```R
a <- c(2,3,4,5);
b <- c(1,3,5,7);
print(a+b);
print(a-b);
print(a*b);
print(a/b);
print(a%%b);
print(a^b);
```
#### 关系运算符
```r
print(a>b);
print(a==b);
print(a>=b);
print(a!=b);
```
#### 逻辑运算符
```r
print(a&b)
print(a|b)
```
#### 赋值方法
```r
v1 <- c(3,1,TRUE,2+3i);
v2 <<- c(3,1,TRUE,2+3i);
v3 = c(3,1,TRUE,2+3i);
print(v1);
print(v2);
print(v3);

c(3,1,TRUE,2+3i) -> v1;
c(3,1,TRUE,2+3i) ->> v2;
print(v1);
print(v2);

```
## 函数
- 一个函数组合在一起的执行特定任务的一组语句
```r
function_name <- function(arg_1, arg_2, ...) {
   Function body 
}
```
## 字符串操作
- 字符串操作 paste()
```r
a = 'Hello'
b <- 'How'
c <- "are you? "

print(paste(a,b,c))
print(paste(a,b,c, sep = "-"))
print(paste(a,b,c, sep = " ", collapse = " "))
```
# 读写文件
- getwd() # 获取当前路径
- setwd() # 设置当前路径
- 读写csv
```r
data <- read.csv('input.csv')
print(data)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
print(max(data$score))
person = subset(data,score == min(score))
print(person)
write.csv(person,"output.csv")
```
- 读写excel
    - install.packages("xlsx")
```r
any(grepl('xlsx',installed.packages()));
library('xlsx')
data = read.xlsx('input.xlsx',sheetIndex = 1)
print(data)
write.xlsx(data,'test.xlsx')
```
## json
- install.packages('rjson')
```json
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "input.json")

# Print the result.
print(result)

json2dataframe = as.data.frame(result)
print(json2dataframe)
```
# 画图
## 饼图
语法
```r
pie(x, labels, radius, main, col, clockwise)
x - 是包含饼图中使用的数值的向量。
labels - 用于描述切片的标签。
radius - 用来表示饼图圆的半径(-1和+1之间的值)。
main - 用来表示图表的标题。
col - 表示调色板。
clockwise - 是一个逻辑值，指示片是顺时针还是逆时针绘制。
```
- 实例
```R
# Create data for the graph.
x <- c(11, 30, 39, 20)
labels <- c("70后", "80后", "90后", "00后")

piepercent<- paste(round(100*x/sum(x), 2), "%")
# Give the chart file a name.
png(file = "birth_of_age1.jpg")

# Plot the chart.
pie(x, labels = piepercent, main = "出生年龄段 - 饼状图",col = rainbow(length(x)))
legend("topright", c("70后","80后","90后","00后"), cex = 0.8,
       fill = rainbow(length(x)))

# Save the file.
dev.off()
```
- ![I1TSW5oEfUH7scK](https://i.loli.net/2020/06/16/I1TSW5oEfUH7scK.png)
## 条形图
- 条形图语法
```r
barplot(H,xlab,ylab,main,names.arg,col)
H - 是包含条形图中使用的数值的向量或矩阵。
xlab - 是x轴的标签。
ylab - 是y轴的标签。
main - 是条形图的标题。
names.arg - 是在每个栏下显示的名称向量。
col - 用于给图中的图条给出颜色。
```
- 实例代码
```r
colors <- c("green","orange","brown")
months <- c("一月","二月","三月","四月","五月")
regions <- c("东部地区","西部地区","南部地区")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)

# Give the chart file a name.
png(file = "barchart_stacked.png")

# Create the bar chart.
barplot(Values,main = "总收入",names.arg = months,xlab = "月份",ylab = "收入",
        col = colors)

# Add the legend to the chart.
legend("topleft", regions, cex = 1.3, fill = colors)

# Save the file.
dev.off()
```
- ![ITw6PgCEOc5XdNl](https://i.loli.net/2020/06/16/ITw6PgCEOc5XdNl.png)
### 堆砌条形图和分组条形图
- 若beside=FALSE(默认值)，则矩阵中的每一列都将生成图中的一个条形，各列中的值将给出 堆砌的“子条”的高度。若beside=TRUE，则矩阵中的每一列都表示一个分组，各列中的值将 并列而不是堆砌。
```r
library(vcd)
counts <- table(Arthritis$Improved,Arthritis$Treatment)
print(counts)
png(file = "./result/barchart_stacked1.png")
barplot(counts,main='Stacked Bar Plot',xlab='Treatment',ylab='Frequency',col=c('red','yellow','green'),legend=rownames(counts))
dev.off()

png(file = "./result/barchart_stacked2.png")
barplot(counts,main='Grouped Bar Plot',xlab='Treatment',ylab='Frequency',col=c('red','yellow','green'),legend=rownames(counts),beside=TRUE) # 分组
dev.off()
```
## 散点图
```r
plot(x, y, main, xlab, ylab, xlim, ylim, axes)
x - 是数据集，其值是水平坐标。
y - 是数据集，其值是垂直坐标。
main - 是图表的标题。
xlab - 是水平轴(y轴)上的标签。
ylab - 是垂直轴(y轴)上的标签。
xlim - 是用于绘制的x的值的极限。
ylim - 是用于绘制的y值的极限。
axes - 指示是否应在绘图上绘制两个轴。
```
- 散点图示例
```
# Get the input values.
input <- mtcars[,c('wt','mpg')]

# Give the chart file a name.
png(file = "scatterplot.png")

# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = input$wt,y = input$mpg,
     xlab = "重量",
     ylab = "里程",
     xlim = c(2.5,5),
     ylim = c(15,30),         
     main = "重量 VS 里程"
)

# Save the file.
dev.off()
```
- ![YDPAyzksjOqM5mH](https://i.loli.net/2020/06/16/YDPAyzksjOqM5mH.jpg)
- 绘制散点图
```r
png(file = './result/test1.png')
attach(mtcars)
plot(wt,mpg)
abline(lm(mpg~wt))
title('Regression of mpg on weight')
detach(mtcars)
# Save the file.
dev.off()
```
#### 修改参数
- par(lty=2,pch=17) 或者 par(lty=2);par(pch=17)
- ![WgwKzLR4tlG8QA1](https://i.loli.net/2020/06/18/WgwKzLR4tlG8QA1.png)
    - ![xznpcQ2h5tY6IWA](https://i.loli.net/2020/06/18/xznpcQ2h5tY6IWA.png)
- plot(dose,drugA,type='b',lty=3,lwd=3,pch=15,cex=2)
    - ![skrAzhBT2Q1DEKb](https://i.loli.net/2020/06/18/skrAzhBT2Q1DEKb.png)
##### 添加文本、坐标轴和图例
- ![nqt6k3TWRa4Qyrp](https://i.loli.net/2020/06/18/nqt6k3TWRa4Qyrp.png)

# 统计
- ls():列出当前工作空间的对象
- rm():删除一个或者多个对象
- history(#):显示最近使用过的#个命令
- options():显示可用选项的说明
- options(digits=3):设置有一个选项
### 缺失值处理
1.判断是否有缺失值:is.na(y)
2.sum(x,na.rm=TRUE)
#### 重编某一些值为缺失值
```r
leadership$age[leadership$age ==99] <- NA # 任何等于99的年龄都被修改为NA
```
## 日期处理
- ![2rRlmTVP1uhgtqS](https://i.loli.net/2020/06/18/2rRlmTVP1uhgtqS.png)
```r
mydate <- as.Date(c('2007-06-22','2004-02-13'))
print(mydate)
print(class(mydate))

strDdte = c('01/05/1987','08/16/1975')
dates = as.Date(strDdte,'%m/%d/%Y')
print(dates)


strDate = as.character(dates)
print(strDate)
print(class(strDate))
```
## 类型转换
```r
# 类型转换
a <- c(1,2,3)
b <- as.numeric(a)
c = as.character(a)
d = as.vector(a)
e = as.matrix(a)
f = as.matrix(a)
g = as.data.frame(a)
h = as.factor(a)
i = as.logical(a)
print(is.numeric(a))
print(is.character(c))
print(is.vector(d))
print(is.matrix(e))
print(is.data.frame(g))
print(is.logical(i))
```
## 数据集合并
### 添加列
- 要横向合并两个数据框，需要使用merge()函数，通过两个共有的列。
```r
total <- merge(dataframeA,dataframeB,by='ID')
```
### 添加行
要纵向添加两个数据框，使用rbind()函数,前提两个数据框必须有相同的变量。
```r
total <- rbind(dataframeA,dataframeB)
```
### 转置
- t() 对矩阵和数据框转置
```r
a = c(1,2,3)
d = matrix(a)
print(d)
e = t(d)
print(e)
```
## 数据集取子集
```r
newdata <- subset(leadership,age >= 35 | age < 24,select=c(q1,q2,q3,q4))
```
### 随机抽样
- sample()函数可以（有放回、无放回）抽取大小为m的样本
## SQl语句操作数据框
- 安装包：install.packages("sqldf")
```r
library(sqldf)
newdf <- sqldf('select * from mtcars where carb=1 order by mpg',row.names = TRUE)
print(newdf)
```
## reshape包
- reshape包是一套重构和整合数据集的绝妙的万能工具。
- install.packages('reshape')
```r
library(reshape)
md <- melt(mydata,id=(c('id','time')))

```
# 数字和字符处理函数
## 数学函数
- abs(x):绝对值；abs(-4)返回值为4
- sqrt(x):平方根；sqrt(25)返回值为5
- ceiling(x):不小于x的最小整数 ；ceiling(3.475)返回值为4
- floor(x):不大于x的最大整数；floor(3.475)返回值为3
- trunc(x):向 0 的方向截取的x中的整数部分; trunc(5.99)返回值为5
- round(x,digits = n) :将x舍入为指定的小数 ；round(3.475, digits=2)返回值为3.48
- signif(x, digits=n):将x舍入为指定的有效数字位数 signif(3.475, digits=2)返回值为3.5
- cos(x),sin(x),tan(x):余弦、正弦和正切 cos(2)返回值为–0.416
- acos(x) 、asin(x) 、atan(x):反余弦、反正弦和反正切 acos(-0.416)返回值为2
- cosh(x) 、sinh(x) 、tanh(x):双曲余弦、双曲正弦和双曲正切 sinh(2)返回值为3.627
- acosh(x) 、asinh(x) 、atanh(x):反双曲余弦、反双曲正弦和反双曲正切 asinh(3.627)返回值为2
- log(x,base=n):对x取以n为底的对数
- log(x):为自然对数
- log10(x) 以10为底的对数
- exp(x):指数函数
```r
a = 3.1415
print(floor(a))
print(ceiling(a))
print(round(a,digits = 2))
print(signif(a,digits = 2))
print(cos(a))
print(sin(a))
print(tan(a))
print(log(a,base = 2))
print(log10(x))
print(exp(e))
```
# 统计函数
- ![yLnxOaGmKPAEhIb](https://i.loli.net/2020/06/18/yLnxOaGmKPAEhIb.png)
```r
# 统计函数
print(mean(c(1,2,3,4)))
print(median(c(1,2,3,4)))
print(sd(c(1,2,3,4)))
print(var(c(1,2,3,4)))
print(mad(c(1,2,3,4)))
print(range(c(1,2,3,4,5)))
```
## 平均值
- 语法
```r
mean(x, trim = 0, na.rm = FALSE, ...)
x - 是输入向量。
trim - 用于从排序的向量的两端删除一些观测值。
na.rm - 用于从输入向量中删除缺少的值。
```
- 示例
```r
x <- c(17,8,6,4.12,11,8,54,-11,18,-7)
# Find Mean.
result.mean <- mean(x)
print(result.mean)
```
## 中位数
- 语法
```r
median(x,na.rm=FALSE)
x - 是输入向量
na.rm - 是用于输入向量中删除缺少的值。
```
- 示例
```r
# Find the median.
median.result <- median(x)
print(median.result)
```
## 众数
- 众数是指给定的一组数据集合中出现次数最多的值。不同于平均值和中位数，众数可以同时具有数字和字符数据。
```r
# 众数
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

# Calculate the mode using the user function.
result <- getmode(v)
print(result)

# Create the vector with characters.
charv <- c("baidu.com","tmall.com","yiibai.com","qq.com","yiibai.com")

# Calculate the mode using the user function.
result <- getmode(charv)
print(result)
```
## 概率函数
- d = 密度函数(density)
- p = 分布函数(distribution function)
- q = 分位数函数(quantile function)
- r = 生成随机数(随机偏差)
- ![ra3OZHsTLJvRUo1](https://i.loli.net/2020/06/18/ra3OZHsTLJvRUo1.png)
# 线性回归
## 一元
```r
y = ax+b
y 响应变量
x 预测变量
a与b是系统参数
```
- 示例：身高与体重的关系
```r
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)

# Give the chart file a name.
png(file = "linearregression.png")

# Plot the chart.
plot(y,x,col = "blue",main = "身高和体重回归",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "体重(Kg)",ylab = "身高(cm)")

# Save the file.
dev.off()


print(summary(relation))

# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)

```
## 多元回归
- lm() 函数在多元回归的基本用法
```r
lm(y ~ x1+x2+x3...,data)
ormula - 即：y ~ x1+x2+x3...是呈现响应变量和预测变量之间关系的符号。
data - 是应用公式的向量。
```
- 示例
```r
# Create the relationship model.
model <- lm(mpg~disp+hp+wt, data = input)

# Show the model.
print(model)

# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")

a <- coef(model)[1]
print(a)

Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]
```
# 逻辑回归
- 逻辑回归是一种回归模型，其中响应变量具有分类值，True/False 或0/1.
- 语法
```r
glm(formula,data,family)

formula - 是呈现变量之间关系的符号。
data - 是给出这些变量值的数据集。
family - 是R对象来指定模型的概述，对于逻辑回归，它的值是二项式。
```
- 示例
```r
# Select some columns form mtcars.
input <- mtcars[,c("am","cyl","hp","wt")]
print(head(input))

input <- mtcars[,c("am","cyl","hp","wt")]

am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)

print(summary(am.data))

```
# 正态分布
- 平均数是最高点，左边一半==右边一半
```r
# Create a sequence of numbers between -10 and 10 incrementing by 0.1.
x <- seq(-10, 10, by = .1)

# Choose the mean as 2.5 and standard deviation as 0.5.
y <- dnorm(x, mean = 2.5, sd = 0.5)

# Give the chart file a name.
png(file = "dnorm.png")

plot(x,y)

# Save the file.
dev.off()
```
# 决策树
- 决策树是以树的形式表示选择一起结果的图形。图中的节点表示事件或选择，并且图形的边缘表示决策规则或条件。
- install.packages("party")
    - ctree(formula, data)
        - formula - 是描述预测变量和响应变量的公式。
        - data - 是使用的数据集的名称
- 决策树 实例
```r
library(party)

# Create the input data frame.
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name.
png(file = "decision_tree.png")

# Create the tree.
  output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)

# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()
```
# 随机森林
- 安装包
    - install.packages("randomForest")
- R创建随机森林语法
```r
randomForest(formula, data)
formula - 是描述预测变量和响应变量的公式。
data - 是使用的数据集的名称。
```
- 实例代码
```r
library("party")
library("randomForest")

# Create the forest.
output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score, 
           data = readingSkills)

# View the forest results.
print(output.forest) 

# Importance of each predictor.
print(importance(output.forest,type = 2))
```
# 生存分析
- 生存分析以及预测特定事件的发生时间。survival用于进行生存分析。该包中含有Surv()函数，它将输入数据作为R公式，并在所选变量中创建一个生存对象进行分析。然后使用survfit()函数来创建分析图。
- install.packages("survival")
```r
Surv(time,event)
survfit(formula)
time - 是直到事件发生的后续时间。
event - 表示预期事件发生的状态。
formula - 是预测变量之间的关系。
```
- 实例
```r
# Load the library.
library("survival")

# Create the survival object. 
survfit(Surv(pbc$time,pbc$status == 2)~1)

# Give the chart file a name.
png(file = "survival.png")

# Plot the graph. 
plot(survfit(Surv(pbc$time,pbc$status == 2)~1))

# Save the file.
dev.off()
```
# 卡方检验
- 卡方检验是一种统计方法，用于确定两个分类变量之间是否具有显著的相关性。
- 语法
    - 语法执行卡方检验的函数是：chisq.test()
- chisq.test(data)
```r
# Load the library.
library("MASS")

# Create a data frame from the main data set.
car.data <- data.frame(Cars93$AirBags, Cars93$Type)

# Create a table with the needed variables.
car.data = table(Cars93$AirBags, Cars93$Type) 
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))
```

# 重复和循环
- 1.for结构
```r
for (i in 1:10) print('hello')
```
- 2.while结构
```r
i <- 10
while (i>0) {print('hello'};i <- i-1}
```
## 条件执行
- 1.if else
```r
if (cond) statement1 else statement2
```
- switch 结构
```r
feeling <- c('sad','afraid')
for (i in feeling)
    print(
        switch(i,happy = 'I am glad you  are happy',
        afraid = 'there is nothing to fear',
        sad = 'cheer up',
        angry = 'calm down now'
        )
    )
```
# 描述统计分析
- 关注连续变量的中心趋势、变化性和分布形状
```r
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

```
- 二维联表
```r
library(gmodels)
print(CrossTable(Arthritis$Treatment,Arthritis$Improved))
```
## 独立性检验
pag 142