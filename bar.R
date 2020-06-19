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
