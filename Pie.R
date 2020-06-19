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