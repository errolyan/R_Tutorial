a <- "Hello"
b <- 'How'
c <- "are you? "
print(paste(a,b,c))
print(paste(a,b,c, sep = "-"))
print(paste(a,b,c, sep = " ", collapse = " "))

# 列表
list_data = list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1);
print(list_data[2])
list_2 = list(1,2,3)
list_3 = c(list_2,list_data)
print(list_3)

# 矩阵
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
