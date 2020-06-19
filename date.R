mydate <- as.Date(c('2007-06-22','2004-02-13'))
print(mydate)
print(class(mydate))

strDdte = c('01/05/1987','08/16/1975')
dates = as.Date(strDdte,'%m/%d/%Y')
print(dates)

strDate = as.character(dates)
print(strDate)
print(class(strDate))

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

d = matrix(a)
print(d)
e = t(d)
print(e)

