library(vcd)
counts <- table(Arthritis$Improved,Arthritis$Treatment)
print(counts)

png(file = "./result/barchart_stacked1.png")
barplot(counts,main='Stacked Bar Plot',xlab='Treatment',ylab='Frequency',col=c('red','yellow','green'),legend=rownames(counts))
dev.off()

png(file = "./result/barchart_stacked2.png")
barplot(counts,main='Grouped Bar Plot',xlab='Treatment',ylab='Frequency',col=c('red','yellow','green'),legend=rownames(counts),beside=TRUE) # 分组
dev.off()