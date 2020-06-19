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