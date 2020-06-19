library(sqldf)
newdf <- sqldf('select * from mtcars where carb=1 order by mpg',row.names = TRUE)
print(newdf)

# 筛选
newdf2 = sqldf('select avg(mpg) as avg_mpg,avg(disp) as avg_disp,gear from mtcars where cyl in (4,5) group by gear')
print(newdf2)

