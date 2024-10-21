# Scatterplot: MBA Percentage vs Salary
plot(mtcars$hp, mtcars$mpg, 
     xlab = "Horsepower", ylab = "Miles per Gallon",
     main = "Scatterplot of Horsepower vs MPG", 
     col = "blue", pch = 19)

# Bubble Chart: Using Horsepower (hp), Miles per Gallon (mpg), and Weight (wt) for bubble size
plot(mtcars$hp, mtcars$mpg, 
     xlab = "Horsepower", ylab = "Miles per Gallon",
     main = "Bubble Chart: Horsepower vs MPG (Bubble = Weight)",
     col = "red", pch = 19, 
     cex = mtcars$wt)  # Bubble size based on weight (wt)

# Bar Chart: Count of cars in different cylinder categories
barplot(table(mtcars$cyl), 
        xlab = "Number of Cylinders", ylab = "Count",
        main = "Bar Chart of Cylinder Counts", col = "lightgreen")
# Dot Plot: Distribution of car weights (wt)
dotchart(mtcars$wt, labels = row.names(mtcars), 
         xlab = "Weight (1000 lbs)", main = "Dot Plot of Car Weights")

# Histogram: Distribution of Miles per Gallon (mpg)
hist(mtcars$mpg, 
     col = "orange", 
     xlab = "Miles per Gallon", 
     main = "Histogram of Miles per Gallon")

# Box Plot: Distribution of Horsepower (hp) for different cylinder counts
boxplot(mtcars$hp ~ mtcars$cyl, 
        xlab = "Number of Cylinders", ylab = "Horsepower",
        main = "Box Plot of Horsepower by Cylinder", col = "purple")

# Pie Chart: Distribution of Cylinder Counts
cyl_counts <- table(mtcars$cyl)
pie(cyl_counts, 
    labels = paste(names(cyl_counts), "cyl"), 
    main = "Pie Chart of Cylinder Distribution", 
    col = c("red", "yellow", "green"))
