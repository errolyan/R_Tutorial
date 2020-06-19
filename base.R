# 矩阵
y <- matrix(1:20,nrow=5,ncol=4,byrow = TRUE)
print(y)

rnames <- c('R1','R2')
cnames <- c('c1','c2')
cells <- c(1,3,5,7)
newmatraix <- matrix(cells,nrow=2,ncol=2,byrow = TRUE,dimnames = list(rnames,cnames))

print(newmatraix[2,2])

# 数组
dim1 = c('a1','a2')
dim2 = c('b1','b2','b3')
dim3 = c('c1','c2','c3','c4')
z = array(1:24,c(2,3,4),dimnames = list(dim1,dim2,dim3))
print(z)


png(file = './result/test1.png')
attach(mtcars)
plot(wt,mpg)
abline(lm(mpg~wt))
title('Regression of mpg on weight')
detach(mtcars)
# Save the file.
dev.off()